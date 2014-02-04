:- module(substitute, [
	make_substitution/3,
        apply_substitution/3
	], eclipse_language).

make_substitution(S1, S2, Substitution) :-
	(foreach(V1, S1), foreach(V2, S2), foreach(V1->V2, Substitution) do true).

:- mode apply_substitution(?, +, -).
apply_substitution(Term, Substitution, SubstTerm) :-
	member(X->Y, Substitution), Term==X, !,
	SubstTerm=Y.

apply_substitution(Term, _Substitution, Term) :-
	var(Term), !.
%	fail. % fail if not all variables could be substituted
%No fail. Its a free var.


apply_substitution(Term, _Substitution, Term) :-
	atomic(Term), !.
apply_substitution(Term, Substitution, Termp) :-
	functor(Term, Functor, Arity),
	functor(Termp, Functor, Arity),
	(loop_name(apply_substitution_to_args),
	 foreacharg(TermArg, Term),
	 foreacharg(TermArgp, Termp),
	 param(Substitution) do (
		apply_substitution(TermArg, Substitution, TermArgp)
	)).


