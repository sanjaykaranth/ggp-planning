:- module(chinesecheckers1_domains, [
                                 arg2domainname/2,
                                 domainname2domainelements/2,
                                 all_domainnames/1
                             ], eclipse_language).
all_domainnames([dom_of_function_step_1_1, dom_of_predicate_d_next_1_1, dom_of_predicate_d_legal_2_2, dom_of_function_cell_2_2, dom_of_predicate_d_goal_2_2, dom_of_predicate_d_cdr_3_3]).
all_argstacks([[arg(predicate, 2, d_movable / 3)], [arg(predicate, 3, d_movable / 3)], [arg(predicate, 1, d_true / 1), arg(function, 1, cell / 2)], [arg(predicate, 1, d_role / 1)], [arg(predicate, 1, d_true / 1), arg(function, 2, cell / 2)], [arg(predicate, 1, d_cdr / 3)], [arg(predicate, 2, d_cdr / 3)], [arg(predicate, 1, d_next / 1), arg(function, 1, step / 1)], [arg(predicate, 1, d_init / 1)], [arg(predicate, 3, d_cdr / 3)], [arg(predicate, 1, d_legal / 2)], [arg(predicate, 2, d_legal / 2)], [arg(predicate, 1, d_succ / 2)], [arg(predicate, 2, d_legal / 2), arg(function, 1, move / 2)], [arg(predicate, 1, d_true / 1)], [arg(predicate, 1, d_car / 3)], [arg(predicate, 2, d_succ / 2)], [arg(predicate, 2, d_legal / 2), arg(function, 2, move / 2)], [arg(predicate, 1, d_next / 1), arg(function, 1, cell / 2)], [arg(predicate, 2, d_car / 3)], [arg(predicate, 1, d_init / 1), arg(function, 1, step / 1)], [arg(predicate, 3, d_car / 3)], [arg(predicate, 1, d_next / 1), arg(function, 2, cell / 2)], [arg(predicate, 1, d_carred / 2)], [arg(predicate, 2, d_carred / 2)], [arg(predicate, 1, d_does / 2)], [arg(predicate, 1, d_goal / 2)], [arg(predicate, 1, d_true / 1), arg(function, 1, step / 1)], [arg(predicate, 2, d_does / 2)], [arg(predicate, 1, d_cdrred / 2)], [arg(predicate, 2, d_goal / 2)], [arg(predicate, 2, d_does / 2), arg(function, 1, move / 2)], [arg(predicate, 2, d_cdrred / 2)], [arg(predicate, 1, d_init / 1), arg(function, 1, cell / 2)], [arg(predicate, 2, d_does / 2), arg(function, 2, move / 2)], [arg(predicate, 1, d_next / 1)], [arg(predicate, 1, d_init / 1), arg(function, 2, cell / 2)], [arg(predicate, 1, d_movable / 3)]]).
argstack2domain2(a([arg(predicate, 1, d_car / 3)]), [atom(red)]).
argstack2domain2(a([arg(predicate, 1, d_carred / 2)]), [atom(a1), atom(b1), atom(b2), atom(c3), atom(c4), atom(c5), atom(d2), atom(d3), atom(d4), atom(d5), atom(e2), atom(e3), atom(e4), atom(e5), atom(f3), atom(f4), atom(f5), atom(g4), atom(g5), atom(h2)]).
argstack2domain2(a([arg(predicate, 1, d_cdr / 3)]), [atom(red)]).
argstack2domain2(a([arg(predicate, 1, d_cdrred / 2)]), [atom(a1), atom(b1), atom(b2), atom(c3), atom(c4), atom(c5), atom(d2), atom(d3), atom(d4), atom(d5), atom(e1), atom(e2), atom(e3), atom(e4), atom(f2), atom(f3), atom(f4), atom(g3), atom(g4), atom(h1)]).
argstack2domain2(a([arg(predicate, 1, d_does / 2)]), [atom(red)]).
argstack2domain2(a([arg(predicate, 1, d_goal / 2)]), [atom(red)]).
argstack2domain2(a([arg(predicate, 1, d_init / 1)]), [function(cell / 2), function(step / 1)]).
argstack2domain2(a([arg(predicate, 1, d_init / 1), arg(function, 1, cell / 2)]), [atom(a1), atom(b1), atom(b2), atom(c1), atom(c2), atom(c3), atom(c4), atom(c5), atom(c6), atom(c7), atom(d1), atom(d2), atom(d3), atom(d4), atom(d5), atom(d6), atom(e1), atom(e2), atom(e3), atom(e4), atom(e5), atom(f1), atom(f2), atom(f3), atom(f4), atom(f5), atom(f6), atom(g1), atom(g2), atom(g3), atom(g4), atom(g5), atom(g6), atom(g7), atom(h1), atom(h2), atom(i1)]).
argstack2domain2(a([arg(predicate, 1, d_init / 1), arg(function, 1, step / 1)]), [atom(1)]).
argstack2domain2(a([arg(predicate, 1, d_init / 1), arg(function, 2, cell / 2)]), [atom(red), atom(blank)]).
argstack2domain2(a([arg(predicate, 1, d_legal / 2)]), [atom(red)]).
argstack2domain2(a([arg(predicate, 1, d_movable / 3)]), [atom(red)]).
argstack2domain2(a([arg(predicate, 1, d_next / 1)]), [function(cell / 2), function(step / 1)]).
argstack2domain2(a([arg(predicate, 1, d_next / 1), arg(function, 1, cell / 2)]), [atom(a1), atom(b1), atom(b2), atom(c1), atom(c2), atom(c3), atom(c4), atom(c5), atom(c6), atom(c7), atom(d1), atom(d2), atom(d3), atom(d4), atom(d5), atom(d6), atom(e1), atom(e2), atom(e3), atom(e4), atom(e5), atom(f1), atom(f2), atom(f3), atom(f4), atom(f5), atom(f6), atom(g1), atom(g2), atom(g3), atom(g4), atom(g5), atom(g6), atom(g7), atom(h1), atom(h2), atom(i1)]).
argstack2domain2(a([arg(predicate, 1, d_next / 1), arg(function, 1, step / 1)]), [atom(2), atom(3), atom(4), atom(5), atom(6), atom(7), atom(8), atom(9), atom(10), atom(11), atom(12), atom(13), atom(14), atom(15), atom(16), atom(17), atom(18), atom(19), atom(20), atom(21), atom(22), atom(23), atom(24), atom(25), atom(26), atom(27), atom(28), atom(29), atom(30), atom(31), atom(32), atom(33), atom(34), atom(35), atom(36), atom(37), atom(38), atom(39), atom(40)]).
argstack2domain2(a([arg(predicate, 1, d_next / 1), arg(function, 2, cell / 2)]), [atom(red), atom(blank)]).
argstack2domain2(a([arg(predicate, 1, d_role / 1)]), [atom(red)]).
argstack2domain2(a([arg(predicate, 1, d_succ / 2)]), [atom(1), atom(2), atom(3), atom(4), atom(5), atom(6), atom(7), atom(8), atom(9), atom(10), atom(11), atom(12), atom(13), atom(14), atom(15), atom(16), atom(17), atom(18), atom(19), atom(20), atom(21), atom(22), atom(23), atom(24), atom(25), atom(26), atom(27), atom(28), atom(29), atom(30), atom(31), atom(32), atom(33), atom(34), atom(35), atom(36), atom(37), atom(38), atom(39)]).
argstack2domain2(a([arg(predicate, 1, d_true / 1)]), [function(cell / 2), function(step / 1)]).
argstack2domain2(a([arg(predicate, 1, d_true / 1), arg(function, 1, cell / 2)]), [atom(a1), atom(b1), atom(b2), atom(c1), atom(c2), atom(c3), atom(c4), atom(c5), atom(c6), atom(c7), atom(d1), atom(d2), atom(d3), atom(d4), atom(d5), atom(d6), atom(e1), atom(e2), atom(e3), atom(e4), atom(e5), atom(f1), atom(f2), atom(f3), atom(f4), atom(f5), atom(f6), atom(g1), atom(g2), atom(g3), atom(g4), atom(g5), atom(g6), atom(g7), atom(h1), atom(h2), atom(i1)]).
argstack2domain2(a([arg(predicate, 1, d_true / 1), arg(function, 1, step / 1)]), [atom(2), atom(3), atom(4), atom(5), atom(6), atom(7), atom(8), atom(9), atom(10), atom(11), atom(12), atom(13), atom(14), atom(15), atom(16), atom(17), atom(18), atom(19), atom(20), atom(21), atom(22), atom(23), atom(24), atom(25), atom(26), atom(27), atom(28), atom(29), atom(30), atom(31), atom(32), atom(33), atom(34), atom(35), atom(36), atom(37), atom(38), atom(39), atom(40), atom(1)]).
argstack2domain2(a([arg(predicate, 1, d_true / 1), arg(function, 2, cell / 2)]), [atom(red), atom(blank)]).
argstack2domain2(a([arg(predicate, 2, d_car / 3)]), [atom(a1), atom(b1), atom(b2), atom(c3), atom(c4), atom(c5), atom(d2), atom(d3), atom(d4), atom(d5), atom(e2), atom(e3), atom(e4), atom(e5), atom(f3), atom(f4), atom(f5), atom(g4), atom(g5), atom(h2)]).
argstack2domain2(a([arg(predicate, 2, d_carred / 2)]), [atom(b1), atom(c3), atom(c4), atom(d2), atom(d3), atom(d4), atom(e1), atom(e2), atom(e3), atom(e4), atom(f2), atom(f3), atom(f4), atom(f5), atom(g3), atom(g4), atom(g5), atom(h1), atom(h2), atom(i1)]).
argstack2domain2(a([arg(predicate, 2, d_cdr / 3)]), [atom(a1), atom(b1), atom(b2), atom(c3), atom(c4), atom(c5), atom(d2), atom(d3), atom(d4), atom(d5), atom(e1), atom(e2), atom(e3), atom(e4), atom(f2), atom(f3), atom(f4), atom(g3), atom(g4), atom(h1)]).
argstack2domain2(a([arg(predicate, 2, d_cdrred / 2)]), [atom(b2), atom(c4), atom(c5), atom(d3), atom(d4), atom(d5), atom(e2), atom(e3), atom(e4), atom(e5), atom(f2), atom(f3), atom(f4), atom(f5), atom(g3), atom(g4), atom(g5), atom(h1), atom(h2), atom(i1)]).
argstack2domain2(a([arg(predicate, 2, d_does / 2)]), [function(move / 2), atom(noop)]).
argstack2domain2(a([arg(predicate, 2, d_does / 2), arg(function, 1, move / 2)]), [atom(e5), atom(f5), atom(g5), atom(h2), atom(a1), atom(b1), atom(b2), atom(c3), atom(c4), atom(c5), atom(d2), atom(d3), atom(d4), atom(d5), atom(e1), atom(e2), atom(e3), atom(e4), atom(f2), atom(f3), atom(f4), atom(g3), atom(g4), atom(h1)]).
argstack2domain2(a([arg(predicate, 2, d_does / 2), arg(function, 2, move / 2)]), [atom(b1), atom(c3), atom(d2), atom(e1), atom(b2), atom(c4), atom(c5), atom(d3), atom(d4), atom(d5), atom(e2), atom(e3), atom(e4), atom(e5), atom(f2), atom(f3), atom(f4), atom(f5), atom(g3), atom(g4), atom(g5), atom(h1), atom(h2), atom(i1)]).
argstack2domain2(a([arg(predicate, 2, d_goal / 2)]), [atom(100), atom(50), atom(25), atom(0)]).
argstack2domain2(a([arg(predicate, 2, d_legal / 2)]), [function(move / 2), atom(noop)]).
argstack2domain2(a([arg(predicate, 2, d_legal / 2), arg(function, 1, move / 2)]), [atom(e5), atom(f5), atom(g5), atom(h2), atom(a1), atom(b1), atom(b2), atom(c3), atom(c4), atom(c5), atom(d2), atom(d3), atom(d4), atom(d5), atom(e1), atom(e2), atom(e3), atom(e4), atom(f2), atom(f3), atom(f4), atom(g3), atom(g4), atom(h1)]).
argstack2domain2(a([arg(predicate, 2, d_legal / 2), arg(function, 2, move / 2)]), [atom(b1), atom(c3), atom(d2), atom(e1), atom(b2), atom(c4), atom(c5), atom(d3), atom(d4), atom(d5), atom(e2), atom(e3), atom(e4), atom(e5), atom(f2), atom(f3), atom(f4), atom(f5), atom(g3), atom(g4), atom(g5), atom(h1), atom(h2), atom(i1)]).
argstack2domain2(a([arg(predicate, 2, d_movable / 3)]), [atom(e5), atom(f5), atom(g5), atom(h2), atom(a1), atom(b1), atom(b2), atom(c3), atom(c4), atom(c5), atom(d2), atom(d3), atom(d4), atom(d5), atom(e1), atom(e2), atom(e3), atom(e4), atom(f2), atom(f3), atom(f4), atom(g3), atom(g4), atom(h1)]).
argstack2domain2(a([arg(predicate, 2, d_succ / 2)]), [atom(2), atom(3), atom(4), atom(5), atom(6), atom(7), atom(8), atom(9), atom(10), atom(11), atom(12), atom(13), atom(14), atom(15), atom(16), atom(17), atom(18), atom(19), atom(20), atom(21), atom(22), atom(23), atom(24), atom(25), atom(26), atom(27), atom(28), atom(29), atom(30), atom(31), atom(32), atom(33), atom(34), atom(35), atom(36), atom(37), atom(38), atom(39), atom(40)]).
argstack2domain2(a([arg(predicate, 3, d_car / 3)]), [atom(b1), atom(c3), atom(c4), atom(d2), atom(d3), atom(d4), atom(e1), atom(e2), atom(e3), atom(e4), atom(f2), atom(f3), atom(f4), atom(f5), atom(g3), atom(g4), atom(g5), atom(h1), atom(h2), atom(i1)]).
argstack2domain2(a([arg(predicate, 3, d_cdr / 3)]), [atom(b2), atom(c4), atom(c5), atom(d3), atom(d4), atom(d5), atom(e2), atom(e3), atom(e4), atom(e5), atom(f2), atom(f3), atom(f4), atom(f5), atom(g3), atom(g4), atom(g5), atom(h1), atom(h2), atom(i1)]).
argstack2domain2(a([arg(predicate, 3, d_movable / 3)]), [atom(b1), atom(c3), atom(d2), atom(e1), atom(b2), atom(c4), atom(c5), atom(d3), atom(d4), atom(d5), atom(e2), atom(e3), atom(e4), atom(e5), atom(f2), atom(f3), atom(f4), atom(f5), atom(g3), atom(g4), atom(g5), atom(h1), atom(h2), atom(i1)]).
domainname2args(dom_of_function_step_1_1, [arg(predicate, 2, d_succ / 2), arg(predicate, 1, d_succ / 2), arg(function, 1, step / 1)]).
domainname2args(dom_of_predicate_d_next_1_1, [arg(predicate, 1, d_init / 1), arg(predicate, 1, d_true / 1), arg(predicate, 1, d_next / 1)]).
domainname2args(dom_of_predicate_d_legal_2_2, [arg(predicate, 2, d_does / 2), arg(predicate, 2, d_legal / 2)]).
domainname2args(dom_of_function_cell_2_2, [arg(predicate, 1, d_cdr / 3), arg(predicate, 1, d_car / 3), arg(predicate, 1, d_movable / 3), arg(predicate, 1, d_does / 2), arg(predicate, 1, d_goal / 2), arg(predicate, 1, d_legal / 2), arg(predicate, 1, d_role / 1), arg(function, 2, cell / 2)]).
domainname2args(dom_of_predicate_d_goal_2_2, [arg(predicate, 2, d_goal / 2)]).
domainname2args(dom_of_predicate_d_cdr_3_3, [arg(predicate, 2, d_cdrred / 2), arg(predicate, 1, d_cdrred / 2), arg(predicate, 2, d_carred / 2), arg(predicate, 1, d_carred / 2), arg(predicate, 2, d_cdr / 3), arg(predicate, 2, d_car / 3), arg(predicate, 3, d_movable / 3), arg(predicate, 2, d_movable / 3), arg(function, 1, move / 2), arg(function, 2, move / 2), arg(function, 1, cell / 2), arg(predicate, 3, d_car / 3), arg(predicate, 3, d_cdr / 3)]).
arg2domainname(arg(predicate, 2, d_movable / 3), dom_of_predicate_d_cdr_3_3).
arg2domainname(arg(predicate, 1, d_carred / 2), dom_of_predicate_d_cdr_3_3).
arg2domainname(arg(predicate, 3, d_car / 3), dom_of_predicate_d_cdr_3_3).
arg2domainname(arg(predicate, 1, d_cdr / 3), dom_of_function_cell_2_2).
arg2domainname(arg(function, 2, move / 2), dom_of_predicate_d_cdr_3_3).
arg2domainname(arg(predicate, 1, d_goal / 2), dom_of_function_cell_2_2).
arg2domainname(arg(predicate, 1, d_does / 2), dom_of_function_cell_2_2).
arg2domainname(arg(function, 2, cell / 2), dom_of_function_cell_2_2).
arg2domainname(arg(predicate, 3, d_cdr / 3), dom_of_predicate_d_cdr_3_3).
arg2domainname(arg(predicate, 2, d_cdrred / 2), dom_of_predicate_d_cdr_3_3).
arg2domainname(arg(predicate, 1, d_succ / 2), dom_of_function_step_1_1).
arg2domainname(arg(predicate, 2, d_legal / 2), dom_of_predicate_d_legal_2_2).
arg2domainname(arg(predicate, 1, d_movable / 3), dom_of_function_cell_2_2).
arg2domainname(arg(predicate, 2, d_car / 3), dom_of_predicate_d_cdr_3_3).
arg2domainname(arg(predicate, 3, d_movable / 3), dom_of_predicate_d_cdr_3_3).
arg2domainname(arg(function, 1, move / 2), dom_of_predicate_d_cdr_3_3).
arg2domainname(arg(predicate, 1, d_role / 1), dom_of_function_cell_2_2).
arg2domainname(arg(predicate, 2, d_carred / 2), dom_of_predicate_d_cdr_3_3).
arg2domainname(arg(function, 1, cell / 2), dom_of_predicate_d_cdr_3_3).
arg2domainname(arg(predicate, 2, d_cdr / 3), dom_of_predicate_d_cdr_3_3).
arg2domainname(arg(predicate, 1, d_init / 1), dom_of_predicate_d_next_1_1).
arg2domainname(arg(predicate, 2, d_goal / 2), dom_of_predicate_d_goal_2_2).
arg2domainname(arg(predicate, 1, d_cdrred / 2), dom_of_predicate_d_cdr_3_3).
arg2domainname(arg(predicate, 2, d_does / 2), dom_of_predicate_d_legal_2_2).
arg2domainname(arg(predicate, 1, d_legal / 2), dom_of_function_cell_2_2).
arg2domainname(arg(function, 1, step / 1), dom_of_function_step_1_1).
arg2domainname(arg(predicate, 1, d_next / 1), dom_of_predicate_d_next_1_1).
arg2domainname(arg(predicate, 1, d_car / 3), dom_of_function_cell_2_2).
arg2domainname(arg(predicate, 2, d_succ / 2), dom_of_function_step_1_1).
arg2domainname(arg(predicate, 1, d_true / 1), dom_of_predicate_d_next_1_1).
domainname2domainelements(dom_of_function_step_1_1, [atom(1), atom(2), atom(3), atom(4), atom(5), atom(6), atom(7), atom(8), atom(9), atom(10), atom(11), atom(12), atom(13), atom(14), atom(15), atom(16), atom(17), atom(18), atom(19), atom(20), atom(21), atom(22), atom(23), atom(24), atom(25), atom(26), atom(27), atom(28), atom(29), atom(30), atom(31), atom(32), atom(33), atom(34), atom(35), atom(36), atom(37), atom(38), atom(39), atom(40)]).
domainname2domainelements(dom_of_predicate_d_next_1_1, [function(cell / 2), function(step / 1)]).
domainname2domainelements(dom_of_predicate_d_legal_2_2, [function(move / 2), atom(noop)]).
domainname2domainelements(dom_of_function_cell_2_2, [atom(blank), atom(red)]).
domainname2domainelements(dom_of_predicate_d_goal_2_2, [atom(100), atom(50), atom(25), atom(0)]).
domainname2domainelements(dom_of_predicate_d_cdr_3_3, [atom(c1), atom(c2), atom(c6), atom(c7), atom(d1), atom(d6), atom(f1), atom(f6), atom(g1), atom(g2), atom(g6), atom(g7), atom(a1), atom(b1), atom(c3), atom(d2), atom(e1), atom(b2), atom(c4), atom(c5), atom(d3), atom(d4), atom(d5), atom(e2), atom(e3), atom(e4), atom(e5), atom(f2), atom(f3), atom(f4), atom(f5), atom(g3), atom(g4), atom(g5), atom(h1), atom(h2), atom(i1)]).
