opt_ggp_axiom(d_disc_or_pillar(disc1), true).
opt_ggp_axiom(d_disc_or_pillar(disc2), true).
opt_ggp_axiom(d_disc_or_pillar(disc3), true).
opt_ggp_axiom(d_disc_or_pillar(disc4), true).
opt_ggp_axiom(d_disc_or_pillar(disc5), true).
opt_ggp_axiom(d_disc_or_pillar(pillar1), true).
opt_ggp_axiom(d_disc_or_pillar(pillar2), true).
opt_ggp_axiom(d_disc_or_pillar(pillar3), true).
opt_ggp_axiom(d_goal(player, 100), (d_true(on(_557016, pillar3)), d_disc_or_pillar(_557016), d_true(on(_557030, _557016)), d_disc_or_pillar(_557030), d_true(on(_557044, _557030)), d_disc_or_pillar(_557044), d_true(on(_557058, _557044)), d_disc_or_pillar(_557058), d_true(on(_557072, _557058)), d_disc_or_pillar(_557072), d_true(clear(_557072)))).
opt_ggp_axiom(d_goal(player, 80), (d_true(on(_557098, pillar3)), d_disc_or_pillar(_557098), d_true(on(_557112, _557098)), d_disc_or_pillar(_557112), d_true(on(_557126, _557112)), d_disc_or_pillar(_557126), d_true(on(_557140, _557126)), d_disc_or_pillar(_557140), d_true(clear(_557140)))).
opt_ggp_axiom(d_goal(player, 60), (d_true(on(_557166, pillar3)), d_disc_or_pillar(_557166), d_true(on(_557180, _557166)), d_disc_or_pillar(_557180), d_true(on(_557194, _557180)), d_disc_or_pillar(_557194), d_true(clear(_557194)))).
opt_ggp_axiom(d_goal(player, 40), (d_true(on(_557220, pillar3)), d_disc_or_pillar(_557220), d_true(on(_557234, _557220)), d_disc_or_pillar(_557234), d_true(clear(_557234)))).
opt_ggp_axiom(d_goal(player, 0), (d_tower(pillar3, _557258), d_smaller(_557258, s2))).
opt_ggp_axiom(d_init(on(disc5, pillar1)), true).
opt_ggp_axiom(d_init(on(disc4, disc5)), true).
opt_ggp_axiom(d_init(on(disc3, disc4)), true).
opt_ggp_axiom(d_init(on(disc2, disc3)), true).
opt_ggp_axiom(d_init(on(disc1, disc2)), true).
opt_ggp_axiom(d_init(clear(disc1)), true).
opt_ggp_axiom(d_init(clear(pillar2)), true).
opt_ggp_axiom(d_init(clear(pillar3)), true).
opt_ggp_axiom(d_init(step(s0)), true).
opt_ggp_axiom(d_legal(player, puton(_557359, _557360)), (d_true(clear(_557359)), d_true(clear(_557360)), d_smallerdisc(_557359, _557360))).
opt_ggp_axiom(d_next(step(_557387)), (d_true(step(_557395)), d_successor(_557395, _557387))).
opt_ggp_axiom(d_next(on(_557409, _557410)), d_does(player, puton(_557409, _557410))).
opt_ggp_axiom(d_next(on(_557427, _557428)), (d_true(on(_557427, _557428)), \+ gen_negation1_249(_557427))).
opt_ggp_axiom(d_next(clear(_557450)), (d_true(on(_557459, _557450)), d_does(player, puton(_557459, _557466)))).
opt_ggp_axiom(d_next(clear(_557476)), (d_true(clear(_557476)), \+ gen_negation1_250(_557476))).
opt_ggp_axiom(d_nextsize(disc1, disc2), true).
opt_ggp_axiom(d_nextsize(disc2, disc3), true).
opt_ggp_axiom(d_nextsize(disc3, disc4), true).
opt_ggp_axiom(d_nextsize(disc4, disc5), true).
opt_ggp_axiom(d_nextsize(disc5, pillar1), true).
opt_ggp_axiom(d_nextsize(disc5, pillar2), true).
opt_ggp_axiom(d_nextsize(disc5, pillar3), true).
opt_ggp_axiom(d_role(player), true).
opt_ggp_axiom(d_smaller(s0, s1), true).
opt_ggp_axiom(d_smaller(s1, s2), true).
opt_ggp_axiom(d_smaller(s2, s3), true).
opt_ggp_axiom(d_smaller(s3, s4), true).
opt_ggp_axiom(d_smaller(s4, s5), true).
opt_ggp_axiom(d_smaller(s5, s6), true).
opt_ggp_axiom(d_smaller(s6, s7), true).
opt_ggp_axiom(d_smaller(s7, s8), true).
opt_ggp_axiom(d_smaller(s8, s9), true).
opt_ggp_axiom(d_smaller(s9, s10), true).
opt_ggp_axiom(d_smaller(s10, s11), true).
opt_ggp_axiom(d_smaller(s11, s12), true).
opt_ggp_axiom(d_smaller(s12, s13), true).
opt_ggp_axiom(d_smaller(s13, s14), true).
opt_ggp_axiom(d_smaller(s14, s15), true).
opt_ggp_axiom(d_smaller(s15, s16), true).
opt_ggp_axiom(d_smaller(s16, s17), true).
opt_ggp_axiom(d_smaller(s17, s18), true).
opt_ggp_axiom(d_smaller(s18, s19), true).
opt_ggp_axiom(d_smaller(s19, s20), true).
opt_ggp_axiom(d_smaller(s20, s21), true).
opt_ggp_axiom(d_smaller(s21, s22), true).
opt_ggp_axiom(d_smaller(s22, s23), true).
opt_ggp_axiom(d_smaller(s23, s24), true).
opt_ggp_axiom(d_smaller(s24, s25), true).
opt_ggp_axiom(d_smaller(s25, s26), true).
opt_ggp_axiom(d_smaller(s26, s27), true).
opt_ggp_axiom(d_smaller(s27, s28), true).
opt_ggp_axiom(d_smaller(s28, s29), true).
opt_ggp_axiom(d_smaller(s29, s30), true).
opt_ggp_axiom(d_smaller(s30, s31), true).
opt_ggp_axiom(d_smaller(_557807, _557808), (d_successor(_557807, _557815), d_smaller(_557815, _557808))).
opt_ggp_axiom(d_smallerdisc(disc1, disc2), true).
opt_ggp_axiom(d_smallerdisc(disc2, disc3), true).
opt_ggp_axiom(d_smallerdisc(disc3, disc4), true).
opt_ggp_axiom(d_smallerdisc(disc4, disc5), true).
opt_ggp_axiom(d_smallerdisc(disc5, pillar1), true).
opt_ggp_axiom(d_smallerdisc(disc5, pillar2), true).
opt_ggp_axiom(d_smallerdisc(disc5, pillar3), true).
opt_ggp_axiom(d_smallerdisc(_557883, _557884), (d_nextsize(_557883, _557891), d_smallerdisc(_557891, _557884))).
opt_ggp_axiom(d_successor(s0, s1), true).
opt_ggp_axiom(d_successor(s1, s2), true).
opt_ggp_axiom(d_successor(s2, s3), true).
opt_ggp_axiom(d_successor(s3, s4), true).
opt_ggp_axiom(d_successor(s4, s5), true).
opt_ggp_axiom(d_successor(s5, s6), true).
opt_ggp_axiom(d_successor(s6, s7), true).
opt_ggp_axiom(d_successor(s7, s8), true).
opt_ggp_axiom(d_successor(s8, s9), true).
opt_ggp_axiom(d_successor(s9, s10), true).
opt_ggp_axiom(d_successor(s10, s11), true).
opt_ggp_axiom(d_successor(s11, s12), true).
opt_ggp_axiom(d_successor(s12, s13), true).
opt_ggp_axiom(d_successor(s13, s14), true).
opt_ggp_axiom(d_successor(s14, s15), true).
opt_ggp_axiom(d_successor(s15, s16), true).
opt_ggp_axiom(d_successor(s16, s17), true).
opt_ggp_axiom(d_successor(s17, s18), true).
opt_ggp_axiom(d_successor(s18, s19), true).
opt_ggp_axiom(d_successor(s19, s20), true).
opt_ggp_axiom(d_successor(s20, s21), true).
opt_ggp_axiom(d_successor(s21, s22), true).
opt_ggp_axiom(d_successor(s22, s23), true).
opt_ggp_axiom(d_successor(s23, s24), true).
opt_ggp_axiom(d_successor(s24, s25), true).
opt_ggp_axiom(d_successor(s25, s26), true).
opt_ggp_axiom(d_successor(s26, s27), true).
opt_ggp_axiom(d_successor(s27, s28), true).
opt_ggp_axiom(d_successor(s28, s29), true).
opt_ggp_axiom(d_successor(s29, s30), true).
opt_ggp_axiom(d_successor(s30, s31), true).
opt_ggp_axiom(d_terminal, d_true(step(s31))).
opt_ggp_axiom(d_tower(_558160, s0), d_true(clear(_558160))).
opt_ggp_axiom(d_tower(_558173, _558174), (d_true(on(_558183, _558173)), d_disc_or_pillar(_558183), d_tower(_558183, _558195), d_successor(_558195, _558174))).
opt_ggp_axiom(gen_negation1_249(_558206), d_does(player, puton(_558206, _558213))).
opt_ggp_axiom(gen_negation1_250(_558221), d_does(player, puton(_558228, _558221))).
opt_ggp_axiom(gen_negation2_4304(_558236), (d_true(step(_558244)), d_successor(_558244, _558236))).
opt_ggp_axiom(legal_jointmove(jointmove(puton(_558260, _558261))), (d_true(clear(_558260)), d_true(clear(_558261)), d_smallerdisc(_558260, _558261))).
opt_ggp_axiom(neg_effect(step(_558289), jointmove(puton(_558295, _558296))), (d_does(player, puton(_558295, _558296)), \+ gen_negation2_4304(_558289), d_true(step(_558289)))).
opt_ggp_axiom(neg_effect(clear(_558325), jointmove(puton(_558331, _558325))), (d_does(player, puton(_558331, _558325)), \+ d_true(on(_558331, _558325)))).
opt_ggp_axiom(neg_effect(on(_558359, _558360), jointmove(puton(_558359, _558366))), (d_does(player, puton(_558359, _558366)), _558366 \= _558360, d_true(on(_558359, _558360)))).
opt_ggp_axiom(pos_effect(step(_558394), jointmove(puton(_558400, _558401))), (d_does(player, puton(_558400, _558401)), d_true(step(_558418)), d_successor(_558418, _558394), \+ d_true(step(_558394)))).
opt_ggp_axiom(pos_effect(clear(_558439), jointmove(puton(_558445, _558446))), (d_does(player, puton(_558445, _558446)), d_true(on(_558445, _558439)), \+ d_true(clear(_558439)))).
opt_ggp_axiom(pos_effect(on(_558479, _558480), jointmove(puton(_558479, _558480))), (d_does(player, puton(_558479, _558480)), \+ d_true(on(_558479, _558480)))).

static_predicate(d_successor,2).
