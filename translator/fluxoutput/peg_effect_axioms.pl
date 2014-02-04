:- module(peg_effect_axioms, [
	opt_ggp_axiom/2,
        predicate/1,
        static_predicate/1
	], eclipse_language).
opt_ggp_axiom(d_column(c1), true).
opt_ggp_axiom(d_column(c2), true).
opt_ggp_axiom(d_column(c3), true).
opt_ggp_axiom(d_column(c4), true).
opt_ggp_axiom(d_column(c5), true).
opt_ggp_axiom(d_column(c6), true).
opt_ggp_axiom(d_column(c7), true).
opt_ggp_axiom(d_goal(jumper, 100), (d_true(hole(d, c4, peg)), d_true(pegs(s1)))).
opt_ggp_axiom(d_goal(jumper, 99), (d_true(hole(_544346, _544347, empty)), d_true(pegs(s1)), _544346 \= d)).
opt_ggp_axiom(d_goal(jumper, 99), (d_true(hole(_544375, _544376, empty)), d_true(pegs(s1)), _544376 \= c4)).
opt_ggp_axiom(d_goal(jumper, 90), d_true(pegs(s2))).
opt_ggp_axiom(d_goal(jumper, 80), d_true(pegs(s3))).
opt_ggp_axiom(d_goal(jumper, 70), d_true(pegs(s4))).
opt_ggp_axiom(d_goal(jumper, 60), d_true(pegs(s5))).
opt_ggp_axiom(d_goal(jumper, 50), d_true(pegs(s6))).
opt_ggp_axiom(d_goal(jumper, 40), d_true(pegs(s7))).
opt_ggp_axiom(d_goal(jumper, 30), d_true(pegs(s8))).
opt_ggp_axiom(d_goal(jumper, 20), d_true(pegs(s9))).
opt_ggp_axiom(d_goal(jumper, 10), d_true(pegs(s10))).
opt_ggp_axiom(d_goal(jumper, 0), (d_true(pegs(_544510)), _544510 \= s10, _544510 \= s9, _544510 \= s8, _544510 \= s7, _544510 \= s6, _544510 \= s5, _544510 \= s4, _544510 \= s3, _544510 \= s2, _544510 \= s1)).
opt_ggp_axiom(d_init(hole(a, c3, peg)), true).
opt_ggp_axiom(d_init(hole(a, c4, peg)), true).
opt_ggp_axiom(d_init(hole(a, c5, peg)), true).
opt_ggp_axiom(d_init(hole(b, c3, peg)), true).
opt_ggp_axiom(d_init(hole(b, c4, peg)), true).
opt_ggp_axiom(d_init(hole(b, c5, peg)), true).
opt_ggp_axiom(d_init(hole(c, c1, peg)), true).
opt_ggp_axiom(d_init(hole(c, c2, peg)), true).
opt_ggp_axiom(d_init(hole(c, c3, peg)), true).
opt_ggp_axiom(d_init(hole(c, c4, peg)), true).
opt_ggp_axiom(d_init(hole(c, c5, peg)), true).
opt_ggp_axiom(d_init(hole(c, c6, peg)), true).
opt_ggp_axiom(d_init(hole(c, c7, peg)), true).
opt_ggp_axiom(d_init(hole(d, c1, peg)), true).
opt_ggp_axiom(d_init(hole(d, c2, peg)), true).
opt_ggp_axiom(d_init(hole(d, c3, peg)), true).
opt_ggp_axiom(d_init(hole(d, c4, empty)), true).
opt_ggp_axiom(d_init(hole(d, c5, peg)), true).
opt_ggp_axiom(d_init(hole(d, c6, peg)), true).
opt_ggp_axiom(d_init(hole(d, c7, peg)), true).
opt_ggp_axiom(d_init(hole(e, c1, peg)), true).
opt_ggp_axiom(d_init(hole(e, c2, peg)), true).
opt_ggp_axiom(d_init(hole(e, c3, peg)), true).
opt_ggp_axiom(d_init(hole(e, c4, peg)), true).
opt_ggp_axiom(d_init(hole(e, c5, peg)), true).
opt_ggp_axiom(d_init(hole(e, c6, peg)), true).
opt_ggp_axiom(d_init(hole(e, c7, peg)), true).
opt_ggp_axiom(d_init(hole(f, c3, peg)), true).
opt_ggp_axiom(d_init(hole(f, c4, peg)), true).
opt_ggp_axiom(d_init(hole(f, c5, peg)), true).
opt_ggp_axiom(d_init(hole(g, c3, peg)), true).
opt_ggp_axiom(d_init(hole(g, c4, peg)), true).
opt_ggp_axiom(d_init(hole(g, c5, peg)), true).
opt_ggp_axiom(d_init(pegs(s32)), true).
opt_ggp_axiom(d_legal(jumper, jump(_544953, _544954, _544955, _544956)), (d_true(hole(_544953, _544954, peg)), d_true(hole(_544955, _544956, empty)), d_middle(_544953, _544954, _544985, _544986, _544955, _544956), d_true(hole(_544985, _544986, peg)))).
opt_ggp_axiom(d_middle(_545005, _545006, _545005, _545007, _545005, _545008), (d_pc(_545006, _545007), d_nc(_545008, _545007), d_row(_545005))).
opt_ggp_axiom(d_middle(_545035, _545036, _545035, _545037, _545035, _545038), (d_nc(_545036, _545037), d_pc(_545038, _545037), d_row(_545035))).
opt_ggp_axiom(d_middle(_545065, _545066, _545067, _545066, _545068, _545066), (d_pr(_545065, _545067), d_nr(_545068, _545067), d_column(_545066))).
opt_ggp_axiom(d_middle(_545095, _545096, _545097, _545096, _545098, _545096), (d_nr(_545095, _545097), d_pr(_545098, _545097), d_column(_545096))).
opt_ggp_axiom(d_nc(c1, c2), true).
opt_ggp_axiom(d_nc(c2, c3), true).
opt_ggp_axiom(d_nc(c3, c4), true).
opt_ggp_axiom(d_nc(c4, c5), true).
opt_ggp_axiom(d_nc(c5, c6), true).
opt_ggp_axiom(d_nc(c6, c7), true).
opt_ggp_axiom(d_next(pegs(_545170)), (d_does(jumper, jump(_545182, _545183, _545184, _545185)), d_true(pegs(_545193)), d_succ(_545170, _545193))).
opt_ggp_axiom(d_next(hole(_545208, _545209, empty)), d_does(jumper, jump(_545208, _545209, _545218, _545219))).
opt_ggp_axiom(d_next(hole(_545231, _545232, empty)), (d_does(jumper, jump(_545244, _545245, _545246, _545247)), d_middle(_545244, _545245, _545231, _545232, _545246, _545247))).
opt_ggp_axiom(d_next(hole(_545266, _545267, peg)), d_does(jumper, jump(_545276, _545277, _545266, _545267))).
opt_ggp_axiom(d_next(hole(_545289, _545287, empty)), (d_does(jumper, jump(_545301, _545302, _545303, _545304)), d_true(hole(_545289, _545287, empty)), _545289 \= _545303)).
opt_ggp_axiom(d_next(hole(_545325, _545328, empty)), (d_does(jumper, jump(_545340, _545341, _545342, _545343)), d_true(hole(_545325, _545328, empty)), _545328 \= _545343)).
opt_ggp_axiom(d_next(hole(_545367, _545365, peg)), (d_does(jumper, jump(_545379, _545380, _545381, _545382)), d_true(hole(_545367, _545365, peg)), _545367 \= _545379, d_middle(_545379, _545380, _545408, _545409, _545381, _545382), _545367 \= _545408)).
opt_ggp_axiom(d_next(hole(_545421, _545424, peg)), (d_does(jumper, jump(_545436, _545437, _545438, _545439)), d_true(hole(_545421, _545424, peg)), _545424 \= _545437, d_middle(_545436, _545437, _545465, _545466, _545438, _545439), _545424 \= _545466)).
opt_ggp_axiom(d_nr(a, b), true).
opt_ggp_axiom(d_nr(b, c), true).
opt_ggp_axiom(d_nr(c, d), true).
opt_ggp_axiom(d_nr(d, e), true).
opt_ggp_axiom(d_nr(e, f), true).
opt_ggp_axiom(d_nr(f, g), true).
opt_ggp_axiom(d_pc(c2, c1), true).
opt_ggp_axiom(d_pc(c3, c2), true).
opt_ggp_axiom(d_pc(c4, c3), true).
opt_ggp_axiom(d_pc(c5, c4), true).
opt_ggp_axiom(d_pc(c6, c5), true).
opt_ggp_axiom(d_pc(c7, c6), true).
opt_ggp_axiom(d_pr(b, a), true).
opt_ggp_axiom(d_pr(c, b), true).
opt_ggp_axiom(d_pr(d, c), true).
opt_ggp_axiom(d_pr(e, d), true).
opt_ggp_axiom(d_pr(f, e), true).
opt_ggp_axiom(d_pr(g, f), true).
opt_ggp_axiom(d_role(jumper), true).
opt_ggp_axiom(d_row(a), true).
opt_ggp_axiom(d_row(b), true).
opt_ggp_axiom(d_row(c), true).
opt_ggp_axiom(d_row(d), true).
opt_ggp_axiom(d_row(e), true).
opt_ggp_axiom(d_row(f), true).
opt_ggp_axiom(d_row(g), true).
opt_ggp_axiom(d_succ(s1, s2), true).
opt_ggp_axiom(d_succ(s2, s3), true).
opt_ggp_axiom(d_succ(s3, s4), true).
opt_ggp_axiom(d_succ(s4, s5), true).
opt_ggp_axiom(d_succ(s5, s6), true).
opt_ggp_axiom(d_succ(s6, s7), true).
opt_ggp_axiom(d_succ(s7, s8), true).
opt_ggp_axiom(d_succ(s8, s9), true).
opt_ggp_axiom(d_succ(s9, s10), true).
opt_ggp_axiom(d_succ(s10, s11), true).
opt_ggp_axiom(d_succ(s11, s12), true).
opt_ggp_axiom(d_succ(s12, s13), true).
opt_ggp_axiom(d_succ(s13, s14), true).
opt_ggp_axiom(d_succ(s14, s15), true).
opt_ggp_axiom(d_succ(s15, s16), true).
opt_ggp_axiom(d_succ(s16, s17), true).
opt_ggp_axiom(d_succ(s17, s18), true).
opt_ggp_axiom(d_succ(s18, s19), true).
opt_ggp_axiom(d_succ(s19, s20), true).
opt_ggp_axiom(d_succ(s20, s21), true).
opt_ggp_axiom(d_succ(s21, s22), true).
opt_ggp_axiom(d_succ(s22, s23), true).
opt_ggp_axiom(d_succ(s23, s24), true).
opt_ggp_axiom(d_succ(s24, s25), true).
opt_ggp_axiom(d_succ(s25, s26), true).
opt_ggp_axiom(d_succ(s26, s27), true).
opt_ggp_axiom(d_succ(s27, s28), true).
opt_ggp_axiom(d_succ(s28, s29), true).
opt_ggp_axiom(d_succ(s29, s30), true).
opt_ggp_axiom(d_succ(s30, s31), true).
opt_ggp_axiom(d_succ(s31, s32), true).
opt_ggp_axiom(d_terminal, \+ gen_negation2_4297).
opt_ggp_axiom(gen_call_64149(_545938, _545939, empty, _545940, _545941, _545939, _545938), true).
opt_ggp_axiom(gen_call_64149(_545955, _545956, empty, _545957, _545955, _545958, _545955), (d_pc(_545958, _545956), d_nc(_545957, _545956), d_row(_545955))).
opt_ggp_axiom(gen_call_64149(_545986, _545987, empty, _545988, _545986, _545989, _545986), (d_nc(_545989, _545987), d_pc(_545988, _545987), d_row(_545986))).
opt_ggp_axiom(gen_call_64149(_546017, _546018, empty, _546018, _546019, _546018, _546020), (d_pr(_546020, _546017), d_nr(_546019, _546017), d_column(_546018))).
opt_ggp_axiom(gen_call_64149(_546048, _546049, empty, _546049, _546050, _546049, _546051), (d_nr(_546051, _546048), d_pr(_546050, _546048), d_column(_546049))).
opt_ggp_axiom(gen_call_64149(_546079, _546080, peg, _546080, _546079, _546081, _546082), true).
opt_ggp_axiom(gen_call_64692(_546096, _546097, _546098, _546097, empty, _546099, _546097), (d_pc(_546098, _546099), d_nc(_546096, _546099), d_row(_546097))).
opt_ggp_axiom(gen_call_64692(_546127, _546128, _546129, _546128, empty, _546130, _546128), (d_nc(_546129, _546130), d_pc(_546127, _546130), d_row(_546128))).
opt_ggp_axiom(gen_call_64692(_546158, _546159, _546158, _546160, empty, _546158, _546161), (d_pr(_546160, _546161), d_nr(_546159, _546161), d_column(_546158))).
opt_ggp_axiom(gen_call_64692(_546189, _546190, _546189, _546191, empty, _546189, _546192), (d_nr(_546191, _546192), d_pr(_546190, _546192), d_column(_546189))).
opt_ggp_axiom(gen_negation2_4297, (d_true(hole(_546221, _546222, peg)), d_middle(_546221, _546222, _546233, _546234, _546235, _546236), d_true(hole(_546235, _546236, empty)), d_true(hole(_546233, _546234, peg)))).
opt_ggp_axiom(gen_negation2_4298(_546259), (d_true(pegs(_546267)), d_succ(_546259, _546267))).
opt_ggp_axiom(gen_negation_521(_546284, _546285, empty, _546286, _546287, _546288, _546289), gen_call_64692(_546289, _546288, _546287, _546286, empty, _546285, _546284)).
opt_ggp_axiom(gen_negation_522(_546307, empty, _546308), _546307 \= _546308).
opt_ggp_axiom(gen_negation_523(_546321, empty, _546322), _546321 \= _546322).
opt_ggp_axiom(gen_negation_524(_546338, peg, _546339, _546340, _546341, _546342), (_546338 \= _546339, d_middle(_546339, _546340, _546359, _546360, _546341, _546342), _546338 \= _546359)).
opt_ggp_axiom(gen_negation_525(_546376, peg, _546377, _546378, _546379, _546380), (_546376 \= _546378, d_middle(_546377, _546378, _546397, _546398, _546379, _546380), _546376 \= _546398)).
opt_ggp_axiom(legal_jointmove(jointmove(jump(_546416, _546417, _546418, _546419))), (d_true(hole(_546416, _546417, peg)), d_true(hole(_546418, _546419, empty)), d_middle(_546416, _546417, _546448, _546449, _546418, _546419), d_true(hole(_546448, _546449, peg)))).
opt_ggp_axiom(neg_effect(pegs(_546466), jointmove(jump(_546474, _546475, _546476, _546477))), (d_does(jumper, jump(_546474, _546475, _546476, _546477)), \+ gen_negation2_4298(_546466), d_true(pegs(_546466)))).
opt_ggp_axiom(neg_effect(hole(_546510, _546511, _546512), jointmove(jump(_546520, _546521, _546522, _546523))), (d_does(jumper, jump(_546520, _546521, _546522, _546523)), match(_546512, _546521, _546520) \= match(empty, _546511, _546510), \+ gen_negation_521(_546510, _546511, _546512, _546520, _546521, _546522, _546523), match(_546512, _546523, _546522) \= match(peg, _546511, _546510), \+ gen_negation_522(_546510, _546512, _546522), \+ gen_negation_523(_546511, _546512, _546523), \+ gen_negation_524(_546510, _546512, _546520, _546521, _546522, _546523), \+ gen_negation_525(_546511, _546512, _546520, _546521, _546522, _546523), d_true(hole(_546510, _546511, _546512)))).
opt_ggp_axiom(pos_effect(pegs(_546630), jointmove(jump(_546638, _546639, _546640, _546641))), (d_does(jumper, jump(_546638, _546639, _546640, _546641)), d_true(pegs(_546660)), d_succ(_546630, _546660), \+ d_true(pegs(_546630)))).
opt_ggp_axiom(pos_effect(hole(_546683, _546684, _546685), jointmove(jump(_546693, _546694, _546695, _546696))), (d_does(jumper, jump(_546693, _546694, _546695, _546696)), gen_call_64149(_546683, _546684, _546685, _546696, _546695, _546694, _546693), \+ d_true(hole(_546683, _546684, _546685)))).


static_predicate(d_nc/2).
static_predicate(d_pc/2).
static_predicate(d_column/1).
static_predicate(d_nr/2).
static_predicate(d_pr/2).
static_predicate(d_row/1).
static_predicate(d_succ/2).

predicate(Name/Arity):-static_predicate(Name/Arity).

predicate(d_middle/6).
