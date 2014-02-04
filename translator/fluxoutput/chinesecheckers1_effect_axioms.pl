:- module(chinesecheckers1_effect_axioms, [
	opt_ggp_axiom/2,
        predicate/1,
        static_predicate/1
	], eclipse_language).
opt_ggp_axiom(d_car(red, a1, b1), true).
opt_ggp_axiom(d_car(red, b1, c3), true).
opt_ggp_axiom(d_car(red, b2, c4), true).
opt_ggp_axiom(d_car(red, c3, d2), true).
opt_ggp_axiom(d_car(red, c4, d3), true).
opt_ggp_axiom(d_car(red, c5, d4), true).
opt_ggp_axiom(d_car(red, d2, e1), true).
opt_ggp_axiom(d_car(red, d3, e2), true).
opt_ggp_axiom(d_car(red, d4, e3), true).
opt_ggp_axiom(d_car(red, d5, e4), true).
opt_ggp_axiom(d_car(red, e2, f2), true).
opt_ggp_axiom(d_car(red, e3, f3), true).
opt_ggp_axiom(d_car(red, e4, f4), true).
opt_ggp_axiom(d_car(red, e5, f5), true).
opt_ggp_axiom(d_car(red, f3, g3), true).
opt_ggp_axiom(d_car(red, f4, g4), true).
opt_ggp_axiom(d_car(red, f5, g5), true).
opt_ggp_axiom(d_car(red, g4, h1), true).
opt_ggp_axiom(d_car(red, g5, h2), true).
opt_ggp_axiom(d_car(red, h2, i1), true).
opt_ggp_axiom(d_cdr(red, a1, b2), true).
opt_ggp_axiom(d_cdr(red, b1, c4), true).
opt_ggp_axiom(d_cdr(red, b2, c5), true).
opt_ggp_axiom(d_cdr(red, c3, d3), true).
opt_ggp_axiom(d_cdr(red, c4, d4), true).
opt_ggp_axiom(d_cdr(red, c5, d5), true).
opt_ggp_axiom(d_cdr(red, d2, e2), true).
opt_ggp_axiom(d_cdr(red, d3, e3), true).
opt_ggp_axiom(d_cdr(red, d4, e4), true).
opt_ggp_axiom(d_cdr(red, d5, e5), true).
opt_ggp_axiom(d_cdr(red, e1, f2), true).
opt_ggp_axiom(d_cdr(red, e2, f3), true).
opt_ggp_axiom(d_cdr(red, e3, f4), true).
opt_ggp_axiom(d_cdr(red, e4, f5), true).
opt_ggp_axiom(d_cdr(red, f2, g3), true).
opt_ggp_axiom(d_cdr(red, f3, g4), true).
opt_ggp_axiom(d_cdr(red, f4, g5), true).
opt_ggp_axiom(d_cdr(red, g3, h1), true).
opt_ggp_axiom(d_cdr(red, g4, h2), true).
opt_ggp_axiom(d_cdr(red, h1, i1), true).
opt_ggp_axiom(d_goal(red, 100), (d_true(cell(h1, red)), d_true(cell(h2, red)), d_true(cell(i1, red)))).
opt_ggp_axiom(d_goal(red, 50), (d_true(cell(h1, red)), d_true(cell(h2, red)), d_true(cell(i1, blank)))).
opt_ggp_axiom(d_goal(red, 50), (d_true(cell(h1, red)), d_true(cell(h2, blank)), d_true(cell(i1, red)))).
opt_ggp_axiom(d_goal(red, 50), (d_true(cell(h1, blank)), d_true(cell(h2, red)), d_true(cell(i1, red)))).
opt_ggp_axiom(d_goal(red, 25), (d_true(cell(h1, red)), d_true(cell(h2, blank)), d_true(cell(i1, blank)))).
opt_ggp_axiom(d_goal(red, 25), (d_true(cell(h1, blank)), d_true(cell(h2, red)), d_true(cell(i1, blank)))).
opt_ggp_axiom(d_goal(red, 25), (d_true(cell(h1, blank)), d_true(cell(h2, blank)), d_true(cell(i1, red)))).
opt_ggp_axiom(d_goal(red, 0), (d_true(cell(h1, blank)), d_true(cell(h2, blank)), d_true(cell(i1, blank)))).
opt_ggp_axiom(d_init(cell(a1, red)), true).
opt_ggp_axiom(d_init(cell(b1, red)), true).
opt_ggp_axiom(d_init(cell(b2, red)), true).
opt_ggp_axiom(d_init(cell(c1, blank)), true).
opt_ggp_axiom(d_init(cell(c2, blank)), true).
opt_ggp_axiom(d_init(cell(c3, blank)), true).
opt_ggp_axiom(d_init(cell(c4, blank)), true).
opt_ggp_axiom(d_init(cell(c5, blank)), true).
opt_ggp_axiom(d_init(cell(c6, blank)), true).
opt_ggp_axiom(d_init(cell(c7, blank)), true).
opt_ggp_axiom(d_init(cell(d1, blank)), true).
opt_ggp_axiom(d_init(cell(d2, blank)), true).
opt_ggp_axiom(d_init(cell(d3, blank)), true).
opt_ggp_axiom(d_init(cell(d4, blank)), true).
opt_ggp_axiom(d_init(cell(d5, blank)), true).
opt_ggp_axiom(d_init(cell(d6, blank)), true).
opt_ggp_axiom(d_init(cell(e1, blank)), true).
opt_ggp_axiom(d_init(cell(e2, blank)), true).
opt_ggp_axiom(d_init(cell(e3, blank)), true).
opt_ggp_axiom(d_init(cell(e4, blank)), true).
opt_ggp_axiom(d_init(cell(e5, blank)), true).
opt_ggp_axiom(d_init(cell(f1, blank)), true).
opt_ggp_axiom(d_init(cell(f2, blank)), true).
opt_ggp_axiom(d_init(cell(f3, blank)), true).
opt_ggp_axiom(d_init(cell(f4, blank)), true).
opt_ggp_axiom(d_init(cell(f5, blank)), true).
opt_ggp_axiom(d_init(cell(f6, blank)), true).
opt_ggp_axiom(d_init(cell(g1, blank)), true).
opt_ggp_axiom(d_init(cell(g2, blank)), true).
opt_ggp_axiom(d_init(cell(g3, blank)), true).
opt_ggp_axiom(d_init(cell(g4, blank)), true).
opt_ggp_axiom(d_init(cell(g5, blank)), true).
opt_ggp_axiom(d_init(cell(g6, blank)), true).
opt_ggp_axiom(d_init(cell(g7, blank)), true).
opt_ggp_axiom(d_init(cell(h1, blank)), true).
opt_ggp_axiom(d_init(cell(h2, blank)), true).
opt_ggp_axiom(d_init(cell(i1, blank)), true).
opt_ggp_axiom(d_init(step(1)), true).
opt_ggp_axiom(d_legal(_523177, move(_523181, _523182)), (d_true(cell(_523181, _523177)), d_car(_523177, _523181, _523198), d_true(cell(_523198, _523207)), _523207 \= blank, d_car(_523177, _523198, _523221), d_true(cell(_523221, blank)), d_car(_523177, _523221, _523237), d_true(cell(_523237, _523246)), _523246 \= blank, d_car(_523177, _523237, _523182), d_true(cell(_523182, blank)))).
opt_ggp_axiom(d_legal(_523273, move(_523277, _523278)), (d_true(cell(_523277, _523273)), d_car(_523273, _523277, _523294), d_true(cell(_523294, _523303)), _523303 \= blank, d_car(_523273, _523294, _523317), d_true(cell(_523317, blank)), d_cdr(_523273, _523317, _523333), d_true(cell(_523333, _523342)), _523342 \= blank, d_cdr(_523273, _523333, _523278), d_true(cell(_523278, blank)))).
opt_ggp_axiom(d_legal(_523369, move(_523373, _523374)), (d_true(cell(_523373, _523369)), d_cdr(_523369, _523373, _523390), d_true(cell(_523390, _523399)), _523399 \= blank, d_cdr(_523369, _523390, _523413), d_true(cell(_523413, blank)), d_car(_523369, _523413, _523429), d_true(cell(_523429, _523438)), _523438 \= blank, d_car(_523369, _523429, _523374), d_true(cell(_523374, blank)))).
opt_ggp_axiom(d_legal(_523465, move(_523469, _523470)), (d_true(cell(_523469, _523465)), d_cdr(_523465, _523469, _523486), d_true(cell(_523486, _523495)), _523495 \= blank, d_cdr(_523465, _523486, _523509), d_true(cell(_523509, blank)), d_cdr(_523465, _523509, _523525), d_true(cell(_523525, _523534)), _523534 \= blank, d_cdr(_523465, _523525, _523470), d_true(cell(_523470, blank)))).
opt_ggp_axiom(d_legal(_523561, move(_523565, _523566)), (d_true(cell(_523565, _523561)), d_car(_523561, _523565, _523582), d_true(cell(_523582, _523591)), _523591 \= blank, d_car(_523561, _523582, _523566), d_true(cell(_523566, blank)))).
opt_ggp_axiom(d_legal(_523618, move(_523622, _523623)), (d_true(cell(_523622, _523618)), d_cdr(_523618, _523622, _523639), d_true(cell(_523639, _523648)), _523648 \= blank, d_cdr(_523618, _523639, _523623), d_true(cell(_523623, blank)))).
opt_ggp_axiom(d_legal(_523675, move(_523679, _523680)), (d_true(cell(_523679, _523675)), d_car(_523675, _523679, _523680), d_true(cell(_523680, blank)))).
opt_ggp_axiom(d_legal(_523709, move(_523713, _523714)), (d_true(cell(_523713, _523709)), d_cdr(_523709, _523713, _523714), d_true(cell(_523714, blank)))).
opt_ggp_axiom(d_legal(red, noop), true).
opt_ggp_axiom(d_next(cell(_523751, _523752)), d_does(_523752, move(_523757, _523751))).
opt_ggp_axiom(d_next(cell(_523767, blank)), d_does(_523770, move(_523767, _523774))).
opt_ggp_axiom(d_next(cell(_523783, _523784)), (d_true(cell(_523783, _523784)), d_does(_523797, move(_523800, _523801)), _523783 \= _523800, _523783 \= _523801)).
opt_ggp_axiom(d_next(cell(_523819, _523820)), (d_true(cell(_523819, _523820)), d_does(red, noop))).
opt_ggp_axiom(d_next(step(_523840)), (d_true(step(_523847)), d_succ(_523847, _523840))).
opt_ggp_axiom(d_role(red), true).
opt_ggp_axiom(d_succ(1, 2), true).
opt_ggp_axiom(d_succ(2, 3), true).
opt_ggp_axiom(d_succ(3, 4), true).
opt_ggp_axiom(d_succ(4, 5), true).
opt_ggp_axiom(d_succ(5, 6), true).
opt_ggp_axiom(d_succ(6, 7), true).
opt_ggp_axiom(d_succ(7, 8), true).
opt_ggp_axiom(d_succ(8, 9), true).
opt_ggp_axiom(d_succ(9, 10), true).
opt_ggp_axiom(d_succ(10, 11), true).
opt_ggp_axiom(d_succ(11, 12), true).
opt_ggp_axiom(d_succ(12, 13), true).
opt_ggp_axiom(d_succ(13, 14), true).
opt_ggp_axiom(d_succ(14, 15), true).
opt_ggp_axiom(d_succ(15, 16), true).
opt_ggp_axiom(d_succ(16, 17), true).
opt_ggp_axiom(d_succ(17, 18), true).
opt_ggp_axiom(d_succ(18, 19), true).
opt_ggp_axiom(d_succ(19, 20), true).
opt_ggp_axiom(d_succ(20, 21), true).
opt_ggp_axiom(d_succ(21, 22), true).
opt_ggp_axiom(d_succ(22, 23), true).
opt_ggp_axiom(d_succ(23, 24), true).
opt_ggp_axiom(d_succ(24, 25), true).
opt_ggp_axiom(d_succ(25, 26), true).
opt_ggp_axiom(d_succ(26, 27), true).
opt_ggp_axiom(d_succ(27, 28), true).
opt_ggp_axiom(d_succ(28, 29), true).
opt_ggp_axiom(d_succ(29, 30), true).
opt_ggp_axiom(d_succ(30, 31), true).
opt_ggp_axiom(d_succ(31, 32), true).
opt_ggp_axiom(d_succ(32, 33), true).
opt_ggp_axiom(d_succ(33, 34), true).
opt_ggp_axiom(d_succ(34, 35), true).
opt_ggp_axiom(d_succ(35, 36), true).
opt_ggp_axiom(d_succ(36, 37), true).
opt_ggp_axiom(d_succ(37, 38), true).
opt_ggp_axiom(d_succ(38, 39), true).
opt_ggp_axiom(d_succ(39, 40), true).
opt_ggp_axiom(d_terminal, d_true(step(40))).
opt_ggp_axiom(d_terminal, (d_true(cell(h1, red)), d_true(cell(h2, red)), d_true(cell(i1, red)))).
opt_ggp_axiom(gen_disjunction_con_1(_524214, _524215, _524215), true).
opt_ggp_axiom(gen_disjunction_con_1(_524225, _524226, _524225), true).
opt_ggp_axiom(gen_negation2_3(_524234), (d_true(step(_524242)), d_succ(_524242, _524234))).
opt_ggp_axiom(gen_negation2_4(_524253), (d_true(step(_524261)), d_succ(_524261, _524253))).
opt_ggp_axiom(legal_jointmove(jointmove(noop)), true).
opt_ggp_axiom(legal_jointmove(jointmove(move(_524286, _524287))), (d_true(cell(_524286, red)), d_car(red, _524286, _524303), d_true(cell(_524303, _524312)), _524312 \= blank, d_car(red, _524303, _524326), d_true(cell(_524326, blank)), d_car(red, _524326, _524342), d_true(cell(_524342, _524351)), _524351 \= blank, d_car(red, _524342, _524287), d_true(cell(_524287, blank)))).
opt_ggp_axiom(legal_jointmove(jointmove(move(_524382, _524383))), (d_true(cell(_524382, red)), d_car(red, _524382, _524399), d_true(cell(_524399, _524408)), _524408 \= blank, d_car(red, _524399, _524422), d_true(cell(_524422, blank)), d_cdr(red, _524422, _524438), d_true(cell(_524438, _524447)), _524447 \= blank, d_cdr(red, _524438, _524383), d_true(cell(_524383, blank)))).
opt_ggp_axiom(legal_jointmove(jointmove(move(_524478, _524479))), (d_true(cell(_524478, red)), d_cdr(red, _524478, _524495), d_true(cell(_524495, _524504)), _524504 \= blank, d_cdr(red, _524495, _524518), d_true(cell(_524518, blank)), d_car(red, _524518, _524534), d_true(cell(_524534, _524543)), _524543 \= blank, d_car(red, _524534, _524479), d_true(cell(_524479, blank)))).
opt_ggp_axiom(legal_jointmove(jointmove(move(_524574, _524575))), (d_true(cell(_524574, red)), d_cdr(red, _524574, _524591), d_true(cell(_524591, _524600)), _524600 \= blank, d_cdr(red, _524591, _524614), d_true(cell(_524614, blank)), d_cdr(red, _524614, _524630), d_true(cell(_524630, _524639)), _524639 \= blank, d_cdr(red, _524630, _524575), d_true(cell(_524575, blank)))).
opt_ggp_axiom(legal_jointmove(jointmove(move(_524670, _524671))), (d_true(cell(_524670, red)), d_car(red, _524670, _524687), d_true(cell(_524687, _524696)), _524696 \= blank, d_car(red, _524687, _524671), d_true(cell(_524671, blank)))).
opt_ggp_axiom(legal_jointmove(jointmove(move(_524727, _524728))), (d_true(cell(_524727, red)), d_cdr(red, _524727, _524744), d_true(cell(_524744, _524753)), _524753 \= blank, d_cdr(red, _524744, _524728), d_true(cell(_524728, blank)))).
opt_ggp_axiom(legal_jointmove(jointmove(move(_524784, _524785))), (d_true(cell(_524784, red)), d_car(red, _524784, _524785), d_true(cell(_524785, blank)))).
opt_ggp_axiom(legal_jointmove(jointmove(move(_524818, _524819))), (d_true(cell(_524818, red)), d_cdr(red, _524818, _524819), d_true(cell(_524819, blank)))).
opt_ggp_axiom(neg_effect(step(_524850), jointmove(noop)), \+ gen_negation2_3(_524850)).
opt_ggp_axiom(neg_effect(step(_524867), jointmove(move(_524873, _524874))), \+ gen_negation2_4(_524867)).
opt_ggp_axiom(neg_effect(cell(_524890, _524891), jointmove(move(_524897, _524898))), (match(_524891, _524898) \= match(red, _524890), match(_524891, _524897) \= match(blank, _524890), gen_disjunction_con_1(_524898, _524897, _524890))).
opt_ggp_axiom(pos_effect(step(_524937), jointmove(noop)), (d_true(step(_524947)), d_succ(_524947, _524937))).
opt_ggp_axiom(pos_effect(step(_524961), jointmove(move(_524967, _524968))), (d_true(step(_524976)), d_succ(_524976, _524961))).
opt_ggp_axiom(pos_effect(cell(_524991, red), jointmove(move(_524997, _524991))), true).
opt_ggp_axiom(pos_effect(cell(_525009, blank), jointmove(move(_525009, _525015))), true).

static_predicate(d_succ/2).
static_predicate(d_car/3).


predicate(Name/Arity):-static_predicate(Name/Arity).


