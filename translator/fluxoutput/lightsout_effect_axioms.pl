:- module(lightsout_effect_axioms, [
	opt_ggp_axiom/2,
        predicate/1,
        static_predicate/1,
        action/1
	], eclipse_language).
opt_ggp_axiom(d_adj(1, 2), true).
opt_ggp_axiom(d_adj(2, 3), true).
opt_ggp_axiom(d_adj(3, 4), true).
opt_ggp_axiom(d_adj(4, 5), true).
opt_ggp_axiom(d_affected(_201938, _201939), d_does(player, switch(_201938, _201939))).
opt_ggp_axiom(d_affected(_201952, _201953), (d_does(player, switch(_201961, _201953)), d_adj(_201961, _201952))).
opt_ggp_axiom(d_affected(_201972, _201973), (d_does(player, switch(_201981, _201973)), d_adj(_201972, _201981))).
opt_ggp_axiom(d_affected(_201992, _201993), (d_does(player, switch(_201992, _202002)), d_adj(_202002, _201993))).
opt_ggp_axiom(d_affected(_202012, _202013), (d_does(player, switch(_202012, _202022)), d_adj(_202013, _202022))).
opt_ggp_axiom(d_coord(1), true).
opt_ggp_axiom(d_coord(2), true).
opt_ggp_axiom(d_coord(3), true).
opt_ggp_axiom(d_coord(4), true).
opt_ggp_axiom(d_coord(5), true).
opt_ggp_axiom(d_goal(player, 100), \+ gen_negation2_85).
opt_ggp_axiom(d_goal(player, 0), (d_coord(_202084), d_coord(_202090), d_true(cell(_202084, _202090, light)))).
opt_ggp_axiom(d_init(step(0)), true).
opt_ggp_axiom(d_init(cell(1, 1, nolight)), true).
opt_ggp_axiom(d_init(cell(1, 2, nolight)), true).
opt_ggp_axiom(d_init(cell(1, 3, light)), true).
opt_ggp_axiom(d_init(cell(1, 4, nolight)), true).
opt_ggp_axiom(d_init(cell(1, 5, nolight)), true).
opt_ggp_axiom(d_init(cell(2, 1, light)), true).
opt_ggp_axiom(d_init(cell(2, 2, nolight)), true).
opt_ggp_axiom(d_init(cell(2, 3, nolight)), true).
opt_ggp_axiom(d_init(cell(2, 4, light)), true).
opt_ggp_axiom(d_init(cell(2, 5, light)), true).
opt_ggp_axiom(d_init(cell(3, 1, nolight)), true).
opt_ggp_axiom(d_init(cell(3, 2, light)), true).
opt_ggp_axiom(d_init(cell(3, 3, nolight)), true).
opt_ggp_axiom(d_init(cell(3, 4, light)), true).
opt_ggp_axiom(d_init(cell(3, 5, nolight)), true).
opt_ggp_axiom(d_init(cell(4, 1, nolight)), true).
opt_ggp_axiom(d_init(cell(4, 2, nolight)), true).
opt_ggp_axiom(d_init(cell(4, 3, light)), true).
opt_ggp_axiom(d_init(cell(4, 4, light)), true).
opt_ggp_axiom(d_init(cell(4, 5, light)), true).
opt_ggp_axiom(d_init(cell(5, 1, nolight)), true).
opt_ggp_axiom(d_init(cell(5, 2, nolight)), true).
opt_ggp_axiom(d_init(cell(5, 3, light)), true).
opt_ggp_axiom(d_init(cell(5, 4, nolight)), true).
opt_ggp_axiom(d_init(cell(5, 5, nolight)), true).
opt_ggp_axiom(d_legal(player, switch(_202392, _202393)), (d_coord(_202392), d_coord(_202393))).
opt_ggp_axiom(d_next(cell(_202412, _202413, light)), (d_true(cell(_202412, _202413, nolight)), d_affected(_202412, _202413))).
opt_ggp_axiom(d_next(cell(_202437, _202438, nolight)), (d_true(cell(_202437, _202438, light)), d_affected(_202437, _202438))).
opt_ggp_axiom(d_next(cell(_202462, _202463, _202464)), (d_true(cell(_202462, _202463, _202464)), \+ d_does(player, switch(_202462, _202463)), \+ gen_negation2_81(_202462, _202463), \+ gen_negation2_82(_202462, _202463), \+ gen_negation2_83(_202463, _202462), \+ gen_negation2_84(_202463, _202462))).
opt_ggp_axiom(d_next(step(_202523)), (d_true(step(_202531)), d_nextstep(_202531, _202523))).
opt_ggp_axiom(d_nextstep(0, 1), true).
opt_ggp_axiom(d_nextstep(1, 2), true).
opt_ggp_axiom(d_nextstep(2, 3), true).
opt_ggp_axiom(d_nextstep(3, 4), true).
opt_ggp_axiom(d_nextstep(4, 5), true).
opt_ggp_axiom(d_nextstep(5, 6), true).
opt_ggp_axiom(d_nextstep(6, 7), true).
opt_ggp_axiom(d_nextstep(7, 8), true).
opt_ggp_axiom(d_nextstep(8, 9), true).
opt_ggp_axiom(d_nextstep(9, 10), true).
opt_ggp_axiom(d_nextstep(10, 11), true).
opt_ggp_axiom(d_nextstep(11, 12), true).
opt_ggp_axiom(d_nextstep(12, 13), true).
opt_ggp_axiom(d_nextstep(13, 14), true).
opt_ggp_axiom(d_nextstep(14, 15), true).
opt_ggp_axiom(d_nextstep(15, 16), true).
opt_ggp_axiom(d_nextstep(16, 17), true).
opt_ggp_axiom(d_nextstep(17, 18), true).
opt_ggp_axiom(d_nextstep(18, 19), true).
opt_ggp_axiom(d_nextstep(19, 20), true).
opt_ggp_axiom(d_role(player), true).
opt_ggp_axiom(d_terminal, d_true(step(20))).
opt_ggp_axiom(d_terminal, \+ gen_negation2_86).
opt_ggp_axiom(gen_call_884(_202728, _202729, _202728, _202729), true).
opt_ggp_axiom(gen_call_884(2, _202740, 1, _202740), true).
opt_ggp_axiom(gen_call_884(3, _202751, 2, _202751), true).
opt_ggp_axiom(gen_call_884(4, _202762, 3, _202762), true).
opt_ggp_axiom(gen_call_884(5, _202773, 4, _202773), true).
opt_ggp_axiom(gen_call_884(1, _202784, 2, _202784), true).
opt_ggp_axiom(gen_call_884(2, _202795, 3, _202795), true).
opt_ggp_axiom(gen_call_884(3, _202806, 4, _202806), true).
opt_ggp_axiom(gen_call_884(4, _202817, 5, _202817), true).
opt_ggp_axiom(gen_call_884(_202828, 2, _202828, 1), true).
opt_ggp_axiom(gen_call_884(_202839, 3, _202839, 2), true).
opt_ggp_axiom(gen_call_884(_202850, 4, _202850, 3), true).
opt_ggp_axiom(gen_call_884(_202861, 5, _202861, 4), true).
opt_ggp_axiom(gen_call_884(_202872, 1, _202872, 2), true).
opt_ggp_axiom(gen_call_884(_202883, 2, _202883, 3), true).
opt_ggp_axiom(gen_call_884(_202894, 3, _202894, 4), true).
opt_ggp_axiom(gen_call_884(_202905, 4, _202905, 5), true).
opt_ggp_axiom(gen_call_885(_202916, _202917, _202916, _202917), true).
opt_ggp_axiom(gen_call_885(2, _202928, 1, _202928), true).
opt_ggp_axiom(gen_call_885(3, _202939, 2, _202939), true).
opt_ggp_axiom(gen_call_885(4, _202950, 3, _202950), true).
opt_ggp_axiom(gen_call_885(5, _202961, 4, _202961), true).
opt_ggp_axiom(gen_call_885(1, _202972, 2, _202972), true).
opt_ggp_axiom(gen_call_885(2, _202983, 3, _202983), true).
opt_ggp_axiom(gen_call_885(3, _202994, 4, _202994), true).
opt_ggp_axiom(gen_call_885(4, _203005, 5, _203005), true).
opt_ggp_axiom(gen_call_885(_203016, 2, _203016, 1), true).
opt_ggp_axiom(gen_call_885(_203027, 3, _203027, 2), true).
opt_ggp_axiom(gen_call_885(_203038, 4, _203038, 3), true).
opt_ggp_axiom(gen_call_885(_203049, 5, _203049, 4), true).
opt_ggp_axiom(gen_call_885(_203060, 1, _203060, 2), true).
opt_ggp_axiom(gen_call_885(_203071, 2, _203071, 3), true).
opt_ggp_axiom(gen_call_885(_203082, 3, _203082, 4), true).
opt_ggp_axiom(gen_call_885(_203093, 4, _203093, 5), true).
opt_ggp_axiom(gen_call_897(_203104, _203105, _203104, _203105), true).
opt_ggp_axiom(gen_call_897(2, _203116, 1, _203116), true).
opt_ggp_axiom(gen_call_897(3, _203127, 2, _203127), true).
opt_ggp_axiom(gen_call_897(4, _203138, 3, _203138), true).
opt_ggp_axiom(gen_call_897(5, _203149, 4, _203149), true).
opt_ggp_axiom(gen_call_897(1, _203160, 2, _203160), true).
opt_ggp_axiom(gen_call_897(2, _203171, 3, _203171), true).
opt_ggp_axiom(gen_call_897(3, _203182, 4, _203182), true).
opt_ggp_axiom(gen_call_897(4, _203193, 5, _203193), true).
opt_ggp_axiom(gen_call_897(_203204, 2, _203204, 1), true).
opt_ggp_axiom(gen_call_897(_203215, 3, _203215, 2), true).
opt_ggp_axiom(gen_call_897(_203226, 4, _203226, 3), true).
opt_ggp_axiom(gen_call_897(_203237, 5, _203237, 4), true).
opt_ggp_axiom(gen_call_897(_203248, 1, _203248, 2), true).
opt_ggp_axiom(gen_call_897(_203259, 2, _203259, 3), true).
opt_ggp_axiom(gen_call_897(_203270, 3, _203270, 4), true).
opt_ggp_axiom(gen_call_897(_203281, 4, _203281, 5), true).
opt_ggp_axiom(gen_call_898(_203292, _203293, _203292, _203293), true).
opt_ggp_axiom(gen_call_898(2, _203304, 1, _203304), true).
opt_ggp_axiom(gen_call_898(3, _203315, 2, _203315), true).
opt_ggp_axiom(gen_call_898(4, _203326, 3, _203326), true).
opt_ggp_axiom(gen_call_898(5, _203337, 4, _203337), true).
opt_ggp_axiom(gen_call_898(1, _203348, 2, _203348), true).
opt_ggp_axiom(gen_call_898(2, _203359, 3, _203359), true).
opt_ggp_axiom(gen_call_898(3, _203370, 4, _203370), true).
opt_ggp_axiom(gen_call_898(4, _203381, 5, _203381), true).
opt_ggp_axiom(gen_call_898(_203392, 2, _203392, 1), true).
opt_ggp_axiom(gen_call_898(_203403, 3, _203403, 2), true).
opt_ggp_axiom(gen_call_898(_203414, 4, _203414, 3), true).
opt_ggp_axiom(gen_call_898(_203425, 5, _203425, 4), true).
opt_ggp_axiom(gen_call_898(_203436, 1, _203436, 2), true).
opt_ggp_axiom(gen_call_898(_203447, 2, _203447, 3), true).
opt_ggp_axiom(gen_call_898(_203458, 3, _203458, 4), true).
opt_ggp_axiom(gen_call_898(_203469, 4, _203469, 5), true).
opt_ggp_axiom(gen_call_899(_203480, _203481, _203480, _203481), true).
opt_ggp_axiom(gen_call_899(2, _203492, 1, _203492), true).
opt_ggp_axiom(gen_call_899(3, _203503, 2, _203503), true).
opt_ggp_axiom(gen_call_899(4, _203514, 3, _203514), true).
opt_ggp_axiom(gen_call_899(5, _203525, 4, _203525), true).
opt_ggp_axiom(gen_call_899(1, _203536, 2, _203536), true).
opt_ggp_axiom(gen_call_899(2, _203547, 3, _203547), true).
opt_ggp_axiom(gen_call_899(3, _203558, 4, _203558), true).
opt_ggp_axiom(gen_call_899(4, _203569, 5, _203569), true).
opt_ggp_axiom(gen_call_899(_203580, 2, _203580, 1), true).
opt_ggp_axiom(gen_call_899(_203591, 3, _203591, 2), true).
opt_ggp_axiom(gen_call_899(_203602, 4, _203602, 3), true).
opt_ggp_axiom(gen_call_899(_203613, 5, _203613, 4), true).
opt_ggp_axiom(gen_call_899(_203624, 1, _203624, 2), true).
opt_ggp_axiom(gen_call_899(_203635, 2, _203635, 3), true).
opt_ggp_axiom(gen_call_899(_203646, 3, _203646, 4), true).
opt_ggp_axiom(gen_call_899(_203657, 4, _203657, 5), true).
opt_ggp_axiom(gen_negation2_81(_203666, _203667), (d_does(player, switch(_203675, _203667)), d_adj(_203675, _203666))).
opt_ggp_axiom(gen_negation2_82(_203688, _203689), (d_does(player, switch(_203697, _203689)), d_adj(_203688, _203697))).
opt_ggp_axiom(gen_negation2_83(_203710, _203711), (d_does(player, switch(_203711, _203720)), d_adj(_203720, _203710))).
opt_ggp_axiom(gen_negation2_84(_203732, _203733), (d_does(player, switch(_203733, _203742)), d_adj(_203732, _203742))).
opt_ggp_axiom(gen_negation2_85, (d_coord(_203756), d_true(cell(_203756, _203766, light)), d_coord(_203766))).
opt_ggp_axiom(gen_negation2_86, (d_coord(_203779), d_true(cell(_203779, _203789, light)), d_coord(_203789))).
opt_ggp_axiom(gen_negation2_89(_203799), (d_true(step(_203807)), d_nextstep(_203807, _203799))).
opt_ggp_axiom(gen_negation_59(light, _203822, _203823, _203824, _203825), (d_true(cell(_203823, _203822, nolight)), gen_call_897(_203823, _203822, _203824, _203825))).
opt_ggp_axiom(gen_negation_60(nolight, _203851, _203852, _203853, _203854), (d_true(cell(_203852, _203851, light)), gen_call_898(_203852, _203851, _203853, _203854))).
opt_ggp_axiom(legal_jointmove(jointmove(switch(_203881, _203882))), (d_coord(_203881), d_coord(_203882))).
opt_ggp_axiom(legal_terminal(player, switch(_203901, _203902)), (d_coord(_203901), d_coord(_203902), \+ d_true(step(20)), d_coord(_203927), d_true(cell(_203927, _203937, light)), d_coord(_203937))).
opt_ggp_axiom(neg_effect(cell(_203952, _203953, _203954), jointmove(switch(_203960, _203961))), (\+ gen_negation_59(_203954, _203953, _203952, _203960, _203961), \+ gen_negation_60(_203954, _203953, _203952, _203960, _203961), gen_call_899(_203952, _203953, _203960, _203961))).
opt_ggp_axiom(neg_effect(step(_203999), jointmove(switch(_204005, _204006))), \+ gen_negation2_89(_203999)).
opt_ggp_axiom(pos_effect(cell(_204023, _204024, light), jointmove(switch(_204030, _204031))), (d_true(cell(_204023, _204024, nolight)), gen_call_884(_204023, _204024, _204030, _204031))).
opt_ggp_axiom(pos_effect(cell(_204058, _204059, nolight), jointmove(switch(_204065, _204066))), (d_true(cell(_204058, _204059, light)), gen_call_885(_204058, _204059, _204065, _204066))).
opt_ggp_axiom(pos_effect(step(_204091), jointmove(switch(_204097, _204098))), (d_true(step(_204106)), d_nextstep(_204106, _204091))).



static_predicate(d_adj/2)..
static_predicate(d_coord/1).
static_predicate(d_nextstep/2).

predicate(Name/Arity):-static_predicate(Name/Arity).



