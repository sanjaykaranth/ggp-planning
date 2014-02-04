:- module(pltopddl, [
        expand_rule/2,                
	lispify/2,
        unfold_exp/2,
        exp_to_sexp/2
       ], eclipse_language).


:-use_module("utils.pl").
:-use_module("domain.pl").
:-use_module("types.pl").

:-lib(pretty_print).
:-lib(lists).

%utils that cant be anywhere else

map(FunctionName,[H|T],[NH|NT]):-
           Function=..[FunctionName,H,NH],
           call(Function),
           map(FunctionName,T,NT).
map(_,[],[]).

filter(FunctionName,[H|T],Filtered):-
        Function=..[FunctionName,H],
        (call(Function) -> Filtered=[H|NT] ; Filtered=NT),
        filter(FunctionName,T,NT).

filter(_,[],[]).

%.


%All rules with F are found, their bodies extended with existential
% quantifiers and binding constraints where necessary.

%Expansion is bound to withconstraints(<Binding Constraints>, <
%Quantifier>, <Tail>)

expand_rule(F,Expansion):-
        copy_term(F,FNew),
        findall(stuff(FNew,Bindings,Quantifier,Tail),
                (
                    
                    term_variables(F, Vars),
                    term_variables(FNew, FNewVars),
                    
                    opt_ggp_axiom(F,
                                  BoundTail),
                    my_unify(FNew,F,
                             Equalities),
                    
                    my_list_to_and(Equalities,Bindings),
                    
                    unfold_exp(BoundTail,ExpandedTail),
%                    ExpandedTail=BoundTail,
                    quantifier(ExpandedTail,Vars, Quantifier),
                    
                    make_substitution(Vars,FNewVars,Sub),
                    %writeln(Sub),writeln(BoundTail),
                    apply_substitution(ExpandedTail,Sub,Tail)),
                Stuff),
        (foreach(stuff(Fluent,Bindings,Quantifier,Tail), Stuff), param(F),fromto([],
                                                                                 In ,
                                                                                 Out,
                                                                                 Expansion)
        do (term_variables(Fluent, ReplaceVars),
            term_variables(F, FVars),
            make_substitution(ReplaceVars,FVars, Sub),
            apply_substitution(Bindings, Sub,NewBindings),
            apply_substitution(Tail,Sub,NewTail),
            Out=[ withconstraints(NewBindings, Quantifier,NewTail) | In])).
        
%no rule for F
no_rule(F):-
        \+opt_ggp_axiom(F,Tail).



%unfold: Recursively go through prolog terms and 'unfold' them
% wherever possible

unfold_exp(Exp,Exp1):-var(Exp),!,Exp1=Exp.

unfold_exp(Exp,Exp1):-
        atom(Exp),no_rule(Exp),!,Exp1=Exp.

unfold_exp((Exp1,Exp2), (S1,S2)):-
        unfold_exp(Exp1,S1),unfold_exp(Exp2,S2),!.

unfold_exp((Exp1;Exp2), (S1;S2)):-
        unfold_exp(Exp1,S1),unfold_exp(Exp2,S2),!.

unfold_exp(\+ NExp,\+ Exp):-
        unfold_exp(NExp,Exp),!.

unfold_exp(Exp1\=Exp2, E1\=E2):-
        unfold_exp(Exp1,E1), unfold_exp(Exp2,E2),!.

unfold_exp(Exp1=Exp2, E1=E2):-
        unfold_exp(Exp1,E1), unfold_exp(Exp2,E2),!.

unfold_exp(withconstraints(Bindings, Quantifier, Exp),
           withconstraints(Bindings, Quantifier, NewExp)):-unfold_exp(Exp,NewExp),!.

unfold_exp(Compound,Compound):-
        functor(Compound,Name,Arity),
        predicate(Name/Arity),!. %changed static_predicate to predicate

unfold_exp(Compound,Compound):-
        expand_rule(Compound,Expansion),
        length(Expansion, 0),!.

unfold_exp(Compound,Exp):-
        expand_rule(Compound,ExpansionList),
        \+ length(ExpansionList, 0),
        my_list_to_or(ExpansionList, OrExpansion),
        Exp=OrExpansion.
%       unfold_exp(OrExpansion,Exp),!.

exp_vars(Exp,[Exp]):-var(Exp).

exp_vars(Exp,[]):-ground(Exp).

exp_vars(\+Exp,Vars):-exp_vars(Exp,Vars).

exp_vars((Exp1,Exp2), Vars):-
       exp_vars(Exp1,S1),exp_vars(Exp2,S2), union_sets(S1,S2,Vars),!.

exp_vars((Exp1;Exp2), Vars):-
        exp_vars(Exp1,S1),exp_vars(Exp2,S2), union_sets(S1,S2,Vars),!.

exp_vars(Exp, Vars):-compound(Exp), term_variables(Exp,Vars).


free_vars(Head,Tail, Vars):-!,
        term_variables(Head,HeadVars),exp_vars(Tail,TailVars),diff_sets(TailVars,HeadVars,Vars).

%generate a quantifier in the form [exists var - typename var2 - typename]x
quantifier(Exp, BoundVars,Quantifier):-
        free_vars_types(Exp,BoundVars,FreeVarsTypes),
        flatten(FreeVarsTypes,  QTail),
        Quantifier=..[exists | QTail ].

not_true(P):- \+ (P==true).
is_true(P):- (P==true).

make_list_exp(Items, Head, Exp):-
        (length(Items,0) -> Exp=true ; (length(Items,1) -> 
                                          Items=[Exp] 
                                       ; 
                                           Exp=..[Head | Items])).

%'lispify an expression- conjuction to
% 'and' , disjunction(;) to or, \+ to not etc

:- mode lispify(?,-).
lispify(P,P1):-atom_or_var(P),!,P1=P.

lispify(P,P):-number(P),!.

lispify(\+ P, not(Q)):-lispify(P,Q),!.

lispify(P1=P2,equal(P1,P2)):- atom_or_var(P1),atom_or_var(P2),!.

lispify(P1=P2,Q):-
        args(P1,A1),args(P2,A2),spliced_lists(A1,
                                              A2,
                                              ArgPairs),
        (foreach([Arg1,Arg2] , ArgPairs), fromto([],In, Out,AndList)
                                          do(lispify(Arg1=Arg2, Cond),Out=[Cond | In])),

        my_list_to_and(AndList,And),
        lispify(And,Q),!.

lispify(P1\=P2,Q):-lispify(\+(P1=P2),Q),!.


lispify((true,P), Q):-lispify(P,Q),!.
lispify((true;P), true):-!.


%lispify((P,(P1,P2)), Q):-lispify(P2,Q2), my_and_to_list((P1,Q2),
%                                                        AndList),
%        Q=..[and | AndList],!.

lispify((P1,P2),Q):-
        my_and_to_list((P1,P2), AndList),
        map(lispify,AndList, NewList),
        filter(not_true,NewList,NoTrues),
        make_list_exp(NoTrues,and,Q),!.

lispify((P1;P2),Q):-
        my_or_to_list((P1;P2), OrList),
        map(lispify,OrList, NewList),
        
        make_list_exp(NewList,or, Q),!.



lispify(d_true(F),F):-!.

lispify(d_does(Player, Action), true):-!.
        
lispify(P,Q):-
        compound(P),
        P=..[Name | Args],
        (Name=withconstraints ->
            lispify_constraints(P, Q)
        ;
        
            ((foreach(Arg ,  Args), fromto([], In, Out, Reverse) 
            do (var(Arg) -> Out= [Arg | In]
               ;
                            (lispify(Arg,NewArg), Out=[NewArg |In]))),
             
            reverse(Reverse, NewArgs),
            Q=..[Name | NewArgs])).
        
        


quantify_exp(Quantifier, true,true):-!.

quantify_exp(exists, Exp, Exp):-!.

quantify_exp(Quantifier,Exp, exists(Vars, Exp)):-
       % writeln(Quantifier),
        Quantifier=..[exists | Vars].
        
lispify_constraints(withconstraints(Bindings,Quantifier, Exp),Lispy):-
        quantify_exp(Quantifier,Exp,QExp),
        lispify((Bindings,QExp), Lispy),!.
        

%exp_to_sexp: convert a prolog term to a s-expression(as a string) 

exp_to_sexp(Exp,Sexp):-atom(Exp),(Exp=[] -> Sexp="()" ; atom_string(Exp,Sexp)),!.

%pddl doesnt allow numbers as constants, so prefix "N"
exp_to_sexp(N,Sexp):-number(N),number_string(N,Ns),concat_strings("N",Ns,Sexp),!.

exp_to_sexp(S,S1):-string(S),S=S1,!.

exp_to_sexp(Exp,Sexp):-var(Exp),open(string(""),write,s),
        pretty_print(s,Exp,100),
        get_stream_info(s,name,S),
        (substring(S,"_",1) -> seek(s,0),write(s,"V");true),
         get_stream_info(s,name,SF),

        concat_strings("?",SF,Sexp).
        
        %var(Exp),getval(varcount,M),N is M+1,setval(varcount,N),
        %number_string(N,NStr),concat_strings("?Var",NStr,Sexp),!.

exp_to_sexp(Exp,Sexp):-is_list(Exp),list_to_sexp(Exp,Sexp),!.

exp_to_sexp(equal(A,B), Sexp):-list_to_sexp(["=", A,B], Sexp).
exp_to_sexp(Exp,Sexp):-
        compound(Exp),
        Exp=..[Name | Args],
        list_to_sexp([Name | Args],Sexp).

list_to_sexp([],"()"):-!.
list_to_sexp([First | L],Sexp):-
        (foreach(E , L), fromto([],In,Out,Reverse)
        do (exp_to_sexp(E,ESexp),Out=[ESexp, " " | In])),
        
        reverse([")" | Reverse],LSexps),
        exp_to_sexp(First,FirstSexp),
        concat_string(["(", FirstSexp  | LSexps], Sexp).

