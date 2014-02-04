:- module(domain, [
	all_actions/1,
        all_fluents/1,
        all_predicates/1,
        all_facts/1,
        fluent/1,
        derived_predicate/1,
        action/1
        ], eclipse_language).


%Change the filenames to that of the required domain and effect_axiom
% files

:-use_module("./fluxoutput/eightpuzzle_effect_axioms.pl").
:-use_module("./fluxoutput/eightpuzzle_domains.pl").


%fluent- one that occurs in a pos_effect/neg_effect of an action

fluent(Name/Arity):-
        (opt_ggp_axiom(neg_effect(Fluent, jointmove(Action)), Tail)
        ;
         opt_ggp_axiom(pos_effect(Fluent, jointmove(Action)), Tail)),
        functor(Fluent,Name,Arity).


action(Name/Arity):-
        opt_ggp_axiom(pos_effect(Fluent, jointmove(Action)), Rest),
          %            (d_does(Player, Action), Rest)),
        functor(Action, Name,Arity).

action(Name/Arity):-
        opt_ggp_axiom(neg_effect(Fluent, jointmove(Action)), Rest),
%                      (d_does(Player, Action), Rest)),
        functor(Action, Name,Arity).

derived_predicate(A):-
        predicate(A),
        \+static_predicate(A).

all_actions(Actions):-
        coverof(Action, action(Action),
               Actions).
               
%                         ;
%                          (opt_ggp_axiom(pos_effect(Fluent,
%                                                    jointmove(Action)),
%                                        (d_does(Player,
%                                                Action),
%                                         Rest)))
%                         ;
%                          (opt_ggp_axiom(legal_jointmove(jointmove(Action)),
%                                         Tail))),
%                          Actions).
                   

all_fluents(AllFluents):-
        findall(Fluents,
                coverof(Name/Arity, 
                        fluent(Name/Arity),
                        Fluents),
                FluentLists),
        flatten(FluentLists,AllFluents).
                % ;
%                  opt_ggp_axiom(pos_effect(Fluent,
%                                           jointmove(Action)),
%                                (d_does(Player,
%                                        Action),
                %                                 Rest))),

                

% all_non_fluents(Predicates):-
%         findall(Preds,%weird coverall behaviour
%                 coverof(Name/Arity, 
%                         (opt_ggp_axiom(Predicate, Tail),
%                          functor(Predicate,Name,Arity),
%                          \+ member(Name, [d_goal,d_init,d_legal,d_next,
%                                           d_terminal,pos_effect,neg_effect,
%                                           legal_jointmove,d_role]),
%                          \+ (atom_string(Name,NameStr),substring(NameStr,"gen",
%                                                                  1))),
%                         Preds),
%                 PredLists),
%         flatten(PredLists,Predicates).

all_facts(List):-
        findall(Fact,
                (static_predicate(P/Arity),opt_ggp_axiom(Fact,true), functor(Fact,P,Arity)),
                List).

all_predicates(List):-
        coverof(Name/Arity, predicate(Name/Arity), List).

