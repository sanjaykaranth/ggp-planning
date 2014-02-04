:- module(lightsout_domains, [
                                 arg2domainname/2,
                                 domainname2domainelements/2,
                                 all_domainnames/1
                             ], eclipse_language).
all_domainnames([dom_of_function_switch_2_2, dom_of_function_cell_3_3, dom_of_function_step_1_1, dom_of_predicate_d_role_1_1, dom_of_predicate_d_next_1_1, dom_of_predicate_d_legal_2_2, dom_of_predicate_d_goal_2_2]).
all_argstacks([[arg(predicate, 2, d_adj / 2)], [arg(predicate, 1, d_next / 1), arg(function, 1, cell / 3)], [arg(predicate, 1, d_role / 1)], [arg(predicate, 1, d_next / 1), arg(function, 2, cell / 3)], [arg(predicate, 2, d_legal / 2), arg(function, 1, switch / 2)], [arg(predicate, 1, d_affected / 2)], [arg(predicate, 2, d_legal / 2), arg(function, 2, switch / 2)], [arg(predicate, 1, d_next / 1), arg(function, 1, step / 1)], [arg(predicate, 2, d_affected / 2)], [arg(predicate, 1, d_init / 1)], [arg(predicate, 1, d_nextstep / 2)], [arg(predicate, 1, d_next / 1), arg(function, 3, cell / 3)], [arg(predicate, 2, d_nextstep / 2)], [arg(predicate, 1, d_legal / 2)], [arg(predicate, 1, d_init / 1), arg(function, 1, cell / 3)], [arg(predicate, 1, d_coord / 1)], [arg(predicate, 2, d_legal / 2)], [arg(predicate, 1, d_true / 1)], [arg(predicate, 1, d_init / 1), arg(function, 2, cell / 3)], [arg(predicate, 2, d_does / 2), arg(function, 1, switch / 2)], [arg(predicate, 1, d_init / 1), arg(function, 3, cell / 3)], [arg(predicate, 1, d_init / 1), arg(function, 1, step / 1)], [arg(predicate, 2, d_does / 2), arg(function, 2, switch / 2)], [arg(predicate, 1, d_true / 1), arg(function, 1, cell / 3)], [arg(predicate, 1, d_true / 1), arg(function, 2, cell / 3)], [arg(predicate, 1, d_does / 2)], [arg(predicate, 1, d_goal / 2)], [arg(predicate, 1, d_true / 1), arg(function, 1, step / 1)], [arg(predicate, 1, d_true / 1), arg(function, 3, cell / 3)], [arg(predicate, 2, d_does / 2)], [arg(predicate, 2, d_goal / 2)], [arg(predicate, 1, d_next / 1)], [arg(predicate, 1, d_adj / 2)]]).
argstack2domain2(a([arg(predicate, 1, d_adj / 2)]), [atom(1), atom(2), atom(3), atom(4)]).
argstack2domain2(a([arg(predicate, 1, d_affected / 2)]), [atom(1), atom(2), atom(3), atom(4), atom(5)]).
argstack2domain2(a([arg(predicate, 1, d_coord / 1)]), [atom(1), atom(2), atom(3), atom(4), atom(5)]).
argstack2domain2(a([arg(predicate, 1, d_does / 2)]), [atom(player)]).
argstack2domain2(a([arg(predicate, 1, d_goal / 2)]), [atom(player)]).
argstack2domain2(a([arg(predicate, 1, d_init / 1)]), [function(step / 1), function(cell / 3)]).
argstack2domain2(a([arg(predicate, 1, d_init / 1), arg(function, 1, cell / 3)]), [atom(1), atom(2), atom(3), atom(4), atom(5)]).
argstack2domain2(a([arg(predicate, 1, d_init / 1), arg(function, 1, step / 1)]), [atom(0)]).
argstack2domain2(a([arg(predicate, 1, d_init / 1), arg(function, 2, cell / 3)]), [atom(1), atom(2), atom(3), atom(4), atom(5)]).
argstack2domain2(a([arg(predicate, 1, d_init / 1), arg(function, 3, cell / 3)]), [atom(light), atom(nolight)]).
argstack2domain2(a([arg(predicate, 1, d_legal / 2)]), [atom(player)]).
argstack2domain2(a([arg(predicate, 1, d_next / 1)]), [function(cell / 3), function(step / 1)]).
argstack2domain2(a([arg(predicate, 1, d_next / 1), arg(function, 1, cell / 3)]), [atom(1), atom(2), atom(3), atom(4), atom(5)]).
argstack2domain2(a([arg(predicate, 1, d_next / 1), arg(function, 1, step / 1)]), [atom(1), atom(2), atom(3), atom(4), atom(5), atom(6), atom(7), atom(8), atom(9), atom(10), atom(11), atom(12), atom(13), atom(14), atom(15), atom(16), atom(17), atom(18), atom(19), atom(20)]).
argstack2domain2(a([arg(predicate, 1, d_next / 1), arg(function, 2, cell / 3)]), [atom(1), atom(2), atom(3), atom(4), atom(5)]).
argstack2domain2(a([arg(predicate, 1, d_next / 1), arg(function, 3, cell / 3)]), [atom(light), atom(nolight)]).
argstack2domain2(a([arg(predicate, 1, d_nextstep / 2)]), [atom(0), atom(1), atom(2), atom(3), atom(4), atom(5), atom(6), atom(7), atom(8), atom(9), atom(10), atom(11), atom(12), atom(13), atom(14), atom(15), atom(16), atom(17), atom(18), atom(19)]).
argstack2domain2(a([arg(predicate, 1, d_role / 1)]), [atom(player)]).
argstack2domain2(a([arg(predicate, 1, d_true / 1)]), [function(step / 1), function(cell / 3)]).
argstack2domain2(a([arg(predicate, 1, d_true / 1), arg(function, 1, cell / 3)]), [atom(1), atom(2), atom(3), atom(4), atom(5)]).
argstack2domain2(a([arg(predicate, 1, d_true / 1), arg(function, 1, step / 1)]), [atom(1), atom(2), atom(3), atom(4), atom(5), atom(6), atom(7), atom(8), atom(9), atom(10), atom(11), atom(12), atom(13), atom(14), atom(15), atom(16), atom(17), atom(18), atom(19), atom(20), atom(0)]).
argstack2domain2(a([arg(predicate, 1, d_true / 1), arg(function, 2, cell / 3)]), [atom(1), atom(2), atom(3), atom(4), atom(5)]).
argstack2domain2(a([arg(predicate, 1, d_true / 1), arg(function, 3, cell / 3)]), [atom(light), atom(nolight)]).
argstack2domain2(a([arg(predicate, 2, d_adj / 2)]), [atom(2), atom(3), atom(4), atom(5)]).
argstack2domain2(a([arg(predicate, 2, d_affected / 2)]), [atom(1), atom(2), atom(3), atom(4), atom(5)]).
argstack2domain2(a([arg(predicate, 2, d_does / 2)]), [function(switch / 2)]).
argstack2domain2(a([arg(predicate, 2, d_does / 2), arg(function, 1, switch / 2)]), [atom(1), atom(2), atom(3), atom(4), atom(5)]).
argstack2domain2(a([arg(predicate, 2, d_does / 2), arg(function, 2, switch / 2)]), [atom(1), atom(2), atom(3), atom(4), atom(5)]).
argstack2domain2(a([arg(predicate, 2, d_goal / 2)]), [atom(100), atom(0)]).
argstack2domain2(a([arg(predicate, 2, d_legal / 2)]), [function(switch / 2)]).
argstack2domain2(a([arg(predicate, 2, d_legal / 2), arg(function, 1, switch / 2)]), [atom(1), atom(2), atom(3), atom(4), atom(5)]).
argstack2domain2(a([arg(predicate, 2, d_legal / 2), arg(function, 2, switch / 2)]), [atom(1), atom(2), atom(3), atom(4), atom(5)]).
argstack2domain2(a([arg(predicate, 2, d_nextstep / 2)]), [atom(1), atom(2), atom(3), atom(4), atom(5), atom(6), atom(7), atom(8), atom(9), atom(10), atom(11), atom(12), atom(13), atom(14), atom(15), atom(16), atom(17), atom(18), atom(19), atom(20)]).
domainname2args(dom_of_function_switch_2_2, [arg(predicate, 2, d_adj / 2), arg(predicate, 1, d_adj / 2), arg(predicate, 2, d_affected / 2), arg(function, 2, cell / 3), arg(predicate, 1, d_affected / 2), arg(function, 1, cell / 3), arg(predicate, 1, d_coord / 1), arg(function, 1, switch / 2), arg(function, 2, switch / 2)]).
domainname2args(dom_of_function_cell_3_3, [arg(function, 3, cell / 3)]).
domainname2args(dom_of_function_step_1_1, [arg(predicate, 2, d_nextstep / 2), arg(predicate, 1, d_nextstep / 2), arg(function, 1, step / 1)]).
domainname2args(dom_of_predicate_d_role_1_1, [arg(predicate, 1, d_does / 2), arg(predicate, 1, d_goal / 2), arg(predicate, 1, d_legal / 2), arg(predicate, 1, d_role / 1)]).
domainname2args(dom_of_predicate_d_next_1_1, [arg(predicate, 1, d_init / 1), arg(predicate, 1, d_true / 1), arg(predicate, 1, d_next / 1)]).
domainname2args(dom_of_predicate_d_legal_2_2, [arg(predicate, 2, d_does / 2), arg(predicate, 2, d_legal / 2)]).
domainname2args(dom_of_predicate_d_goal_2_2, [arg(predicate, 2, d_goal / 2)]).
arg2domainname(arg(predicate, 2, d_adj / 2), dom_of_function_switch_2_2).
arg2domainname(arg(predicate, 1, d_affected / 2), dom_of_function_switch_2_2).
arg2domainname(arg(predicate, 1, d_goal / 2), dom_of_predicate_d_role_1_1).
arg2domainname(arg(predicate, 1, d_does / 2), dom_of_predicate_d_role_1_1).
arg2domainname(arg(predicate, 2, d_nextstep / 2), dom_of_function_step_1_1).
arg2domainname(arg(function, 2, cell / 3), dom_of_function_switch_2_2).
arg2domainname(arg(function, 2, switch / 2), dom_of_function_switch_2_2).
arg2domainname(arg(predicate, 1, d_coord / 1), dom_of_function_switch_2_2).
arg2domainname(arg(predicate, 2, d_legal / 2), dom_of_predicate_d_legal_2_2).
arg2domainname(arg(predicate, 1, d_adj / 2), dom_of_function_switch_2_2).
arg2domainname(arg(predicate, 1, d_role / 1), dom_of_predicate_d_role_1_1).
arg2domainname(arg(predicate, 1, d_nextstep / 2), dom_of_function_step_1_1).
arg2domainname(arg(predicate, 2, d_affected / 2), dom_of_function_switch_2_2).
arg2domainname(arg(predicate, 1, d_init / 1), dom_of_predicate_d_next_1_1).
arg2domainname(arg(function, 1, cell / 3), dom_of_function_switch_2_2).
arg2domainname(arg(predicate, 2, d_goal / 2), dom_of_predicate_d_goal_2_2).
arg2domainname(arg(function, 1, switch / 2), dom_of_function_switch_2_2).
arg2domainname(arg(predicate, 2, d_does / 2), dom_of_predicate_d_legal_2_2).
arg2domainname(arg(function, 3, cell / 3), dom_of_function_cell_3_3).
arg2domainname(arg(predicate, 1, d_legal / 2), dom_of_predicate_d_role_1_1).
arg2domainname(arg(function, 1, step / 1), dom_of_function_step_1_1).
arg2domainname(arg(predicate, 1, d_next / 1), dom_of_predicate_d_next_1_1).
arg2domainname(arg(predicate, 1, d_true / 1), dom_of_predicate_d_next_1_1).
domainname2domainelements(dom_of_function_switch_2_2, [atom(1), atom(2), atom(3), atom(4), atom(5)]).
domainname2domainelements(dom_of_function_cell_3_3, [atom(light), atom(nolight)]).
domainname2domainelements(dom_of_function_step_1_1, [atom(0), atom(1), atom(2), atom(3), atom(4), atom(5), atom(6), atom(7), atom(8), atom(9), atom(10), atom(11), atom(12), atom(13), atom(14), atom(15), atom(16), atom(17), atom(18), atom(19), atom(20)]).
domainname2domainelements(dom_of_predicate_d_role_1_1, [atom(player)]).
domainname2domainelements(dom_of_predicate_d_next_1_1, [function(step / 1), function(cell / 3)]).
domainname2domainelements(dom_of_predicate_d_legal_2_2, [function(switch / 2)]).
domainname2domainelements(dom_of_predicate_d_goal_2_2, [atom(100), atom(0)]).
