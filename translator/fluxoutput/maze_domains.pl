:- module(maze_domains, [
                                 arg2domainname/2,
                                 domainname2domainelements/2,
                                 all_domainnames/1
                             ], eclipse_language).
all_domainnames([dom_of_function_step_1_1, dom_of_function_cell_1_1, dom_of_predicate_d_role_1_1, dom_of_predicate_d_next_1_1, dom_of_predicate_d_legal_2_2, dom_of_predicate_d_goal_2_2]).
all_argstacks([[arg(predicate, 1, d_role / 1)], [arg(predicate, 1, d_adjacent / 2)], [arg(predicate, 1, d_next / 1), arg(function, 1, step / 1)], [arg(predicate, 2, d_adjacent / 2)], [arg(predicate, 1, d_init / 1)], [arg(predicate, 1, d_init / 1), arg(function, 1, cell / 1)], [arg(predicate, 1, d_legal / 2)], [arg(predicate, 1, d_next / 1), arg(function, 1, gold / 1)], [arg(predicate, 2, d_legal / 2)], [arg(predicate, 1, d_succ / 2)], [arg(predicate, 1, d_true / 1)], [arg(predicate, 2, d_succ / 2)], [arg(predicate, 1, d_true / 1), arg(function, 1, cell / 1)], [arg(predicate, 1, d_init / 1), arg(function, 1, step / 1)], [arg(predicate, 1, d_init / 1), arg(function, 1, gold / 1)], [arg(predicate, 1, d_does / 2)], [arg(predicate, 1, d_goal / 2)], [arg(predicate, 1, d_true / 1), arg(function, 1, step / 1)], [arg(predicate, 2, d_does / 2)], [arg(predicate, 2, d_goal / 2)], [arg(predicate, 1, d_true / 1), arg(function, 1, gold / 1)], [arg(predicate, 1, d_next / 1)], [arg(predicate, 1, d_next / 1), arg(function, 1, cell / 1)]]).
argstack2domain2(a([arg(predicate, 1, d_adjacent / 2)]), [atom(a), atom(b), atom(c), atom(d)]).
argstack2domain2(a([arg(predicate, 1, d_does / 2)]), [atom(robot)]).
argstack2domain2(a([arg(predicate, 1, d_goal / 2)]), [atom(robot)]).
argstack2domain2(a([arg(predicate, 1, d_init / 1)]), [function(cell / 1), function(gold / 1), function(step / 1)]).
argstack2domain2(a([arg(predicate, 1, d_init / 1), arg(function, 1, cell / 1)]), [atom(a)]).
argstack2domain2(a([arg(predicate, 1, d_init / 1), arg(function, 1, gold / 1)]), [atom(c)]).
argstack2domain2(a([arg(predicate, 1, d_init / 1), arg(function, 1, step / 1)]), [atom(1)]).
argstack2domain2(a([arg(predicate, 1, d_legal / 2)]), [atom(robot)]).
argstack2domain2(a([arg(predicate, 1, d_next / 1)]), [function(cell / 1), function(gold / 1), function(step / 1)]).
argstack2domain2(a([arg(predicate, 1, d_next / 1), arg(function, 1, cell / 1)]), [atom(b), atom(c), atom(d), atom(a)]).
argstack2domain2(a([arg(predicate, 1, d_next / 1), arg(function, 1, gold / 1)]), [atom(b), atom(d), atom(a), atom(c), atom(i)]).
argstack2domain2(a([arg(predicate, 1, d_next / 1), arg(function, 1, step / 1)]), [atom(2), atom(3), atom(4), atom(5), atom(6), atom(7), atom(8), atom(9), atom(10)]).
argstack2domain2(a([arg(predicate, 1, d_role / 1)]), [atom(robot)]).
argstack2domain2(a([arg(predicate, 1, d_succ / 2)]), [atom(1), atom(2), atom(3), atom(4), atom(5), atom(6), atom(7), atom(8), atom(9)]).
argstack2domain2(a([arg(predicate, 1, d_true / 1)]), [function(cell / 1), function(gold / 1), function(step / 1)]).
argstack2domain2(a([arg(predicate, 1, d_true / 1), arg(function, 1, cell / 1)]), [atom(b), atom(c), atom(d), atom(a)]).
argstack2domain2(a([arg(predicate, 1, d_true / 1), arg(function, 1, gold / 1)]), [atom(b), atom(d), atom(a), atom(i), atom(c)]).
argstack2domain2(a([arg(predicate, 1, d_true / 1), arg(function, 1, step / 1)]), [atom(2), atom(3), atom(4), atom(5), atom(6), atom(7), atom(8), atom(9), atom(10), atom(1)]).
argstack2domain2(a([arg(predicate, 2, d_adjacent / 2)]), [atom(b), atom(c), atom(d), atom(a)]).
argstack2domain2(a([arg(predicate, 2, d_does / 2)]), [atom(move), atom(grab), atom(drop)]).
argstack2domain2(a([arg(predicate, 2, d_goal / 2)]), [atom(100), atom(0)]).
argstack2domain2(a([arg(predicate, 2, d_legal / 2)]), [atom(move), atom(grab), atom(drop)]).
argstack2domain2(a([arg(predicate, 2, d_succ / 2)]), [atom(2), atom(3), atom(4), atom(5), atom(6), atom(7), atom(8), atom(9), atom(10)]).
domainname2args(dom_of_function_step_1_1, [arg(predicate, 2, d_succ / 2), arg(predicate, 1, d_succ / 2), arg(function, 1, step / 1)]).
domainname2args(dom_of_function_cell_1_1, [arg(function, 1, gold / 1), arg(predicate, 2, d_adjacent / 2), arg(predicate, 1, d_adjacent / 2), arg(function, 1, cell / 1)]).
domainname2args(dom_of_predicate_d_role_1_1, [arg(predicate, 1, d_does / 2), arg(predicate, 1, d_goal / 2), arg(predicate, 1, d_legal / 2), arg(predicate, 1, d_role / 1)]).
domainname2args(dom_of_predicate_d_next_1_1, [arg(predicate, 1, d_init / 1), arg(predicate, 1, d_true / 1), arg(predicate, 1, d_next / 1)]).
domainname2args(dom_of_predicate_d_legal_2_2, [arg(predicate, 2, d_does / 2), arg(predicate, 2, d_legal / 2)]).
domainname2args(dom_of_predicate_d_goal_2_2, [arg(predicate, 2, d_goal / 2)]).
arg2domainname(arg(predicate, 1, d_adjacent / 2), dom_of_function_cell_1_1).
arg2domainname(arg(predicate, 1, d_goal / 2), dom_of_predicate_d_role_1_1).
arg2domainname(arg(predicate, 1, d_does / 2), dom_of_predicate_d_role_1_1).
arg2domainname(arg(predicate, 1, d_succ / 2), dom_of_function_step_1_1).
arg2domainname(arg(predicate, 2, d_legal / 2), dom_of_predicate_d_legal_2_2).
arg2domainname(arg(predicate, 1, d_role / 1), dom_of_predicate_d_role_1_1).
arg2domainname(arg(function, 1, cell / 1), dom_of_function_cell_1_1).
arg2domainname(arg(predicate, 2, d_adjacent / 2), dom_of_function_cell_1_1).
arg2domainname(arg(predicate, 1, d_init / 1), dom_of_predicate_d_next_1_1).
arg2domainname(arg(predicate, 2, d_goal / 2), dom_of_predicate_d_goal_2_2).
arg2domainname(arg(predicate, 2, d_does / 2), dom_of_predicate_d_legal_2_2).
arg2domainname(arg(predicate, 1, d_legal / 2), dom_of_predicate_d_role_1_1).
arg2domainname(arg(function, 1, step / 1), dom_of_function_step_1_1).
arg2domainname(arg(predicate, 1, d_next / 1), dom_of_predicate_d_next_1_1).
arg2domainname(arg(predicate, 2, d_succ / 2), dom_of_function_step_1_1).
arg2domainname(arg(predicate, 1, d_true / 1), dom_of_predicate_d_next_1_1).
arg2domainname(arg(function, 1, gold / 1), dom_of_function_cell_1_1).
domainname2domainelements(dom_of_function_step_1_1, [atom(1), atom(2), atom(3), atom(4), atom(5), atom(6), atom(7), atom(8), atom(9), atom(10)]).
domainname2domainelements(dom_of_function_cell_1_1, [atom(b), atom(d), atom(a), atom(i), atom(c)]).
domainname2domainelements(dom_of_predicate_d_role_1_1, [atom(robot)]).
domainname2domainelements(dom_of_predicate_d_next_1_1, [function(cell / 1), function(gold / 1), function(step / 1)]).
domainname2domainelements(dom_of_predicate_d_legal_2_2, [atom(move), atom(grab), atom(drop)]).
domainname2domainelements(dom_of_predicate_d_goal_2_2, [atom(100), atom(0)]).
