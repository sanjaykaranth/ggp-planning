:- module(utils, [
        my_unify/3,
        map/3,
        filter/3,
        args/2,
        atom_or_var/1,
        split_list/3,
        spliced_lists/3,
        member_var/2

                 
	], eclipse_language).


:-use_module("sets_and_lists.pl").
:-use_module("substitute.pl").


%UTILITIES

:- mode args(?,?).
args(F,Args):-functor(F, Name,Arity),F=..[Name | Args].

:-mode atom_or_var(?).
atom_or_var(X):-atom(X);var(X);number(X).

:- mode spliced_lists(+,+,-).

spliced_lists([],[],[]):-!.
spliced_lists([E1],[E2], [[E1,E2]]):-!.
spliced_lists([E1 | L1],[E2 | L2],[[E1,E2] | Rest]):-spliced_lists(L1,L2, Rest).

:- mode split_list(+,-,-).
split_list(L, L1,L2):-
        (foreach([X1,X2],L),fromto([],In1,Out1,L1), fromto([],In2,Out2,L2)
        do (append(In1,[X1],Out1),
            append(In2,[X2],Out2))).



%T2 is less general than T1. 
%Compute the binding constraints among the variables of T1. 
%e.g: my_unify(a(X,Y),a(V,V),equal(X,Y))

:-mode my_unify(?,?,-).

my_unify(T1,T2,[]):-T1==T2,!.

my_unify(T1,T2,Constraints):-!,
        unify_terms(T1,T2,Bindings),
        equality_from_bindings(Bindings,Constraints).
        

%Given two terms T1 and T2, return the bindings which make T1=T2. e.g:
% unify_terms(a(X),a(Y),equal(X,Y))

unify_terms(T1,T2,equal(T1,T2)):-var(T1),!.

unify_terms(T1,T2,[]):-T1==T2,!.

unify_terms(T1,T2,Bindings):-
        functor(T1,Name,Arity),functor(T2,Name,Arity),
        
        args(T1,T1Args),args(T2,T2Args),
        
        (foreach(Arg1, T1Args), foreach(Arg2,T2Args), fromto([], In,
                                                             Out,
                                                             NestedBindings)
        do ( unify_terms(Arg1,Arg2, ABind),
             (length(ABind,0) -> Out= In
             ;
                                 Out=[ABind | In]))),
        
        flatten(NestedBindings,Bindings),!.
                    

equality_from_bindings(Bindings,Constraints):-
        parse_assignments(Bindings,Valueassigns,Nonassigns),
        eliminate_vars(Nonassigns,Varassigns),
        append(Varassigns,Valueassigns, Constraints).

parse_assignments([],[],[]):-!.

parse_assignments( [equal(E1,E2) | Rest], [Assign | Assigns], Nonassigns):-
        value_assignment(equal(E1, E2), Assign), parse_assignments(Rest,
                                                              Assigns,
                                                              Nonassigns).
parse_assignments( [equal(E1,E2) | Rest], Assigns, [equal(E1,E2) | Nonassigns]):-
        \+value_assignment(equal(E1, E2), Assign), parse_assignments(Rest,Assigns,Nonassigns).

value_assignment(equal(E1,E2), equal(E1,E2)):-
        var(E1),ground(E2).

%simplify_bindings([[V1,V2]|, [V1,V2]]:-
%        var(V1),var(V2),

eliminate_vars(Varpairs, Simplified):-
        equal_groups(Varpairs,Groups),
        constraints_for_groups(Groups,Simplified).

constraints_for_groups([], []):-!.
constraints_for_groups([Group | Groups], Simplified):-
        constraints_for_groups(Groups, Rest),
        constraints_for_group(Group,Constraints),
        append(Constraints,Rest,Simplified).

constraints_for_group([],[]):-!.
constraints_for_group([E1], []):-!.
                                 
constraints_for_group([E1 | Group] , [equal(E1,E2) | Constraints]):-
        (Group=[E2 | Rest]),
        constraints_for_group(Group,Constraints),!.
                                                                          
equal_groups( Varpairs, Groups):-
       
        (foreach(equal(E1,E2), Varpairs), fromto([], In1,Out1,Vars1),
         fromto([], In2,Out2,Vars2)
        do (Out1= [E1 | In1], Out2= [E2 | In2])),
        
        list_to_set(Vars2,VarSet),
        var_groups(VarSet,Varpairs,Groups).

var_groups([],Pairs,[]):-!.        
var_groups([E | Set], Varpairs,[Group | Groups]):-

        var_group(E,Varpairs,Group),
        var_groups(Set,Varpairs, Groups).
                                                           
var_group(E,Varpairs, Group):-
  (foreach(VP , Varpairs), param(E), fromto([],In,Out,Group) do ( (VP=
                                                                     equal(V,Ep), Ep==E)->
                                                                Out=[V|In]
                                                            ;
                                                                Out=In)).        
% filter(FunctionName,[H|T],NT):-
%         Function=..[FunctionName,H],
%         \+ call(Function),
%         filter(FunctionName,T,NT).

neg(A,B):-B is -A.
neg(A,B):-A is -B.

member_var(Var,Vars):-member(V,Vars),V==Var.

