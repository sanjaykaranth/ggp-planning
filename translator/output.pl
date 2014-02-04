:-use_module("pltopddl.pl").

%can't put this in a module..

map(FunctionName,[H|T],[NH|NT]):-
           Function=..[FunctionName,H,NH],
           call(Function),
           map(FunctionName,T,NT).
map(_,[],[]).

%..

%The actual positive, negative effect and precondition axioms

neg_axiom(Fluent,Action,Axiom):-
        unfold_exp(neg_effect(Fluent,jointmove(Action)), Expanded),
        lispify(Expanded, Axiom).

pos_axiom(Fluent,Action,Axiom):-
        unfold_exp(pos_effect(Fluent,jointmove(Action)), Expanded),
        lispify(Expanded, Axiom).

precond_axiom(Action, Axiom):-
        unfold_exp(legal_jointmove(jointmove(Action)) , Expanded),
        lispify(Expanded,Axiom).

:- mode make_predicate(+,-).
make_predicate(Name/Arity, Predicate):-functor(Predicate,Name,Arity).

%all axioms put together for an action, in pddl format.

action_axioms(Action,Axioms):-
        
        precond_axiom(Action,Precondition),
        
        all_fluents(TempFluents),
        map(make_predicate,TempFluents,Fluents),!,

        %writeln(Fluents),
        (foreach(Fluent, Fluents), param(Action), fromto(([],[]),(In1,In2),(Out1,Out2),(PositiveEffects,NegativeEffects))
        do
            (

             pos_axiom(Fluent,Action,PCondition),
             neg_axiom(Fluent,Action,NCondition),
             

             %what if Fluent is not a pos/neg effect? NCondition
             % should be set to false, and must test for it here.
             predicate_args_types(Fluent,Args),
             (functor(PCondition,pos_effect,2) -> Out1=In1
             ;
                                                  Out1=[forall(Args, when(PCondition, Fluent)) | In1]),
             (functor(NCondition,neg_effect,2) -> Out2=In2
             ;
                                                  Out2= [forall(Args, when(NCondition, not(Fluent))) | In2]))),
        
        %writeln(PositiveEffects),
        append(PositiveEffects,NegativeEffects,AllEffects),
        AndEffect=..[and | AllEffects],
%        lispify(AndEffect,Effect),
        Axioms=[Precondition , AndEffect].


action_axioms_pddl(Name/Arity,PddlString):-

        functor(Action,Name,Arity),
        action_axioms(Action, [Precondition , Effect]),
        %writeln(Precondition),
        %writeln(Effects),
        
        predicate_args_types(Action, Params),
        exp_to_sexp([":action", Name, 
                     ":parameters" , Params,
                     ":precondition", Precondition,
                     ":effect" , Effect],
                    PddlString).



%initial state= init facts + static facts

initial_state(List):-
        findall(Fact, opt_ggp_axiom(d_init(Fact),true),InitList),
        all_facts(StaticList),
        append(InitList,StaticList,List).

initial_state_pddl(Pddl):-
        initial_state(FactList), exp_to_sexp([":init" | FactList],Pddl).

goal_action(Point,[":action", Name,
                    ":parameters", [] , 
                    ":precondition", Exp,
                    ":effect", ["rgoal" ,PointStr]
                    ]):-
        player(Player),
        unfold_exp(d_goal(Player,Point),GoalExp),
        lispify(GoalExp,Exp),
        
        concat_string(["G",Point], PointStr),
        concat_string(["goal", Point], Name).
        
game_points(Points):-
        player(Player),
        findall( Point, 
                 opt_ggp_axiom(d_goal(Player,Point),Exp),
                 PointsList),
        list_to_set(PointsList,Points).

goal_actions_pddl(Pddl):-
        game_points(Points),
        map(goal_action, Points,Actions),
        map(exp_to_sexp,Actions,Sexps),
        concat_string(Sexps,Pddl).

goal_pddl("(:goal (rgoal 100))"):-!.

derived_predicate_rule(P,[":derived", [Name | ArgsTypes], Body]):-
        predicate_args_types(P,ArgsTypes),
        functor(P,Name,Arity),
        expand_rule(P,List),
        my_list_to_or(List,Exp),
        lispify(Exp,Body).
                
derived_predicates_pddl(Pddl):-
        my_coverof(F,
                (derived_predicate(P),make_predicate(P,F)),
                Predicates),
         
        map(derived_predicate_rule,Predicates,Rules),
        map(exp_to_sexp, Rules, RuleSexps),
        concat_string(RuleSexps,Pddl).

%the :types and :constants fields of the domain description

types_objects_pddl(TypesString,ObjectsString):-

        %interested in domains of arguments of actions, fluents, and
        % other predicates defined in the game description
        
        findall([DomainName, Elements], 
                (((predicate(P),arg2domainname(arg(predicate,K,P),
                                             DomainName))
                ;
                 (fluent(F),arg2domainname(arg(function,K,F),
                                             DomainName))
                ;
                 (action(A),arg2domainname(arg(predicate,K,A),
                                              DomainName))),
                 domainelements(DomainName,Elements)),
                 
                TDomains),
        list_to_set(TDomains,Domains),
        %writeln("relevant domains:"),
        %writeln(Domains),
        
        %include G100 etc 
        game_points(Points),
        (foreach(Point,Points), fromto([],In,Out,PointConstants)
        do (concat_string(["G",Point], Str), Out=[Str | In])),
        
        split_list(Domains,DomainNames,DomainSets),
        
        types_and_objects([PointConstants | DomainSets],[points | DomainNames], TypesExp,ObjectsExp),
        
        exp_to_sexp(TypesExp,TypesString),
        exp_to_sexp(ObjectsExp,ObjectsString).
        
        
pddl_predicate(P):-predicate(P).
pddl_predicate(P):-fluent(P).

my_coverof(Term,Goal,List):-
        findall(TermList,
                coverof(Term, 
                        Goal,
                        TermList),
                TermLists),
        flatten(1,TermLists,List).


predicate_args_types(Functor, ArgsTypes):-
        functor(Functor,Name,Arity),
        Functor=..[Name | Args],
        (foreach(Arg,Args), fromto([],In,Out,ArgsTypes),
         fromto(0,InC,OutC,Arity),
         param(Name,Arity)
        do ( OutC is InC+1,
             functor_domain_name(Name/Arity,OutC,DomainName),
             append(In, [Arg, -, DomainName],Out))).
        
        
predicates_pddl(Pddl):-
        my_coverof(P,pddl_predicate(P), Preds),
        
        (foreach(Name/Arity, Preds), fromto([],InP,OutP,AllPredicates)
        
        
         do (functor(Pred,Name,Arity),predicate_args_types(Pred, ArgsTypes),
             OutP=[ [Name | ArgsTypes] | InP])),
        
        exp_to_sexp([":predicates" | AllPredicates], Pddl).
                                           

%dump the domain to stdout

dump_domain(Junk):-

        types_objects_pddl(TPddl,OPddl),writeln(TPddl),
        predicates_pddl(PPddl),writeln(PPddl),
        writeln(OPddl),

        derived_predicates_pddl(DPddl),writeln(DPddl),
        
        all_actions(Actions),
        
        (foreach(Action,Actions) 
        
        do ( action_axioms_pddl(Action, APddl),
             writeln(APddl))),
        
        goal_actions_pddl(GPddl),writeln(GPddl).


%dump the problem to stdout

dump_problem(Pddl):-
        initial_state_pddl(Initial),
        writeln(Initial),
        goal_pddl(Goal),
        writeln(Goal).
