:- module(puzzle_effect_axioms, [
	opt_ggp_axiom/2,
        static_predicate/1,
        predicate/1
	], eclipse_language).
opt_ggp_axiom(d_goal(player, 100), (d_true(cell(1, 1, 1)), d_true(cell(1, 2, 2)), d_true(cell(1, 3, 3)), d_true(cell(2, 1, 4)), d_true(cell(2, 2, 5)), d_true(cell(2, 3, 6)), d_true(cell(3, 1, 7)), d_true(cell(3, 2, 8)), d_true(cell(3, 3, b)), d_true(step(30)))).
opt_ggp_axiom(d_goal(player, 99), (d_true(cell(1, 1, 1)), d_true(cell(1, 2, 2)), d_true(cell(1, 3, 3)), d_true(cell(2, 1, 4)), d_true(cell(2, 2, 5)), d_true(cell(2, 3, 6)), d_true(cell(3, 1, 7)), d_true(cell(3, 2, 8)), d_true(cell(3, 3, b)), d_true(step(_315939)), _315939 \= 30)).
opt_ggp_axiom(d_goal(player, 0), \+ d_true(cell(1, 1, 1))).
opt_ggp_axiom(d_goal(player, 0), \+ d_true(cell(1, 2, 2))).
opt_ggp_axiom(d_goal(player, 0), \+ d_true(cell(1, 3, 3))).
opt_ggp_axiom(d_goal(player, 0), \+ d_true(cell(2, 1, 4))).
opt_ggp_axiom(d_goal(player, 0), \+ d_true(cell(2, 2, 5))).
opt_ggp_axiom(d_goal(player, 0), \+ d_true(cell(2, 3, 6))).
opt_ggp_axiom(d_goal(player, 0), \+ d_true(cell(3, 1, 7))).
opt_ggp_axiom(d_goal(player, 0), \+ d_true(cell(3, 2, 8))).
opt_ggp_axiom(d_goal(player, 0), \+ d_true(cell(3, 3, b))).
opt_ggp_axiom(d_init(cell(1, 1, 8)), true).
opt_ggp_axiom(d_init(cell(1, 2, 7)), true).
opt_ggp_axiom(d_init(cell(1, 3, 6)), true).
opt_ggp_axiom(d_init(cell(2, 1, 5)), true).
opt_ggp_axiom(d_init(cell(2, 2, 4)), true).
opt_ggp_axiom(d_init(cell(2, 3, 3)), true).
opt_ggp_axiom(d_init(cell(3, 1, 2)), true).
opt_ggp_axiom(d_init(cell(3, 2, 1)), true).
opt_ggp_axiom(d_init(cell(3, 3, b)), true).
opt_ggp_axiom(d_init(step(0)), true).
opt_ggp_axiom(d_legal(player, move(_316206, _316207)), (d_true(cell(_316217, _316207, b)), d_succ(_316206, _316217))).
opt_ggp_axiom(d_legal(player, move(_316232, _316233)), (d_true(cell(_316243, _316233, b)), d_pred(_316232, _316243))).
opt_ggp_axiom(d_legal(player, move(_316258, _316259)), (d_true(cell(_316258, _316269, b)), d_succ(_316259, _316269))).
opt_ggp_axiom(d_legal(player, move(_316284, _316285)), (d_true(cell(_316284, _316295, b)), d_pred(_316285, _316295))).
opt_ggp_axiom(d_next(step(_316308)), (d_true(step(_316316)), d_successor(_316316, _316308))).
opt_ggp_axiom(d_next(cell(_316331, _316332, b)), d_does(player, move(_316331, _316332))).
opt_ggp_axiom(d_next(cell(_316350, _316351, _316352)), (d_does(player, move(_316362, _316351)), d_true(cell(_316350, _316351, b)), d_true(cell(_316362, _316351, _316352)), _316352 \= b)).
opt_ggp_axiom(d_next(cell(_316395, _316396, _316397)), (d_does(player, move(_316395, _316407)), d_true(cell(_316395, _316396, b)), d_true(cell(_316395, _316407, _316397)), _316397 \= b)).
opt_ggp_axiom(d_next(cell(_316440, _316441, _316442)), (d_true(cell(_316440, _316441, _316442)), d_does(player, move(_316461, _316462)), _316461 \= _316440, d_true(cell(_316478, _316479, b)), _316478 \= _316440)).
opt_ggp_axiom(d_next(cell(_316494, _316495, _316496)), (d_true(cell(_316494, _316495, _316496)), d_does(player, move(_316515, _316516)), _316515 \= _316494, d_true(cell(_316532, _316533, b)), _316533 \= _316495)).
opt_ggp_axiom(d_next(cell(_316548, _316549, _316550)), (d_true(cell(_316548, _316549, _316550)), d_does(player, move(_316569, _316570)), _316570 \= _316549, d_true(cell(_316586, _316587, b)), _316586 \= _316548)).
opt_ggp_axiom(d_next(cell(_316602, _316603, _316604)), (d_true(cell(_316602, _316603, _316604)), d_does(player, move(_316623, _316624)), _316624 \= _316603, d_true(cell(_316640, _316641, b)), _316641 \= _316603)).
opt_ggp_axiom(d_pred(2, 1), true).
opt_ggp_axiom(d_pred(3, 2), true).
opt_ggp_axiom(d_role(player), true).
opt_ggp_axiom(d_succ(1, 2), true).
opt_ggp_axiom(d_succ(2, 3), true).
opt_ggp_axiom(d_successor(0, 1), true).
opt_ggp_axiom(d_successor(1, 2), true).
opt_ggp_axiom(d_successor(2, 3), true).
opt_ggp_axiom(d_successor(3, 4), true).
opt_ggp_axiom(d_successor(4, 5), true).
opt_ggp_axiom(d_successor(5, 6), true).
opt_ggp_axiom(d_successor(6, 7), true).
opt_ggp_axiom(d_successor(7, 8), true).
opt_ggp_axiom(d_successor(8, 9), true).
opt_ggp_axiom(d_successor(9, 10), true).
opt_ggp_axiom(d_successor(10, 11), true).
opt_ggp_axiom(d_successor(11, 12), true).
opt_ggp_axiom(d_successor(12, 13), true).
opt_ggp_axiom(d_successor(13, 14), true).
opt_ggp_axiom(d_successor(14, 15), true).
opt_ggp_axiom(d_successor(15, 16), true).
opt_ggp_axiom(d_successor(16, 17), true).
opt_ggp_axiom(d_successor(17, 18), true).
opt_ggp_axiom(d_successor(18, 19), true).
opt_ggp_axiom(d_successor(19, 20), true).
opt_ggp_axiom(d_successor(20, 21), true).
opt_ggp_axiom(d_successor(21, 22), true).
opt_ggp_axiom(d_successor(22, 23), true).
opt_ggp_axiom(d_successor(23, 24), true).
opt_ggp_axiom(d_successor(24, 25), true).
opt_ggp_axiom(d_successor(25, 26), true).
opt_ggp_axiom(d_successor(26, 27), true).
opt_ggp_axiom(d_successor(27, 28), true).
opt_ggp_axiom(d_successor(28, 29), true).
opt_ggp_axiom(d_successor(29, 30), true).
opt_ggp_axiom(d_successor(30, 31), true).
opt_ggp_axiom(d_successor(31, 32), true).
opt_ggp_axiom(d_successor(32, 33), true).
opt_ggp_axiom(d_successor(33, 34), true).
opt_ggp_axiom(d_successor(34, 35), true).
opt_ggp_axiom(d_successor(35, 36), true).
opt_ggp_axiom(d_successor(36, 37), true).
opt_ggp_axiom(d_successor(37, 38), true).
opt_ggp_axiom(d_successor(38, 39), true).
opt_ggp_axiom(d_successor(39, 40), true).
opt_ggp_axiom(d_successor(40, 41), true).
opt_ggp_axiom(d_successor(41, 42), true).
opt_ggp_axiom(d_successor(42, 43), true).
opt_ggp_axiom(d_successor(43, 44), true).
opt_ggp_axiom(d_successor(44, 45), true).
opt_ggp_axiom(d_successor(45, 46), true).
opt_ggp_axiom(d_successor(46, 47), true).
opt_ggp_axiom(d_successor(47, 48), true).
opt_ggp_axiom(d_successor(48, 49), true).
opt_ggp_axiom(d_successor(49, 50), true).
opt_ggp_axiom(d_successor(50, 51), true).
opt_ggp_axiom(d_successor(51, 52), true).
opt_ggp_axiom(d_successor(52, 53), true).
opt_ggp_axiom(d_successor(53, 54), true).
opt_ggp_axiom(d_successor(54, 55), true).
opt_ggp_axiom(d_successor(55, 56), true).
opt_ggp_axiom(d_successor(56, 57), true).
opt_ggp_axiom(d_successor(57, 58), true).
opt_ggp_axiom(d_successor(58, 59), true).
opt_ggp_axiom(d_successor(59, 60), true).
opt_ggp_axiom(d_terminal, (d_true(cell(1, 1, 1)), d_true(cell(1, 2, 2)), d_true(cell(1, 3, 3)), d_true(cell(2, 1, 4)), d_true(cell(2, 2, 5)), d_true(cell(2, 3, 6)), d_true(cell(3, 1, 7)), d_true(cell(3, 2, 8)), d_true(cell(3, 3, b)))).
opt_ggp_axiom(d_terminal, d_true(step(60))).
opt_ggp_axiom(gen_call_63323(_317267, _317268, b, _317267, _317268), true).
opt_ggp_axiom(gen_call_63323(_317280, _317281, _317282, _317280, _317283), (d_true(cell(_317283, _317280, b)), d_true(cell(_317281, _317280, _317282)))).
opt_ggp_axiom(gen_call_63323(_317310, _317311, _317312, _317313, _317311), (d_true(cell(_317311, _317313, b)), d_true(cell(_317311, _317310, _317312)))).
opt_ggp_axiom(gen_call_63394(_317337, _317337), true).
opt_ggp_axiom(gen_call_63394(_317346, _317347), \+ gen_negation2_4223(_317347)).
opt_ggp_axiom(gen_call_63395(_317361, _317361, _317362), true).
opt_ggp_axiom(gen_call_63395(_317372, _317373, _317374), \+ gen_negation2_4224(_317374)).
opt_ggp_axiom(gen_call_63396(_317388, _317388, _317389), true).
opt_ggp_axiom(gen_call_63396(_317399, _317400, _317401), \+ gen_negation2_4225(_317401)).
opt_ggp_axiom(gen_call_63397(_317414, _317414), true).
opt_ggp_axiom(gen_call_63397(_317423, _317424), \+ gen_negation2_4226(_317424)).
opt_ggp_axiom(gen_negation2_4222(_317436), (d_true(step(_317444)), d_successor(_317444, _317436))).
opt_ggp_axiom(gen_negation2_4223(_317455), (d_true(cell(_317465, _317466, b)), _317465 \= _317455)).
opt_ggp_axiom(gen_negation2_4224(_317477), (d_true(cell(_317487, _317488, b)), _317488 \= _317477)).
opt_ggp_axiom(gen_negation2_4225(_317499), (d_true(cell(_317509, _317510, b)), _317509 \= _317499)).
opt_ggp_axiom(gen_negation2_4226(_317521), (d_true(cell(_317531, _317532, b)), _317532 \= _317521)).
opt_ggp_axiom(gen_negation_472(_317547, _317548, _317549, _317550, _317548), (d_true(cell(_317547, _317548, b)), d_true(cell(_317550, _317548, _317549)), _317549 \= b)).
opt_ggp_axiom(gen_negation_473(_317583, _317584, _317585, _317583, _317586), (d_true(cell(_317583, _317584, b)), d_true(cell(_317583, _317586, _317585)), _317585 \= b)).
opt_ggp_axiom(legal_jointmove(jointmove(move(_317620, _317621))), (d_true(cell(_317631, _317621, b)), d_succ(_317620, _317631))).
opt_ggp_axiom(legal_jointmove(jointmove(move(_317647, _317648))), (d_true(cell(_317658, _317648, b)), d_pred(_317647, _317658))).
opt_ggp_axiom(legal_jointmove(jointmove(move(_317674, _317675))), (d_true(cell(_317674, _317685, b)), d_succ(_317675, _317685))).
opt_ggp_axiom(legal_jointmove(jointmove(move(_317701, _317702))), (d_true(cell(_317701, _317712, b)), d_pred(_317702, _317712))).
opt_ggp_axiom(neg_effect(step(_317726), jointmove(move(_317732, _317733))), (d_does(player, move(_317732, _317733)), \+ gen_negation2_4222(_317726), d_true(step(_317726)))).
opt_ggp_axiom(neg_effect(cell(_317764, _317765, _317766), jointmove(move(_317772, _317773))), (d_does(player, move(_317772, _317773)), match(_317766, _317773, _317772) \= match(b, _317765, _317764), \+ gen_negation_472(_317764, _317765, _317766, _317772, _317773), \+ gen_negation_473(_317764, _317765, _317766, _317772, _317773), gen_call_63394(_317772, _317764), gen_call_63395(_317772, _317764, _317765), gen_call_63396(_317773, _317765, _317764), gen_call_63397(_317773, _317765), d_true(cell(_317764, _317765, _317766)))).
opt_ggp_axiom(pos_effect(step(_317857), jointmove(move(_317863, _317864))), (d_does(player, move(_317863, _317864)), d_true(step(_317881)), d_successor(_317881, _317857), \+ d_true(step(_317857)))).
opt_ggp_axiom(pos_effect(cell(_317904, _317905, _317906), jointmove(move(_317912, _317913))), (d_does(player, move(_317912, _317913)), gen_call_63323(_317913, _317912, _317906, _317905, _317904), \+ d_true(cell(_317904, _317905, _317906)))).


static_predicate(d_pred/2).
static_predicate(d_succ/2).
static_predicate(d_successor/2).

predicate(P):-static_predicate(P).
