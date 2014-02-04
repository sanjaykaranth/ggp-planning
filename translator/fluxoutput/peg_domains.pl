:- module(peg_domains, [
                                 arg2domainname/2,
                                 domainname2domainelements/2,
                                 all_domainnames/1
                             ], eclipse_language).
all_domainnames([dom_of_function_hole_3_3, dom_of_predicate_d_role_1_1, dom_of_predicate_d_next_1_1, dom_of_predicate_d_legal_2_2, dom_of_function_hole_3_1, dom_of_predicate_d_goal_2_2, dom_of_function_pegs_1_1, dom_of_function_hole_3_2]).
all_argstacks([[arg(predicate, 2, d_legal / 2), arg(function, 3, jump / 4)], [arg(predicate, 2, d_legal / 2), arg(function, 4, jump / 4)], [arg(predicate, 1, d_next / 1), arg(function, 1, hole / 3)], [arg(predicate, 1, d_role / 1)], [arg(predicate, 1, d_next / 1), arg(function, 2, hole / 3)], [arg(predicate, 1, d_middle / 6)], [arg(predicate, 1, d_init / 1)], [arg(predicate, 1, d_init / 1), arg(function, 1, pegs / 1)], [arg(predicate, 1, d_next / 1), arg(function, 3, hole / 3)], [arg(predicate, 2, d_does / 2), arg(function, 1, jump / 4)], [arg(predicate, 2, d_middle / 6)], [arg(predicate, 2, d_does / 2), arg(function, 2, jump / 4)], [arg(predicate, 3, d_middle / 6)], [arg(predicate, 1, d_legal / 2)], [arg(predicate, 2, d_does / 2), arg(function, 3, jump / 4)], [arg(predicate, 4, d_middle / 6)], [arg(predicate, 1, d_init / 1), arg(function, 1, hole / 3)], [arg(predicate, 1, d_succ / 2)], [arg(predicate, 2, d_legal / 2)], [arg(predicate, 2, d_does / 2), arg(function, 4, jump / 4)], [arg(predicate, 5, d_middle / 6)], [arg(predicate, 1, d_true / 1), arg(function, 1, pegs / 1)], [arg(predicate, 1, d_true / 1)], [arg(predicate, 1, d_init / 1), arg(function, 2, hole / 3)], [arg(predicate, 2, d_succ / 2)], [arg(predicate, 1, d_row / 1)], [arg(predicate, 6, d_middle / 6)], [arg(predicate, 1, d_nr / 2)], [arg(predicate, 1, d_init / 1), arg(function, 3, hole / 3)], [arg(predicate, 2, d_nr / 2)], [arg(predicate, 1, d_nc / 2)], [arg(predicate, 1, d_true / 1), arg(function, 1, hole / 3)], [arg(predicate, 1, d_pr / 2)], [arg(predicate, 2, d_nc / 2)], [arg(predicate, 1, d_true / 1), arg(function, 2, hole / 3)], [arg(predicate, 1, d_does / 2)], [arg(predicate, 2, d_pr / 2)], [arg(predicate, 1, d_goal / 2)], [arg(predicate, 1, d_pc / 2)], [arg(predicate, 2, d_does / 2)], [arg(predicate, 1, d_true / 1), arg(function, 3, hole / 3)], [arg(predicate, 2, d_goal / 2)], [arg(predicate, 2, d_pc / 2)], [arg(predicate, 1, d_column / 1)], [arg(predicate, 2, d_legal / 2), arg(function, 1, jump / 4)], [arg(predicate, 1, d_next / 1), arg(function, 1, pegs / 1)], [arg(predicate, 1, d_next / 1)], [arg(predicate, 2, d_legal / 2), arg(function, 2, jump / 4)]]).
argstack2domain2(a([arg(predicate, 1, d_column / 1)]), [atom(c1), atom(c2), atom(c3), atom(c4), atom(c5), atom(c6), atom(c7)]).
argstack2domain2(a([arg(predicate, 1, d_does / 2)]), [atom(jumper)]).
argstack2domain2(a([arg(predicate, 1, d_goal / 2)]), [atom(jumper)]).
argstack2domain2(a([arg(predicate, 1, d_init / 1)]), [function(hole / 3), function(pegs / 1)]).
argstack2domain2(a([arg(predicate, 1, d_init / 1), arg(function, 1, hole / 3)]), [atom(a), atom(b), atom(c), atom(d), atom(e), atom(f), atom(g)]).
argstack2domain2(a([arg(predicate, 1, d_init / 1), arg(function, 1, pegs / 1)]), [atom(s32)]).
argstack2domain2(a([arg(predicate, 1, d_init / 1), arg(function, 2, hole / 3)]), [atom(c1), atom(c2), atom(c6), atom(c7), atom(c3), atom(c4), atom(c5)]).
argstack2domain2(a([arg(predicate, 1, d_init / 1), arg(function, 3, hole / 3)]), [atom(empty), atom(peg)]).
argstack2domain2(a([arg(predicate, 1, d_legal / 2)]), [atom(jumper)]).
argstack2domain2(a([arg(predicate, 1, d_middle / 6)]), [atom(a), atom(b), atom(c), atom(d), atom(e), atom(f), atom(g)]).
argstack2domain2(a([arg(predicate, 1, d_nc / 2)]), [atom(c1), atom(c2), atom(c3), atom(c4), atom(c5), atom(c6)]).
argstack2domain2(a([arg(predicate, 1, d_next / 1)]), [function(pegs / 1), function(hole / 3)]).
argstack2domain2(a([arg(predicate, 1, d_next / 1), arg(function, 1, hole / 3)]), [atom(a), atom(b), atom(c), atom(d), atom(e), atom(f), atom(g)]).
argstack2domain2(a([arg(predicate, 1, d_next / 1), arg(function, 1, pegs / 1)]), [atom(s1), atom(s2), atom(s3), atom(s4), atom(s5), atom(s6), atom(s7), atom(s8), atom(s9), atom(s10), atom(s11), atom(s12), atom(s13), atom(s14), atom(s15), atom(s16), atom(s17), atom(s18), atom(s19), atom(s20), atom(s21), atom(s22), atom(s23), atom(s24), atom(s25), atom(s26), atom(s27), atom(s28), atom(s29), atom(s30), atom(s31)]).
argstack2domain2(a([arg(predicate, 1, d_next / 1), arg(function, 2, hole / 3)]), [atom(c1), atom(c7), atom(c2), atom(c3), atom(c4), atom(c5), atom(c6)]).
argstack2domain2(a([arg(predicate, 1, d_next / 1), arg(function, 3, hole / 3)]), [atom(empty), atom(peg)]).
argstack2domain2(a([arg(predicate, 1, d_nr / 2)]), [atom(a), atom(b), atom(c), atom(d), atom(e), atom(f)]).
argstack2domain2(a([arg(predicate, 1, d_pc / 2)]), [atom(c2), atom(c3), atom(c4), atom(c5), atom(c6), atom(c7)]).
argstack2domain2(a([arg(predicate, 1, d_pr / 2)]), [atom(b), atom(c), atom(d), atom(e), atom(f), atom(g)]).
argstack2domain2(a([arg(predicate, 1, d_role / 1)]), [atom(jumper)]).
argstack2domain2(a([arg(predicate, 1, d_row / 1)]), [atom(a), atom(b), atom(c), atom(d), atom(e), atom(f), atom(g)]).
argstack2domain2(a([arg(predicate, 1, d_succ / 2)]), [atom(s1), atom(s2), atom(s3), atom(s4), atom(s5), atom(s6), atom(s7), atom(s8), atom(s9), atom(s10), atom(s11), atom(s12), atom(s13), atom(s14), atom(s15), atom(s16), atom(s17), atom(s18), atom(s19), atom(s20), atom(s21), atom(s22), atom(s23), atom(s24), atom(s25), atom(s26), atom(s27), atom(s28), atom(s29), atom(s30), atom(s31)]).
argstack2domain2(a([arg(predicate, 1, d_true / 1)]), [function(hole / 3), function(pegs / 1)]).
argstack2domain2(a([arg(predicate, 1, d_true / 1), arg(function, 1, hole / 3)]), [atom(a), atom(b), atom(c), atom(d), atom(e), atom(f), atom(g)]).
argstack2domain2(a([arg(predicate, 1, d_true / 1), arg(function, 1, pegs / 1)]), [atom(s1), atom(s2), atom(s3), atom(s4), atom(s5), atom(s6), atom(s7), atom(s8), atom(s9), atom(s10), atom(s11), atom(s12), atom(s13), atom(s14), atom(s15), atom(s16), atom(s17), atom(s18), atom(s19), atom(s20), atom(s21), atom(s22), atom(s23), atom(s24), atom(s25), atom(s26), atom(s27), atom(s28), atom(s29), atom(s30), atom(s31), atom(s32)]).
argstack2domain2(a([arg(predicate, 1, d_true / 1), arg(function, 2, hole / 3)]), [atom(c1), atom(c2), atom(c6), atom(c7), atom(c3), atom(c4), atom(c5)]).
argstack2domain2(a([arg(predicate, 1, d_true / 1), arg(function, 3, hole / 3)]), [atom(empty), atom(peg)]).
argstack2domain2(a([arg(predicate, 2, d_does / 2)]), [function(jump / 4)]).
argstack2domain2(a([arg(predicate, 2, d_does / 2), arg(function, 1, jump / 4)]), [atom(a), atom(b), atom(c), atom(d), atom(e), atom(f), atom(g)]).
argstack2domain2(a([arg(predicate, 2, d_does / 2), arg(function, 2, jump / 4)]), [atom(c7), atom(c1), atom(c2), atom(c3), atom(c4), atom(c5), atom(c6)]).
argstack2domain2(a([arg(predicate, 2, d_does / 2), arg(function, 3, jump / 4)]), [atom(a), atom(b), atom(c), atom(d), atom(e), atom(f), atom(g)]).
argstack2domain2(a([arg(predicate, 2, d_does / 2), arg(function, 4, jump / 4)]), [atom(c7), atom(c1), atom(c2), atom(c3), atom(c4), atom(c5), atom(c6)]).
argstack2domain2(a([arg(predicate, 2, d_goal / 2)]), [atom(100), atom(99), atom(90), atom(80), atom(70), atom(60), atom(50), atom(40), atom(30), atom(20), atom(10), atom(0)]).
argstack2domain2(a([arg(predicate, 2, d_legal / 2)]), [function(jump / 4)]).
argstack2domain2(a([arg(predicate, 2, d_legal / 2), arg(function, 1, jump / 4)]), [atom(a), atom(b), atom(c), atom(d), atom(e), atom(f), atom(g)]).
argstack2domain2(a([arg(predicate, 2, d_legal / 2), arg(function, 2, jump / 4)]), [atom(c7), atom(c1), atom(c2), atom(c3), atom(c4), atom(c5), atom(c6)]).
argstack2domain2(a([arg(predicate, 2, d_legal / 2), arg(function, 3, jump / 4)]), [atom(a), atom(b), atom(c), atom(d), atom(e), atom(f), atom(g)]).
argstack2domain2(a([arg(predicate, 2, d_legal / 2), arg(function, 4, jump / 4)]), [atom(c7), atom(c1), atom(c2), atom(c3), atom(c4), atom(c5), atom(c6)]).
argstack2domain2(a([arg(predicate, 2, d_middle / 6)]), [atom(c7), atom(c1), atom(c2), atom(c3), atom(c4), atom(c5), atom(c6)]).
argstack2domain2(a([arg(predicate, 2, d_nc / 2)]), [atom(c2), atom(c3), atom(c4), atom(c5), atom(c6), atom(c7)]).
argstack2domain2(a([arg(predicate, 2, d_nr / 2)]), [atom(b), atom(c), atom(d), atom(e), atom(f), atom(g)]).
argstack2domain2(a([arg(predicate, 2, d_pc / 2)]), [atom(c1), atom(c2), atom(c3), atom(c4), atom(c5), atom(c6)]).
argstack2domain2(a([arg(predicate, 2, d_pr / 2)]), [atom(a), atom(b), atom(c), atom(d), atom(e), atom(f)]).
argstack2domain2(a([arg(predicate, 2, d_succ / 2)]), [atom(s2), atom(s3), atom(s4), atom(s5), atom(s6), atom(s7), atom(s8), atom(s9), atom(s10), atom(s11), atom(s12), atom(s13), atom(s14), atom(s15), atom(s16), atom(s17), atom(s18), atom(s19), atom(s20), atom(s21), atom(s22), atom(s23), atom(s24), atom(s25), atom(s26), atom(s27), atom(s28), atom(s29), atom(s30), atom(s31), atom(s32)]).
argstack2domain2(a([arg(predicate, 3, d_middle / 6)]), [atom(a), atom(b), atom(c), atom(d), atom(e), atom(f), atom(g)]).
argstack2domain2(a([arg(predicate, 4, d_middle / 6)]), [atom(c1), atom(c7), atom(c2), atom(c3), atom(c4), atom(c5), atom(c6)]).
argstack2domain2(a([arg(predicate, 5, d_middle / 6)]), [atom(a), atom(b), atom(c), atom(d), atom(e), atom(f), atom(g)]).
argstack2domain2(a([arg(predicate, 6, d_middle / 6)]), [atom(c7), atom(c1), atom(c2), atom(c3), atom(c4), atom(c5), atom(c6)]).
domainname2args(dom_of_function_hole_3_3, [arg(function, 3, hole / 3)]).
domainname2args(dom_of_predicate_d_role_1_1, [arg(predicate, 1, d_does / 2), arg(predicate, 1, d_goal / 2), arg(predicate, 1, d_legal / 2), arg(predicate, 1, d_role / 1)]).
domainname2args(dom_of_predicate_d_next_1_1, [arg(predicate, 1, d_init / 1), arg(predicate, 1, d_true / 1), arg(predicate, 1, d_next / 1)]).
domainname2args(dom_of_predicate_d_legal_2_2, [arg(predicate, 2, d_does / 2), arg(predicate, 2, d_legal / 2)]).
domainname2args(dom_of_function_hole_3_1, [arg(predicate, 2, d_nr / 2), arg(predicate, 1, d_nr / 2), arg(predicate, 2, d_pr / 2), arg(predicate, 1, d_pr / 2), arg(predicate, 1, d_row / 1), arg(predicate, 5, d_middle / 6), arg(function, 3, jump / 4), arg(predicate, 3, d_middle / 6), arg(predicate, 1, d_middle / 6), arg(function, 1, jump / 4), arg(function, 1, hole / 3)]).
domainname2args(dom_of_predicate_d_goal_2_2, [arg(predicate, 2, d_goal / 2)]).
domainname2args(dom_of_function_pegs_1_1, [arg(predicate, 2, d_succ / 2), arg(predicate, 1, d_succ / 2), arg(function, 1, pegs / 1)]).
domainname2args(dom_of_function_hole_3_2, [arg(predicate, 1, d_column / 1), arg(predicate, 2, d_nc / 2), arg(predicate, 1, d_nc / 2), arg(predicate, 2, d_pc / 2), arg(predicate, 1, d_pc / 2), arg(predicate, 6, d_middle / 6), arg(function, 4, jump / 4), arg(predicate, 4, d_middle / 6), arg(predicate, 2, d_middle / 6), arg(function, 2, jump / 4), arg(function, 2, hole / 3)]).
arg2domainname(arg(function, 1, pegs / 1), dom_of_function_pegs_1_1).
arg2domainname(arg(predicate, 2, d_nr / 2), dom_of_function_hole_3_1).
arg2domainname(arg(predicate, 1, d_nc / 2), dom_of_function_hole_3_2).
arg2domainname(arg(function, 2, jump / 4), dom_of_function_hole_3_2).
arg2domainname(arg(predicate, 2, d_pr / 2), dom_of_function_hole_3_1).
arg2domainname(arg(predicate, 1, d_pc / 2), dom_of_function_hole_3_2).
arg2domainname(arg(function, 4, jump / 4), dom_of_function_hole_3_2).
arg2domainname(arg(predicate, 1, d_goal / 2), dom_of_predicate_d_role_1_1).
arg2domainname(arg(predicate, 1, d_does / 2), dom_of_predicate_d_role_1_1).
arg2domainname(arg(predicate, 2, d_middle / 6), dom_of_function_hole_3_2).
arg2domainname(arg(function, 2, hole / 3), dom_of_function_hole_3_2).
arg2domainname(arg(predicate, 1, d_column / 1), dom_of_function_hole_3_2).
arg2domainname(arg(predicate, 4, d_middle / 6), dom_of_function_hole_3_2).
arg2domainname(arg(predicate, 1, d_succ / 2), dom_of_function_pegs_1_1).
arg2domainname(arg(predicate, 2, d_legal / 2), dom_of_predicate_d_legal_2_2).
arg2domainname(arg(predicate, 1, d_nr / 2), dom_of_function_hole_3_1).
arg2domainname(arg(predicate, 6, d_middle / 6), dom_of_function_hole_3_2).
arg2domainname(arg(function, 1, jump / 4), dom_of_function_hole_3_1).
arg2domainname(arg(predicate, 1, d_role / 1), dom_of_predicate_d_role_1_1).
arg2domainname(arg(predicate, 1, d_pr / 2), dom_of_function_hole_3_1).
arg2domainname(arg(predicate, 2, d_nc / 2), dom_of_function_hole_3_2).
arg2domainname(arg(function, 3, jump / 4), dom_of_function_hole_3_1).
arg2domainname(arg(predicate, 1, d_middle / 6), dom_of_function_hole_3_1).
arg2domainname(arg(predicate, 1, d_init / 1), dom_of_predicate_d_next_1_1).
arg2domainname(arg(function, 1, hole / 3), dom_of_function_hole_3_1).
arg2domainname(arg(predicate, 2, d_goal / 2), dom_of_predicate_d_goal_2_2).
arg2domainname(arg(predicate, 2, d_pc / 2), dom_of_function_hole_3_2).
arg2domainname(arg(predicate, 2, d_does / 2), dom_of_predicate_d_legal_2_2).
arg2domainname(arg(predicate, 3, d_middle / 6), dom_of_function_hole_3_1).
arg2domainname(arg(predicate, 1, d_legal / 2), dom_of_predicate_d_role_1_1).
arg2domainname(arg(function, 3, hole / 3), dom_of_function_hole_3_3).
arg2domainname(arg(predicate, 1, d_next / 1), dom_of_predicate_d_next_1_1).
arg2domainname(arg(predicate, 1, d_row / 1), dom_of_function_hole_3_1).
arg2domainname(arg(predicate, 5, d_middle / 6), dom_of_function_hole_3_1).
arg2domainname(arg(predicate, 2, d_succ / 2), dom_of_function_pegs_1_1).
arg2domainname(arg(predicate, 1, d_true / 1), dom_of_predicate_d_next_1_1).
domainname2domainelements(dom_of_function_hole_3_3, [atom(empty), atom(peg)]).
domainname2domainelements(dom_of_predicate_d_role_1_1, [atom(jumper)]).
domainname2domainelements(dom_of_predicate_d_next_1_1, [function(hole / 3), function(pegs / 1)]).
domainname2domainelements(dom_of_predicate_d_legal_2_2, [function(jump / 4)]).
domainname2domainelements(dom_of_function_hole_3_1, [atom(a), atom(b), atom(c), atom(d), atom(e), atom(f), atom(g)]).
domainname2domainelements(dom_of_predicate_d_goal_2_2, [atom(100), atom(99), atom(90), atom(80), atom(70), atom(60), atom(50), atom(40), atom(30), atom(20), atom(10), atom(0)]).
domainname2domainelements(dom_of_function_pegs_1_1, [atom(s1), atom(s2), atom(s3), atom(s4), atom(s5), atom(s6), atom(s7), atom(s8), atom(s9), atom(s10), atom(s11), atom(s12), atom(s13), atom(s14), atom(s15), atom(s16), atom(s17), atom(s18), atom(s19), atom(s20), atom(s21), atom(s22), atom(s23), atom(s24), atom(s25), atom(s26), atom(s27), atom(s28), atom(s29), atom(s30), atom(s31), atom(s32)]).
domainname2domainelements(dom_of_function_hole_3_2, [atom(c1), atom(c2), atom(c3), atom(c4), atom(c5), atom(c6), atom(c7)]).
