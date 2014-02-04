:- module(puzzle_domains, [
        arg2domainname/2,
        domainname2domainelements/2
	], eclipse_language).
all_domainnames([dom_of_function_cell_3_1, dom_of_function_cell_3_3, dom_of_function_step_1_1, dom_of_predicate_d_next_1_1, dom_of_predicate_d_role_1_1, dom_of_predicate_d_goal_2_2, dom_of_predicate_d_legal_2_2]).
all_argstacks([[arg(predicate, 1, gen_disjunction_1 / 2)], [arg(predicate, 1, d_next / 1), arg(function, 1, cell / 3)], [arg(predicate, 2, gen_disjunction_1 / 2)], [arg(predicate, 1, gen_disjunction_2 / 2)], [arg(predicate, 1, d_role / 1)], [arg(predicate, 2, gen_disjunction_2 / 2)], [arg(predicate, 1, d_next / 1), arg(function, 2, cell / 3)], [arg(predicate, 1, d_next / 1), arg(function, 1, step / 1)], [arg(predicate, 1, d_init / 1)], [arg(predicate, 1, d_next / 1), arg(function, 3, cell / 3)], [arg(predicate, 1, d_legal / 2)], [arg(predicate, 1, d_init / 1), arg(function, 1, cell / 3)], [arg(predicate, 2, d_legal / 2)], [arg(predicate, 1, d_succ / 2)], [arg(predicate, 2, d_legal / 2), arg(function, 1, move / 2)], [arg(predicate, 1, d_true / 1)], [arg(predicate, 1, d_init / 1), arg(function, 2, cell / 3)], [arg(predicate, 2, d_succ / 2)], [arg(predicate, 2, d_legal / 2), arg(function, 2, move / 2)], [arg(predicate, 1, d_init / 1), arg(function, 3, cell / 3)], [arg(predicate, 1, d_init / 1), arg(function, 1, step / 1)], [arg(predicate, 1, d_true / 1), arg(function, 1, cell / 3)], [arg(predicate, 1, d_successor / 2)], [arg(predicate, 1, gen_disjunction_3 / 3)], [arg(predicate, 1, d_true / 1), arg(function, 2, cell / 3)], [arg(predicate, 1, d_does / 2)], [arg(predicate, 1, d_pred / 2)], [arg(predicate, 1, d_goal / 2)], [arg(predicate, 2, d_successor / 2)], [arg(predicate, 1, gen_disjunction_4 / 3)], [arg(predicate, 2, gen_disjunction_3 / 3)], [arg(predicate, 1, d_true / 1), arg(function, 1, step / 1)], [arg(predicate, 1, d_true / 1), arg(function, 3, cell / 3)], [arg(predicate, 2, d_does / 2)], [arg(predicate, 2, d_pred / 2)], [arg(predicate, 2, d_goal / 2)], [arg(predicate, 1, gen_disjunction_5 / 3)], [arg(predicate, 2, gen_disjunction_4 / 3)], [arg(predicate, 3, gen_disjunction_3 / 3)], [arg(predicate, 2, d_does / 2), arg(function, 1, move / 2)], [arg(predicate, 2, gen_disjunction_5 / 3)], [arg(predicate, 3, gen_disjunction_4 / 3)], [arg(predicate, 2, d_does / 2), arg(function, 2, move / 2)], [arg(predicate, 1, d_next / 1)], [arg(predicate, 3, gen_disjunction_5 / 3)]]).
argstack2domain2(a([arg(predicate, 1, d_does / 2)]), [atom(player)]).
argstack2domain2(a([arg(predicate, 1, d_goal / 2)]), [atom(player)]).
argstack2domain2(a([arg(predicate, 1, d_init / 1)]), [function(cell / 3), function(step / 1)]).
argstack2domain2(a([arg(predicate, 1, d_init / 1), arg(function, 1, cell / 3)]), [atom(1), atom(2), atom(3)]).
argstack2domain2(a([arg(predicate, 1, d_init / 1), arg(function, 1, step / 1)]), [atom(0)]).
argstack2domain2(a([arg(predicate, 1, d_init / 1), arg(function, 2, cell / 3)]), [atom(1), atom(2), atom(3)]).
argstack2domain2(a([arg(predicate, 1, d_init / 1), arg(function, 3, cell / 3)]), [atom(8), atom(7), atom(6), atom(5), atom(4), atom(3), atom(2), atom(1), atom(b)]).
argstack2domain2(a([arg(predicate, 1, d_legal / 2)]), [atom(player)]).
argstack2domain2(a([arg(predicate, 1, d_next / 1)]), [function(step / 1), function(cell / 3)]).
argstack2domain2(a([arg(predicate, 1, d_next / 1), arg(function, 1, cell / 3)]), [atom(1), atom(2), atom(3)]).
argstack2domain2(a([arg(predicate, 1, d_next / 1), arg(function, 1, step / 1)]), [atom(1), atom(2), atom(3), atom(4), atom(5), atom(6), atom(7), atom(8), atom(9), atom(10), atom(11), atom(12), atom(13), atom(14), atom(15), atom(16), atom(17), atom(18), atom(19), atom(20), atom(21), atom(22), atom(23), atom(24), atom(25), atom(26), atom(27), atom(28), atom(29), atom(30), atom(31), atom(32), atom(33), atom(34), atom(35), atom(36), atom(37), atom(38), atom(39), atom(40), atom(41), atom(42), atom(43), atom(44), atom(45), atom(46), atom(47), atom(48), atom(49), atom(50), atom(51), atom(52), atom(53), atom(54), atom(55), atom(56), atom(57), atom(58), atom(59), atom(60)]).
argstack2domain2(a([arg(predicate, 1, d_next / 1), arg(function, 2, cell / 3)]), [atom(3), atom(1), atom(2)]).
argstack2domain2(a([arg(predicate, 1, d_next / 1), arg(function, 3, cell / 3)]), [atom(8), atom(7), atom(6), atom(5), atom(4), atom(3), atom(2), atom(1), atom(b)]).
argstack2domain2(a([arg(predicate, 1, d_pred / 2)]), [atom(2), atom(3)]).
argstack2domain2(a([arg(predicate, 1, d_role / 1)]), [atom(player)]).
argstack2domain2(a([arg(predicate, 1, d_succ / 2)]), [atom(1), atom(2)]).
argstack2domain2(a([arg(predicate, 1, d_successor / 2)]), [atom(0), atom(1), atom(2), atom(3), atom(4), atom(5), atom(6), atom(7), atom(8), atom(9), atom(10), atom(11), atom(12), atom(13), atom(14), atom(15), atom(16), atom(17), atom(18), atom(19), atom(20), atom(21), atom(22), atom(23), atom(24), atom(25), atom(26), atom(27), atom(28), atom(29), atom(30), atom(31), atom(32), atom(33), atom(34), atom(35), atom(36), atom(37), atom(38), atom(39), atom(40), atom(41), atom(42), atom(43), atom(44), atom(45), atom(46), atom(47), atom(48), atom(49), atom(50), atom(51), atom(52), atom(53), atom(54), atom(55), atom(56), atom(57), atom(58), atom(59)]).
argstack2domain2(a([arg(predicate, 1, d_true / 1)]), [function(cell / 3), function(step / 1)]).
argstack2domain2(a([arg(predicate, 1, d_true / 1), arg(function, 1, cell / 3)]), [atom(1), atom(2), atom(3)]).
argstack2domain2(a([arg(predicate, 1, d_true / 1), arg(function, 1, step / 1)]), [atom(1), atom(2), atom(3), atom(4), atom(5), atom(6), atom(7), atom(8), atom(9), atom(10), atom(11), atom(12), atom(13), atom(14), atom(15), atom(16), atom(17), atom(18), atom(19), atom(20), atom(21), atom(22), atom(23), atom(24), atom(25), atom(26), atom(27), atom(28), atom(29), atom(30), atom(31), atom(32), atom(33), atom(34), atom(35), atom(36), atom(37), atom(38), atom(39), atom(40), atom(41), atom(42), atom(43), atom(44), atom(45), atom(46), atom(47), atom(48), atom(49), atom(50), atom(51), atom(52), atom(53), atom(54), atom(55), atom(56), atom(57), atom(58), atom(59), atom(60), atom(0)]).
argstack2domain2(a([arg(predicate, 1, d_true / 1), arg(function, 2, cell / 3)]), [atom(1), atom(2), atom(3)]).
argstack2domain2(a([arg(predicate, 1, d_true / 1), arg(function, 3, cell / 3)]), [atom(8), atom(7), atom(6), atom(5), atom(4), atom(3), atom(2), atom(1), atom(b)]).
argstack2domain2(a([arg(predicate, 1, gen_disjunction_1 / 2)]), [atom(1), atom(2), atom(3)]).
argstack2domain2(a([arg(predicate, 1, gen_disjunction_2 / 2)]), [atom(3), atom(1), atom(2)]).
argstack2domain2(a([arg(predicate, 1, gen_disjunction_3 / 3)]), [atom(8), atom(7), atom(6), atom(5), atom(4), atom(3), atom(2), atom(1), atom(b)]).
argstack2domain2(a([arg(predicate, 1, gen_disjunction_4 / 3)]), [atom(8), atom(7), atom(6), atom(5), atom(4), atom(3), atom(2), atom(1), atom(b)]).
argstack2domain2(a([arg(predicate, 1, gen_disjunction_5 / 3)]), [atom(8), atom(7), atom(6), atom(5), atom(4), atom(3), atom(2), atom(1), atom(b)]).
argstack2domain2(a([arg(predicate, 2, d_does / 2)]), [function(move / 2)]).
argstack2domain2(a([arg(predicate, 2, d_does / 2), arg(function, 1, move / 2)]), [atom(3), atom(1), atom(2)]).
argstack2domain2(a([arg(predicate, 2, d_does / 2), arg(function, 2, move / 2)]), [atom(3), atom(1), atom(2)]).
argstack2domain2(a([arg(predicate, 2, d_goal / 2)]), [atom(100), atom(99), atom(0)]).
argstack2domain2(a([arg(predicate, 2, d_legal / 2)]), [function(move / 2)]).
argstack2domain2(a([arg(predicate, 2, d_legal / 2), arg(function, 1, move / 2)]), [atom(3), atom(1), atom(2)]).
argstack2domain2(a([arg(predicate, 2, d_legal / 2), arg(function, 2, move / 2)]), [atom(3), atom(1), atom(2)]).
argstack2domain2(a([arg(predicate, 2, d_pred / 2)]), [atom(1), atom(2)]).
argstack2domain2(a([arg(predicate, 2, d_succ / 2)]), [atom(2), atom(3)]).
argstack2domain2(a([arg(predicate, 2, d_successor / 2)]), [atom(1), atom(2), atom(3), atom(4), atom(5), atom(6), atom(7), atom(8), atom(9), atom(10), atom(11), atom(12), atom(13), atom(14), atom(15), atom(16), atom(17), atom(18), atom(19), atom(20), atom(21), atom(22), atom(23), atom(24), atom(25), atom(26), atom(27), atom(28), atom(29), atom(30), atom(31), atom(32), atom(33), atom(34), atom(35), atom(36), atom(37), atom(38), atom(39), atom(40), atom(41), atom(42), atom(43), atom(44), atom(45), atom(46), atom(47), atom(48), atom(49), atom(50), atom(51), atom(52), atom(53), atom(54), atom(55), atom(56), atom(57), atom(58), atom(59), atom(60)]).
argstack2domain2(a([arg(predicate, 2, gen_disjunction_1 / 2)]), [atom(3), atom(1), atom(2)]).
argstack2domain2(a([arg(predicate, 2, gen_disjunction_2 / 2)]), [atom(1), atom(2), atom(3)]).
argstack2domain2(a([arg(predicate, 2, gen_disjunction_3 / 3)]), [atom(1), atom(2), atom(3)]).
argstack2domain2(a([arg(predicate, 2, gen_disjunction_4 / 3)]), [atom(1), atom(2), atom(3)]).
argstack2domain2(a([arg(predicate, 2, gen_disjunction_5 / 3)]), [atom(1), atom(2), atom(3)]).
argstack2domain2(a([arg(predicate, 3, gen_disjunction_3 / 3)]), [atom(1), atom(2), atom(3)]).
argstack2domain2(a([arg(predicate, 3, gen_disjunction_4 / 3)]), [atom(1), atom(2), atom(3)]).
argstack2domain2(a([arg(predicate, 3, gen_disjunction_5 / 3)]), [atom(1), atom(2), atom(3)]).
domainname2args(dom_of_function_cell_3_1, [arg(predicate, 2, d_pred / 2), arg(predicate, 1, d_pred / 2), arg(predicate, 2, d_succ / 2), arg(predicate, 1, d_succ / 2), arg(predicate, 2, gen_disjunction_5 / 3), arg(predicate, 2, gen_disjunction_4 / 3), arg(predicate, 2, gen_disjunction_3 / 3), arg(predicate, 1, gen_disjunction_2 / 2), arg(predicate, 1, gen_disjunction_1 / 2), arg(function, 2, move / 2), arg(function, 2, cell / 3), arg(predicate, 3, gen_disjunction_5 / 3), arg(predicate, 3, gen_disjunction_4 / 3), arg(predicate, 3, gen_disjunction_3 / 3), arg(predicate, 2, gen_disjunction_2 / 2), arg(predicate, 2, gen_disjunction_1 / 2), arg(function, 1, move / 2), arg(function, 1, cell / 3)]).
domainname2args(dom_of_function_cell_3_3, [arg(predicate, 1, gen_disjunction_5 / 3), arg(predicate, 1, gen_disjunction_4 / 3), arg(predicate, 1, gen_disjunction_3 / 3), arg(function, 3, cell / 3)]).
domainname2args(dom_of_function_step_1_1, [arg(predicate, 2, d_successor / 2), arg(predicate, 1, d_successor / 2), arg(function, 1, step / 1)]).
domainname2args(dom_of_predicate_d_next_1_1, [arg(predicate, 1, d_init / 1), arg(predicate, 1, d_true / 1), arg(predicate, 1, d_next / 1)]).
domainname2args(dom_of_predicate_d_role_1_1, [arg(predicate, 1, d_does / 2), arg(predicate, 1, d_goal / 2), arg(predicate, 1, d_legal / 2), arg(predicate, 1, d_role / 1)]).
domainname2args(dom_of_predicate_d_goal_2_2, [arg(predicate, 2, d_goal / 2)]).
domainname2args(dom_of_predicate_d_legal_2_2, [arg(predicate, 2, d_does / 2), arg(predicate, 2, d_legal / 2)]).
arg2domainname(arg(predicate, 1, gen_disjunction_1 / 2), dom_of_function_cell_3_1).
arg2domainname(arg(predicate, 2, gen_disjunction_2 / 2), dom_of_function_cell_3_1).
arg2domainname(arg(function, 2, move / 2), dom_of_function_cell_3_1).
arg2domainname(arg(predicate, 1, gen_disjunction_3 / 3), dom_of_function_cell_3_3).
arg2domainname(arg(predicate, 2, d_successor / 2), dom_of_function_step_1_1).
arg2domainname(arg(predicate, 1, d_pred / 2), dom_of_function_cell_3_1).
arg2domainname(arg(predicate, 1, d_goal / 2), dom_of_predicate_d_role_1_1).
arg2domainname(arg(predicate, 1, d_does / 2), dom_of_predicate_d_role_1_1).
arg2domainname(arg(function, 2, cell / 3), dom_of_function_cell_3_1).
arg2domainname(arg(predicate, 1, gen_disjunction_5 / 3), dom_of_function_cell_3_3).
arg2domainname(arg(predicate, 2, gen_disjunction_4 / 3), dom_of_function_cell_3_1).
arg2domainname(arg(predicate, 3, gen_disjunction_3 / 3), dom_of_function_cell_3_1).
arg2domainname(arg(predicate, 1, d_succ / 2), dom_of_function_cell_3_1).
arg2domainname(arg(predicate, 2, d_legal / 2), dom_of_predicate_d_legal_2_2).
arg2domainname(arg(predicate, 3, gen_disjunction_5 / 3), dom_of_function_cell_3_1).
arg2domainname(arg(predicate, 1, gen_disjunction_2 / 2), dom_of_function_cell_3_1).
arg2domainname(arg(predicate, 2, gen_disjunction_1 / 2), dom_of_function_cell_3_1).
arg2domainname(arg(function, 1, move / 2), dom_of_function_cell_3_1).
arg2domainname(arg(predicate, 1, d_role / 1), dom_of_predicate_d_role_1_1).
arg2domainname(arg(predicate, 1, d_successor / 2), dom_of_function_step_1_1).
arg2domainname(arg(predicate, 1, d_init / 1), dom_of_predicate_d_next_1_1).
arg2domainname(arg(function, 1, cell / 3), dom_of_function_cell_3_1).
arg2domainname(arg(predicate, 1, gen_disjunction_4 / 3), dom_of_function_cell_3_3).
arg2domainname(arg(predicate, 2, d_goal / 2), dom_of_predicate_d_goal_2_2).
arg2domainname(arg(predicate, 2, gen_disjunction_3 / 3), dom_of_function_cell_3_1).
arg2domainname(arg(predicate, 2, d_pred / 2), dom_of_function_cell_3_1).
arg2domainname(arg(predicate, 2, d_does / 2), dom_of_predicate_d_legal_2_2).
arg2domainname(arg(function, 1, step / 1), dom_of_function_step_1_1).
arg2domainname(arg(predicate, 1, d_legal / 2), dom_of_predicate_d_role_1_1).
arg2domainname(arg(function, 3, cell / 3), dom_of_function_cell_3_3).
arg2domainname(arg(predicate, 2, gen_disjunction_5 / 3), dom_of_function_cell_3_1).
arg2domainname(arg(predicate, 3, gen_disjunction_4 / 3), dom_of_function_cell_3_1).
arg2domainname(arg(predicate, 1, d_next / 1), dom_of_predicate_d_next_1_1).
arg2domainname(arg(predicate, 2, d_succ / 2), dom_of_function_cell_3_1).
arg2domainname(arg(predicate, 1, d_true / 1), dom_of_predicate_d_next_1_1).
domainname2domainelements(dom_of_function_cell_3_1, [atom(3), atom(1), atom(2)]).
domainname2domainelements(dom_of_function_cell_3_3, [atom(8), atom(7), atom(6), atom(5), atom(4), atom(3), atom(2), atom(1), atom(b)]).
domainname2domainelements(dom_of_function_step_1_1, [atom(0), atom(1), atom(2), atom(3), atom(4), atom(5), atom(6), atom(7), atom(8), atom(9), atom(10), atom(11), atom(12), atom(13), atom(14), atom(15), atom(16), atom(17), atom(18), atom(19), atom(20), atom(21), atom(22), atom(23), atom(24), atom(25), atom(26), atom(27), atom(28), atom(29), atom(30), atom(31), atom(32), atom(33), atom(34), atom(35), atom(36), atom(37), atom(38), atom(39), atom(40), atom(41), atom(42), atom(43), atom(44), atom(45), atom(46), atom(47), atom(48), atom(49), atom(50), atom(51), atom(52), atom(53), atom(54), atom(55), atom(56), atom(57), atom(58), atom(59), atom(60)]).
domainname2domainelements(dom_of_predicate_d_next_1_1, [function(cell / 3), function(step / 1)]).
domainname2domainelements(dom_of_predicate_d_role_1_1, [atom(player)]).
domainname2domainelements(dom_of_predicate_d_goal_2_2, [atom(100), atom(99), atom(0)]).
domainname2domainelements(dom_of_predicate_d_legal_2_2, [function(move / 2)]).
