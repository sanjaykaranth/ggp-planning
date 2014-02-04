:- module(sets_and_lists, [
	filter_list/3,
	selective_equal/3,
	sublist_from_to/4,
	sublist/3,
	sublist_inv/3,
	list_suffix/2,
	list_prefix/2,
	list_prefix/3,
	true_list_prefix/2,
	true_list_prefix/3,

	appends/2,
	pair_lists/3,

	myselect/3, % TODO: rename to something better
	index_of/3,
	get_nth_element/4,
	insert/4,

	fast_setof/3,

	sumlist/4,

	maplists/4,
	addlists/3,
	print_list/2,

	member/3,
	reorder/3,
        map_member/2,
	id_member/2,

	list_to_set/2,
	sym_diff_sets/3,
	diff_sets/3,
	intersect_sets/3,
	union_sets/3,
	union_sets/2,
	equal_sets/2,
	sub_set/2,

	my_and_to_list/2,
        my_or_to_list/2,
	my_list_to_and/2,
	my_list_to_or/2

	], eclipse_language).

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% L3 contains all elements of L1 that are members of L2
:- mode filter_list(++,++,?).
filter_list([], _, []) :- !.
filter_list(_, [], []) :- !.
filter_list([E|L1], L2, L3) :- 
	(member(E,L2,L2p) ->
		L3=[E|L3p]
	;
		L3=L3p,
		L2p=L2
	),
	filter_list(L1,L2p,L3p).


:- mode appends(+,?).
appends([L], L) :- !.
appends([L1,L2|Lists], LR) :- !,
	appends([L2|Lists], L),
	append(L1,L,LR).

:- mode list_to_set(+,?).
list_to_set(L,S) :-
	list_to_set(L,[],S).
:- mode list_to_set(+,+,?).
list_to_set([],S,S).
list_to_set([I|L],S1,S) :-
	(id_member(I,S1) ->
		list_to_set(L,S1,S)
	;
		list_to_set(L,[I|S1],S)
	).

:- mode sym_diff_sets(+,+,?).
sym_diff_sets([],L2,L2) :- !.
sym_diff_sets(L1,[],L1) :- !.
sym_diff_sets([E|L1],L2,Lp) :-
	(id_member(E,L2,L3) ->
		sym_diff_sets(L1,L3,Lp)
	;
		Lp=[E|L4],
		sym_diff_sets(L1,L2,L4)
	).

:- mode diff_sets(+,+,?).
% the first argument mustn't contain duplicates!
diff_sets([],_,[]) :- !.
diff_sets(L,[],L) :- !.
diff_sets([E|L1],L2,Lp) :-
	(id_member(E,L2,L3) ->
		diff_sets(L1,L3,Lp)
	;
		Lp=[E|L4],
		diff_sets(L1,L2,L4)
	).

:- mode intersect_sets(+,+,?).
intersect_sets([],_,[]) :- !.
intersect_sets(_,[],[]) :- !.
intersect_sets([E|L1],L2,Lp) :-
	(id_member(E,L2,L3) ->
		Lp=[E|L4],
		intersect_sets(L1,L3,L4)
	;
		intersect_sets(L1,L2,Lp)
	).

:- mode union_sets(+,+,?).
% union_sets(L1,L2,L) is fastest if L1=[]
union_sets(L1,L2,L) :- diff_sets(L1,L2,L3), append(L3,L2,L).
:- mode union_sets(+,?).
union_sets([S],S) :- !.
union_sets([S1|Sets],U) :-
	union_sets(Sets,U1),
	union_sets(S1,U1,U).

:- mode equal_sets(+,+).
equal_sets([],[]).
equal_sets([E1|S1],S2) :-
	id_member(E1,S2,S2p), equal_sets(S1,S2p).

:- mode sub_set(+,?).
sub_set(SubSet,Set) :-
	(param([Set]), foreach(E,SubSet) do id_member(E,Set)).
	
:- mode id_member(?,+).
id_member(X,L) :- id_member(X,L,_).
id_member(X,[Y|L],L) :- X==Y,!.
id_member(X,[Y|L],[Y|Lp]) :- id_member(X,L,Lp),!.

:- mode pair_lists(+,+,?).
pair_lists([],[],[]).
pair_lists([E1|L1],[E2|L2],[(E1,E2)|L3]) :-
	pair_lists(L1,L2,L3).

:- mode myselect(++,+,?).
myselect(1,[X|_],X) :- !.
myselect(N,[_|Y],X) :- N>1, !, M is N-1, myselect(M,Y,X).

:- mode index_of(?,+,?).
index_of(X,[X|_],1).
index_of(X,[_|Y],N) :- index_of(M,Y,X), N is M+1.

:- mode insert(?, ++, ?, ?).
insert(V,1,[_|X],[V|X]) :- !.
insert(V,N,[V1|X],[V1|Y]) :- N1 is N-1, insert(V,N1,X,Y).

:- mode selective_equal(++,?,?).
selective_equal(Indexes,L1,L2) :-
	selective_equal(1,Indexes,L1,L2).
:- mode selective_equal(++,++,?,?).
selective_equal(_,[],_,_) :- !.
selective_equal(N,[N|Indexes],[E|L1],[E|L2]) :- !, N1 is N+1, selective_equal(N1,Indexes,L1,L2).
selective_equal(N,[Ni|Indexes],[_|L1],[_|L2]) :- Ni>N, !,
	N1 is N+1, selective_equal(N1,[Ni|Indexes],L1,L2).

% sublist(FromIndex,ToIndex,List,SubList)
:- mode sublist_from_to(++,++,?,?).
sublist_from_to(1,0,_,[]) :- !.
sublist_from_to(1,To,[E|L],[E|SL]) :-
	To>0, !,
	To1 is To-1,
	sublist_from_to(1,To1,L,SL).
sublist_from_to(From,To,[_|L],SL) :-
	From>1, !,
	From1 is From-1,
	To1 is To-1,
	sublist_from_to(From1,To1,L,SL).

% get_nth_element(Index,List,Item,RemainingList)
:- mode get_nth_element(++,?,?,?).
get_nth_element(1,[Item|List],Item,List) :- !.
get_nth_element(I,[Item1|List],Item,[Item1|RemainingList]) :-
	I>1, !, I1 is I-1,
	get_nth_element(I1,List,Item,RemainingList).

:- tool(fast_setof/3,fast_setof_body/4).
fast_setof_body(X,Expr,Xs,Module) :-
	findall(X,Expr,Xs1)@Module,
	sort(0,<,Xs1,Xs)@Module.

% sublist(Indizes,L1,L2) L2 is L1 without the elements with indizes in Indizes
:- mode sublist(++,?,?).
sublist(Indizes,L1,L2) :-
	sublist(1,Indizes,L1,L2).
:- mode sublist(++,++,?,?).
sublist(_,[],L,L) :- !.
sublist(N,[N|Indizes],[_|L1],L2) :- !, N1 is N+1, sublist(N1,Indizes,L1,L2) .
sublist(N,[Ni|Indizes],[E|L1],[E|L2]) :- Ni>N, !, N1 is N+1, sublist(N1,[Ni|Indizes],L1,L2).

% sublist_inv(Indexes,L1,L2) L2 are all elements of L1 with indizes in Indizes
:- mode sublist_inv(++,?,?).
sublist_inv(Indizes,L1,L2) :-
	sublist_inv(1,Indizes,L1,L2).
:- mode sublist_inv(++,++,?,?).
sublist_inv(_,[],_,[]) :- !.
sublist_inv(N,[N|Indizes],[E|L1],[E|L2]) :- !, N1 is N+1, sublist_inv(N1,Indizes,L1,L2) .
sublist_inv(N,[Ni|Indizes],[_|L1],L2) :- Ni>N, !, N1 is N+1, sublist_inv(N1,[Ni|Indizes],L1,L2).

:- mode list_suffix(?,+).
list_suffix(L,L).
list_suffix(Suffix,[_|L]) :-
	list_suffix(Suffix, L).

:- mode list_prefix(?,+).
list_prefix(Prefix,List) :-
	list_prefix(Prefix, List, _Suffix).
:- mode list_prefix(?,+,?).
list_prefix([X|Prefix],[X|List],Suffix) :-
	list_prefix(Prefix,List,Suffix).
list_prefix([X],[X|Suffix],Suffix).

:- mode true_list_prefix(?,+).
true_list_prefix(Prefix,List) :- % like prefix but Suffix is non-empty
	true_list_prefix(Prefix, List, _Suffix).
:- mode true_list_prefix(?,+,?).
true_list_prefix([X|Prefix],[X,Y|List],Suffix) :-
	true_list_prefix(Prefix,[Y|List],Suffix).
true_list_prefix([X],[X,Y|Suffix],[Y|Suffix]).


member(E,[E|L],L).
member(E,[E1|L],[E1|L1]) :- member(E,L,L1).

% reorder(L,LOrder,LR): LR contains all the elements of L reordered according to the order given in LOrder
% this assumes that the L is a set, i.e. doesn't contain duplicates
:- mode reorder(+, +, ?).
reorder(L,[],L).
reorder(L,[E|LOrder],LR) :-
	(member(E, L, L1) ->
		LR=[E|LR1],
		reorder(L1,LOrder,LR1)
	;
		reorder(L,LOrder,LR)
	).

:- mode map_member(?, +).
map_member([], []).
map_member([Member|MemberList], [List|Lists]) :-
	member(Member, List),
	map_member(MemberList, Lists).

:- mode sumlist(+,+,?,?).
:- tool(sumlist/4,sumlist_body/5).
sumlist_body(_, [], Val, Val, _Module).
sumlist_body(P, [E|L], V1, Val, Module) :-
	P=..[PName|PArgs],
	append([PName|PArgs],[E,V1,V2],PredL),
	Pred=..PredL, call(Pred)@Module, sumlist_body(P,L,V2,Val,Module).

:- mode maplists(+,+,+,?).
:- tool(maplists/4, maplists_body/5).
maplists_body(_,[],[],[],_Module).
maplists_body(Pred,[X|XL],[Y|YL],[Z|ZL],Module) :- mapplists_body(Pred,XL,YL,ZL,Module), P=..[Pred,X,Y,Z], call(P)@Module.

:- mode addlists(+,+,?).
addlists(XL,YL,ZL) :- maplists(plus,XL,YL,ZL).

print_list(Stream, List) :-
	(foreach(E,List), param(Stream) do
		writeln(Stream, E)
	).

% transform lists to prolog conjunctions and vice versa

:- mode my_or_to_list(+,?).
my_or_to_list((P1;P2),L) :- !,
        my_or_to_list(P1,L1), my_or_to_list(P2,L2),
        append(L1,L2,L).
my_or_to_list(P,[P]).

:- mode my_and_to_list(+,?).
my_and_to_list((P1,P2),L) :- !,
	my_and_to_list(P1,L1), my_and_to_list(P2,L2),
	append(L1,L2,L).
my_and_to_list(P,[P]).

:- mode my_list_to_and(+,?).
my_list_to_and([],true).
my_list_to_and([fail|_],fail) :- !.
my_list_to_and([true|List],Result) :- !,
	my_list_to_and(List,Result).
my_list_to_and([X],X) :- !.
my_list_to_and([X|List],Result) :-
	my_list_to_and(List,And),
	(And=fail -> Result=fail ; Result=(X,And)).

:- mode my_list_to_or(+,?).
my_list_to_or([],fail).
my_list_to_or([true|_],true) :- !.
my_list_to_or([fail|List],Result) :- !,
	my_list_to_or(List,Result).
my_list_to_or([X],X) :- !.
my_list_to_or([X|List],Result) :-
	my_list_to_or(List,Or),
	(Or=true -> Result=true ; Result=(X;Or)).
