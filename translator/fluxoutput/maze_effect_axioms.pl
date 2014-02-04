:- module(maze_effect_axioms, [
	opt_ggp_axiom/2,
        predicate/1,
        static_predicate/1
	], eclipse_language).
opt_ggp_axiom(d_adjacent(a, b), true).
opt_ggp_axiom(d_adjacent(b, c), true).
opt_ggp_axiom(d_adjacent(c, d), true).
opt_ggp_axiom(d_adjacent(d, a), true).
opt_ggp_axiom(d_goal(robot, 100), d_true(gold(a))).
opt_ggp_axiom(d_goal(robot, 0), (d_true(gold(_241097)), _241097 \= a)).
opt_ggp_axiom(d_init(cell(a)), true).
opt_ggp_axiom(d_init(gold(c)), true).
opt_ggp_axiom(d_init(step(1)), true).
opt_ggp_axiom(d_legal(robot, move), true).
opt_ggp_axiom(d_legal(robot, grab), (d_true(cell(_241151)), d_true(gold(_241151)))).
opt_ggp_axiom(d_legal(robot, drop), d_true(gold(i))).
opt_ggp_axiom(d_next(cell(_241177)), (d_does(robot, move), d_true(cell(_241191)), d_adjacent(_241191, _241177))).
opt_ggp_axiom(d_next(cell(_241204)), (d_does(robot, grab), d_true(cell(_241204)))).
opt_ggp_axiom(d_next(cell(_241224)), (d_does(robot, drop), d_true(cell(_241224)))).
opt_ggp_axiom(d_next(gold(_241244)), (d_does(robot, move), d_true(gold(_241244)))).
opt_ggp_axiom(d_next(gold(i)), (d_does(robot, grab), d_true(cell(_241277)), d_true(gold(_241277)))).
opt_ggp_axiom(d_next(gold(i)), (d_does(robot, grab), d_true(gold(i)))).
opt_ggp_axiom(d_next(gold(_241310)), (d_does(robot, grab), d_true(cell(_241324)), d_true(gold(_241310)), _241324 \= _241310)).
opt_ggp_axiom(d_next(gold(_241344)), (d_does(robot, drop), d_true(cell(_241344)))).
opt_ggp_axiom(d_next(gold(_241364)), (d_does(robot, drop), d_true(gold(_241364)), _241364 \= i)).
opt_ggp_axiom(d_next(step(_241390)), (d_true(step(_241398)), d_succ(_241398, _241390))).
opt_ggp_axiom(d_role(robot), true).
opt_ggp_axiom(d_succ(1, 2), true).
opt_ggp_axiom(d_succ(2, 3), true).
opt_ggp_axiom(d_succ(3, 4), true).
opt_ggp_axiom(d_succ(4, 5), true).
opt_ggp_axiom(d_succ(5, 6), true).
opt_ggp_axiom(d_succ(6, 7), true).
opt_ggp_axiom(d_succ(7, 8), true).
opt_ggp_axiom(d_succ(8, 9), true).
opt_ggp_axiom(d_succ(9, 10), true).
opt_ggp_axiom(d_terminal, d_true(step(10))).
opt_ggp_axiom(d_terminal, d_true(gold(a))).
opt_ggp_axiom(gen_negation2_4242(_241506), (d_true(step(_241514)), d_succ(_241514, _241506))).
opt_ggp_axiom(gen_negation2_4243(_241525), (d_true(step(_241533)), d_succ(_241533, _241525))).
opt_ggp_axiom(gen_negation2_4244(_241544), (d_true(cell(_241552)), _241552 \= _241544)).
opt_ggp_axiom(gen_negation2_4245(_241563), (d_true(step(_241571)), d_succ(_241571, _241563))).
opt_ggp_axiom(gen_negation2_4246(_241582), (d_true(cell(_241590)), d_adjacent(_241590, _241582))).
opt_ggp_axiom(legal_jointmove(jointmove(drop)), d_true(gold(i))).
opt_ggp_axiom(legal_jointmove(jointmove(grab)), (d_true(cell(_241623)), d_true(gold(_241623)))).
opt_ggp_axiom(legal_jointmove(jointmove(move)), true).
opt_ggp_axiom(neg_effect(step(_241647), jointmove(drop)), (d_does(robot, drop), \+ gen_negation2_4242(_241647), d_true(step(_241647)))).
opt_ggp_axiom(neg_effect(gold(i), jointmove(drop)), (d_does(robot, drop), \+ d_true(cell(i)))).
opt_ggp_axiom(neg_effect(step(_241699), jointmove(grab)), (d_does(robot, grab), \+ gen_negation2_4243(_241699), d_true(step(_241699)))).
opt_ggp_axiom(neg_effect(gold(_241727), jointmove(grab)), (d_does(robot, grab), _241727 \= i, \+ gen_negation2_4244(_241727), d_true(gold(_241727)))).
opt_ggp_axiom(neg_effect(step(_241761), jointmove(move)), (d_does(robot, move), \+ gen_negation2_4245(_241761), d_true(step(_241761)))).
opt_ggp_axiom(neg_effect(cell(_241789), jointmove(move)), (d_does(robot, move), \+ gen_negation2_4246(_241789), d_true(cell(_241789)))).
opt_ggp_axiom(pos_effect(step(_241817), jointmove(drop)), (d_does(robot, drop), d_true(step(_241833)), d_succ(_241833, _241817), \+ d_true(step(_241817)))).
opt_ggp_axiom(pos_effect(gold(_241854), jointmove(drop)), (d_does(robot, drop), d_true(cell(_241854)), \+ d_true(gold(_241854)))).
opt_ggp_axiom(pos_effect(step(_241884), jointmove(grab)), (d_does(robot, grab), d_true(step(_241900)), d_succ(_241900, _241884), \+ d_true(step(_241884)))).
opt_ggp_axiom(pos_effect(gold(i), jointmove(grab)), (d_does(robot, grab), d_true(cell(_241936)), d_true(gold(_241936)), \+ d_true(gold(i)))).
opt_ggp_axiom(pos_effect(step(_241958), jointmove(move)), (d_does(robot, move), d_true(step(_241974)), d_succ(_241974, _241958), \+ d_true(step(_241958)))).
opt_ggp_axiom(pos_effect(cell(_241995), jointmove(move)), (d_does(robot, move), d_true(cell(_242011)), d_adjacent(_242011, _241995), \+ d_true(cell(_241995)))).

static_predicate(d_succ/2).
static_predicate(d_adjacent/2).


predicate(Name/Arity):-static_predicate(Name/Arity).

