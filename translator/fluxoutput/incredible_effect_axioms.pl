:- module(incredible_effect_axioms, [
	opt_ggp_axiom/2,
        predicate/1,
        static_predicate/1
	], eclipse_language).
opt_ggp_axiom(d_adjacent(w, x), true).
opt_ggp_axiom(d_adjacent(x, y), true).
opt_ggp_axiom(d_adjacent(y, z), true).
opt_ggp_axiom(d_adjacent(z, w), true).
opt_ggp_axiom(d_goal(robot, 100), (d_true(gold(w)), d_true(on(d, f)), d_true(on(b, d)), d_true(on(a, e)), d_true(on(c, a)))).
opt_ggp_axiom(d_goal(robot, 75), (d_true(gold(w)), gen_disjunction_con_897, d_true(on(a, e)), d_true(on(c, a)))).
opt_ggp_axiom(d_goal(robot, 70), (d_true(gold(w)), d_true(on(d, f)), d_true(on(b, d)), gen_disjunction_con_898)).
opt_ggp_axiom(d_goal(robot, 55), (d_true(on(d, f)), d_true(on(b, d)), d_true(on(a, e)), d_true(on(c, a)), \+ d_true(gold(w)))).
opt_ggp_axiom(d_goal(robot, 45), (d_true(gold(w)), gen_disjunction_con_899, gen_disjunction_con_900)).
opt_ggp_axiom(d_goal(robot, 30), (d_true(on(a, e)), d_true(on(c, a)), gen_disjunction_con_901, \+ d_true(gold(w)))).
opt_ggp_axiom(d_goal(robot, 25), (d_true(on(d, f)), d_true(on(b, d)), gen_disjunction_con_902, \+ d_true(gold(w)))).
opt_ggp_axiom(d_goal(robot, 0), (d_true(step(c20)), gen_disjunction_con_903, gen_disjunction_con_904, \+ d_true(gold(w)))).
opt_ggp_axiom(d_init(cell(w)), true).
opt_ggp_axiom(d_init(gold(y)), true).
opt_ggp_axiom(d_init(step(c1)), true).
opt_ggp_axiom(d_init(clear(b)), true).
opt_ggp_axiom(d_init(clear(c)), true).
opt_ggp_axiom(d_init(clear(f)), true).
opt_ggp_axiom(d_init(on(c, a)), true).
opt_ggp_axiom(d_init(on(e, d)), true).
opt_ggp_axiom(d_init(on(f, e)), true).
opt_ggp_axiom(d_init(table(a)), true).
opt_ggp_axiom(d_init(table(b)), true).
opt_ggp_axiom(d_init(table(d)), true).
opt_ggp_axiom(d_legal(robot, move), true).
opt_ggp_axiom(d_legal(robot, grab), (d_true(cell(_422395)), d_true(gold(_422395)))).
opt_ggp_axiom(d_legal(robot, drop), d_true(gold(i))).
opt_ggp_axiom(d_legal(robot, s(_422423, _422424)), (d_true(clear(_422423)), d_true(table(_422423)), d_true(clear(_422424)), _422423 \= _422424)).
opt_ggp_axiom(d_legal(robot, u(_422460, _422461)), (d_true(clear(_422460)), d_true(on(_422460, _422461)))).
opt_ggp_axiom(d_legal(robot, contemplate(_422485, _422486)), (d_adjacent(_422485, _422493), d_adjacent(_422486, _422497))).
opt_ggp_axiom(d_next(cell(_422507)), (d_does(robot, move), d_true(cell(_422521)), d_adjacent(_422521, _422507))).
opt_ggp_axiom(d_next(cell(_422534)), (d_does(robot, grab), d_true(cell(_422534)))).
opt_ggp_axiom(d_next(cell(_422554)), (d_does(robot, drop), d_true(cell(_422554)))).
opt_ggp_axiom(d_next(cell(_422574)), (d_true(cell(_422574)), d_does(robot, s(_422588, _422589)))).
opt_ggp_axiom(d_next(cell(_422599)), (d_true(cell(_422599)), d_does(robot, u(_422613, _422614)))).
opt_ggp_axiom(d_next(cell(_422624)), (d_true(cell(_422624)), d_does(robot, contemplate(_422638, _422639)))).
opt_ggp_axiom(d_next(gold(_422649)), (d_does(robot, move), d_true(gold(_422649)))).
opt_ggp_axiom(d_next(gold(i)), (d_does(robot, grab), d_true(cell(_422682)), d_true(gold(_422682)))).
opt_ggp_axiom(d_next(gold(i)), (d_does(robot, grab), d_true(gold(i)))).
opt_ggp_axiom(d_next(gold(_422715)), (d_does(robot, grab), d_true(cell(_422729)), d_true(gold(_422715)), _422729 \= _422715)).
opt_ggp_axiom(d_next(gold(_422749)), (d_does(robot, drop), d_true(cell(_422749)))).
opt_ggp_axiom(d_next(gold(_422769)), (d_does(robot, drop), d_true(gold(_422769)), _422769 \= i)).
opt_ggp_axiom(d_next(gold(_422795)), (d_true(gold(_422795)), d_does(robot, s(_422809, _422810)))).
opt_ggp_axiom(d_next(gold(_422820)), (d_true(gold(_422820)), d_does(robot, u(_422834, _422835)))).
opt_ggp_axiom(d_next(gold(_422845)), (d_true(gold(_422845)), d_does(robot, contemplate(_422859, _422860)))).
opt_ggp_axiom(d_next(step(_422870)), (d_true(step(_422878)), d_succ(_422878, _422870))).
opt_ggp_axiom(d_next(on(_422892, _422893)), d_does(robot, s(_422892, _422893))).
opt_ggp_axiom(d_next(on(_422910, _422911)), (d_does(robot, s(_422921, _422922)), d_true(on(_422910, _422911)))).
opt_ggp_axiom(d_next(on(_422938, _422939)), (d_does(robot, u(_422949, _422950)), d_true(on(_422938, _422939)), _422949 \= _422938)).
opt_ggp_axiom(d_next(on(_422972, _422973)), (d_true(on(_422972, _422973)), d_does(robot, move))).
opt_ggp_axiom(d_next(on(_422995, _422996)), (d_true(on(_422995, _422996)), d_does(robot, grab))).
opt_ggp_axiom(d_next(on(_423018, _423019)), (d_true(on(_423018, _423019)), d_does(robot, drop))).
opt_ggp_axiom(d_next(on(_423041, _423042)), (d_true(on(_423041, _423042)), d_does(robot, contemplate(_423057, _423058)))).
opt_ggp_axiom(d_next(table(_423068)), (d_does(robot, s(_423078, _423079)), d_true(table(_423068)), _423078 \= _423068)).
opt_ggp_axiom(d_next(table(_423099)), d_does(robot, u(_423099, _423106))).
opt_ggp_axiom(d_next(table(_423116)), (d_does(robot, u(_423126, _423127)), d_true(table(_423116)))).
opt_ggp_axiom(d_next(table(_423141)), (d_true(table(_423141)), d_does(robot, move))).
opt_ggp_axiom(d_next(table(_423161)), (d_true(table(_423161)), d_does(robot, grab))).
opt_ggp_axiom(d_next(table(_423181)), (d_true(table(_423181)), d_does(robot, drop))).
opt_ggp_axiom(d_next(table(_423201)), (d_true(table(_423201)), d_does(robot, contemplate(_423215, _423216)))).
opt_ggp_axiom(d_next(clear(_423226)), (d_does(robot, s(_423236, _423237)), d_true(clear(_423226)), _423237 \= _423226)).
opt_ggp_axiom(d_next(clear(_423257)), d_does(robot, u(_423264, _423257))).
opt_ggp_axiom(d_next(clear(_423274)), (d_does(robot, u(_423284, _423285)), d_true(clear(_423274)))).
opt_ggp_axiom(d_next(clear(_423299)), (d_true(clear(_423299)), d_does(robot, move))).
opt_ggp_axiom(d_next(clear(_423319)), (d_true(clear(_423319)), d_does(robot, grab))).
opt_ggp_axiom(d_next(clear(_423339)), (d_true(clear(_423339)), d_does(robot, drop))).
opt_ggp_axiom(d_next(clear(_423359)), (d_true(clear(_423359)), d_does(robot, contemplate(_423373, _423374)))).
opt_ggp_axiom(d_next(pondered(_423385, _423386)), d_does(robot, contemplate(_423385, _423386))).
opt_ggp_axiom(d_role(robot), true).
opt_ggp_axiom(d_succ(c1, c2), true).
opt_ggp_axiom(d_succ(c2, c3), true).
opt_ggp_axiom(d_succ(c3, c4), true).
opt_ggp_axiom(d_succ(c4, c5), true).
opt_ggp_axiom(d_succ(c5, c6), true).
opt_ggp_axiom(d_succ(c6, c7), true).
opt_ggp_axiom(d_succ(c7, c8), true).
opt_ggp_axiom(d_succ(c8, c9), true).
opt_ggp_axiom(d_succ(c9, c10), true).
opt_ggp_axiom(d_succ(c10, c11), true).
opt_ggp_axiom(d_succ(c11, c12), true).
opt_ggp_axiom(d_succ(c12, c13), true).
opt_ggp_axiom(d_succ(c13, c14), true).
opt_ggp_axiom(d_succ(c14, c15), true).
opt_ggp_axiom(d_succ(c15, c16), true).
opt_ggp_axiom(d_succ(c16, c17), true).
opt_ggp_axiom(d_succ(c17, c18), true).
opt_ggp_axiom(d_succ(c18, c19), true).
opt_ggp_axiom(d_succ(c19, c20), true).
opt_ggp_axiom(d_terminal, d_true(step(c20))).
opt_ggp_axiom(d_terminal, d_true(gold(w))).
opt_ggp_axiom(gen_disjunction_con_897, \+ d_true(on(d, f))).
opt_ggp_axiom(gen_disjunction_con_897, \+ d_true(on(b, d))).
opt_ggp_axiom(gen_disjunction_con_898, \+ d_true(on(a, e))).
opt_ggp_axiom(gen_disjunction_con_898, \+ d_true(on(c, a))).
opt_ggp_axiom(gen_disjunction_con_899, \+ d_true(on(d, f))).
opt_ggp_axiom(gen_disjunction_con_899, \+ d_true(on(b, d))).
opt_ggp_axiom(gen_disjunction_con_900, \+ d_true(on(a, e))).
opt_ggp_axiom(gen_disjunction_con_900, \+ d_true(on(c, a))).
opt_ggp_axiom(gen_disjunction_con_901, \+ d_true(on(d, f))).
opt_ggp_axiom(gen_disjunction_con_901, \+ d_true(on(b, d))).
opt_ggp_axiom(gen_disjunction_con_902, \+ d_true(on(a, e))).
opt_ggp_axiom(gen_disjunction_con_902, \+ d_true(on(c, a))).
opt_ggp_axiom(gen_disjunction_con_903, \+ d_true(on(a, e))).
opt_ggp_axiom(gen_disjunction_con_903, \+ d_true(on(c, a))).
opt_ggp_axiom(gen_disjunction_con_904, \+ d_true(on(d, f))).
opt_ggp_axiom(gen_disjunction_con_904, \+ d_true(on(b, d))).
opt_ggp_axiom(gen_negation2_4271(_423769), (d_true(step(_423777)), d_succ(_423777, _423769))).
opt_ggp_axiom(gen_negation2_4272(_423788), (d_true(step(_423796)), d_succ(_423796, _423788))).
opt_ggp_axiom(gen_negation2_4273(_423807), (d_true(step(_423815)), d_succ(_423815, _423807))).
opt_ggp_axiom(gen_negation2_4274(_423826), (d_true(step(_423834)), d_succ(_423834, _423826))).
opt_ggp_axiom(gen_negation2_4275(_423845), (d_true(step(_423853)), d_succ(_423853, _423845))).
opt_ggp_axiom(gen_negation2_4276(_423864), (d_true(cell(_423872)), _423872 \= _423864)).
opt_ggp_axiom(gen_negation2_4277(_423883), (d_true(step(_423891)), d_succ(_423891, _423883))).
opt_ggp_axiom(gen_negation2_4278(_423902), (d_true(cell(_423910)), d_adjacent(_423910, _423902))).
opt_ggp_axiom(legal_jointmove(jointmove(contemplate(_423926, _423927))), (d_adjacent(_423926, _423934), d_adjacent(_423927, _423938))).
opt_ggp_axiom(legal_jointmove(jointmove(u(_423951, _423952))), (d_true(clear(_423951)), d_true(on(_423951, _423952)))).
opt_ggp_axiom(legal_jointmove(jointmove(s(_423977, _423978))), (d_true(clear(_423977)), d_true(table(_423977)), d_true(clear(_423978)), _423977 \= _423978)).
opt_ggp_axiom(legal_jointmove(jointmove(drop)), d_true(gold(i))).
opt_ggp_axiom(legal_jointmove(jointmove(grab)), (d_true(cell(_424032)), d_true(gold(_424032)))).
opt_ggp_axiom(legal_jointmove(jointmove(move)), true).
opt_ggp_axiom(neg_effect(step(_424056), jointmove(contemplate(_424062, _424063))), (d_does(robot, contemplate(_424062, _424063)), \+ gen_negation2_4271(_424056), d_true(step(_424056)))).
opt_ggp_axiom(neg_effect(pondered(_424090, _424091), jointmove(contemplate(_424097, _424098))), (d_does(robot, contemplate(_424097, _424098)), match(_424098, _424097) \= match(_424091, _424090), d_true(pondered(_424090, _424091)))).
opt_ggp_axiom(neg_effect(on(_424130, _424131), jointmove(u(_424130, _424137))), (d_does(robot, u(_424130, _424137)), d_true(on(_424130, _424131)))).
opt_ggp_axiom(neg_effect(step(_424156), jointmove(u(_424162, _424163))), (d_does(robot, u(_424162, _424163)), \+ gen_negation2_4272(_424156), d_true(step(_424156)))).
opt_ggp_axiom(neg_effect(pondered(_424190, _424191), jointmove(u(_424197, _424198))), (d_does(robot, u(_424197, _424198)), d_true(pondered(_424190, _424191)))).
opt_ggp_axiom(neg_effect(table(_424217), jointmove(s(_424217, _424223))), d_does(robot, s(_424217, _424223))).
opt_ggp_axiom(neg_effect(clear(_424237), jointmove(s(_424243, _424237))), d_does(robot, s(_424243, _424237))).
opt_ggp_axiom(neg_effect(step(_424257), jointmove(s(_424263, _424264))), (d_does(robot, s(_424263, _424264)), \+ gen_negation2_4273(_424257), d_true(step(_424257)))).
opt_ggp_axiom(neg_effect(pondered(_424291, _424292), jointmove(s(_424298, _424299))), (d_does(robot, s(_424298, _424299)), d_true(pondered(_424291, _424292)))).
opt_ggp_axiom(neg_effect(step(_424318), jointmove(drop)), (d_does(robot, drop), \+ gen_negation2_4274(_424318), d_true(step(_424318)))).
opt_ggp_axiom(neg_effect(gold(i), jointmove(drop)), (d_does(robot, drop), \+ d_true(cell(i)))).
opt_ggp_axiom(neg_effect(pondered(_424371, _424372), jointmove(drop)), (d_does(robot, drop), d_true(pondered(_424371, _424372)))).
opt_ggp_axiom(neg_effect(step(_424393), jointmove(grab)), (d_does(robot, grab), \+ gen_negation2_4275(_424393), d_true(step(_424393)))).
opt_ggp_axiom(neg_effect(gold(_424421), jointmove(grab)), (d_does(robot, grab), _424421 \= i, \+ gen_negation2_4276(_424421), d_true(gold(_424421)))).
opt_ggp_axiom(neg_effect(pondered(_424456, _424457), jointmove(grab)), (d_does(robot, grab), d_true(pondered(_424456, _424457)))).
opt_ggp_axiom(neg_effect(step(_424478), jointmove(move)), (d_does(robot, move), \+ gen_negation2_4277(_424478), d_true(step(_424478)))).
opt_ggp_axiom(neg_effect(cell(_424506), jointmove(move)), (d_does(robot, move), \+ gen_negation2_4278(_424506), d_true(cell(_424506)))).
opt_ggp_axiom(neg_effect(pondered(_424535, _424536), jointmove(move)), (d_does(robot, move), d_true(pondered(_424535, _424536)))).
opt_ggp_axiom(pos_effect(step(_424557), jointmove(contemplate(_424563, _424564))), (d_does(robot, contemplate(_424563, _424564)), d_true(step(_424578)), d_succ(_424578, _424557), \+ d_true(step(_424557)))).
opt_ggp_axiom(pos_effect(pondered(_424600, _424601), jointmove(contemplate(_424600, _424601))), (d_does(robot, contemplate(_424600, _424601)), \+ d_true(pondered(_424600, _424601)))).
opt_ggp_axiom(pos_effect(table(_424630), jointmove(u(_424630, _424636))), (d_does(robot, u(_424630, _424636)), \+ d_true(table(_424630)))).
opt_ggp_axiom(pos_effect(clear(_424657), jointmove(u(_424663, _424657))), (d_does(robot, u(_424663, _424657)), \+ d_true(clear(_424657)))).
opt_ggp_axiom(pos_effect(step(_424684), jointmove(u(_424690, _424691))), (d_does(robot, u(_424690, _424691)), d_true(step(_424705)), d_succ(_424705, _424684), \+ d_true(step(_424684)))).
opt_ggp_axiom(pos_effect(on(_424727, _424728), jointmove(s(_424727, _424728))), (d_does(robot, s(_424727, _424728)), \+ d_true(on(_424727, _424728)))).
opt_ggp_axiom(pos_effect(step(_424754), jointmove(s(_424760, _424761))), (d_does(robot, s(_424760, _424761)), d_true(step(_424775)), d_succ(_424775, _424754), \+ d_true(step(_424754)))).
opt_ggp_axiom(pos_effect(step(_424796), jointmove(drop)), (d_does(robot, drop), d_true(step(_424812)), d_succ(_424812, _424796), \+ d_true(step(_424796)))).
opt_ggp_axiom(pos_effect(gold(_424833), jointmove(drop)), (d_does(robot, drop), d_true(cell(_424833)), \+ d_true(gold(_424833)))).
opt_ggp_axiom(pos_effect(step(_424863), jointmove(grab)), (d_does(robot, grab), d_true(step(_424879)), d_succ(_424879, _424863), \+ d_true(step(_424863)))).
opt_ggp_axiom(pos_effect(gold(i), jointmove(grab)), (d_does(robot, grab), d_true(cell(_424915)), d_true(gold(_424915)), \+ d_true(gold(i)))).
opt_ggp_axiom(pos_effect(step(_424937), jointmove(move)), (d_does(robot, move), d_true(step(_424953)), d_succ(_424953, _424937), \+ d_true(step(_424937)))).
opt_ggp_axiom(pos_effect(cell(_424974), jointmove(move)), (d_does(robot, move), d_true(cell(_424990)), d_adjacent(_424990, _424974), \+ d_true(cell(_424974)))).

static_predicate(d_adjacent/2).
static_predicate(d_succ/2).

predicate(P):-static_predicate(P).
