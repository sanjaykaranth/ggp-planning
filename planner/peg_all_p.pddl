(define (problem peg)	
	 (:domain peg)
(:init (hole a c3 peg) (hole a c4 peg) (hole a c5 peg) (hole b c3 peg) (hole b c4 peg) (hole b c5 peg) (hole c c1 peg) (hole c c2 peg) (hole c c3 peg) (hole c c4 peg) (hole c c5 peg) (hole c c6 peg) (hole c c7 peg) (hole d c1 peg) (hole d c2 peg) (hole d c3 peg) (hole d c4 empty) (hole d c5 peg) (hole d c6 peg) (hole d c7 peg) (hole e c1 peg) (hole e c2 peg) (hole e c3 peg) (hole e c4 peg) (hole e c5 peg) (hole e c6 peg) (hole e c7 peg) (hole f c3 peg) (hole f c4 peg) (hole f c5 peg) (hole g c3 peg) (hole g c4 peg) (hole g c5 peg) (pegs s32) (d_nc c1 c2) (d_nc c2 c3) (d_nc c3 c4) (d_nc c4 c5) (d_nc c5 c6) (d_nc c6 c7) (d_pc c2 c1) (d_pc c3 c2) (d_pc c4 c3) (d_pc c5 c4) (d_pc c6 c5) (d_pc c7 c6) (d_column c1) (d_column c2) (d_column c3) (d_column c4) (d_column c5) (d_column c6) (d_column c7) (d_nr a b) (d_nr b c) (d_nr c d) (d_nr d e) (d_nr e f) (d_nr f g) (d_pr b a) (d_pr c b) (d_pr d c) (d_pr e d) (d_pr f e) (d_pr g f) (d_row a) (d_row b) (d_row c) (d_row d) (d_row e) (d_row f) (d_row g) (d_succ s1 s2) (d_succ s2 s3) (d_succ s3 s4) (d_succ s4 s5) (d_succ s5 s6) (d_succ s6 s7) (d_succ s7 s8) (d_succ s8 s9) (d_succ s9 s10) (d_succ s10 s11) (d_succ s11 s12) (d_succ s12 s13) (d_succ s13 s14) (d_succ s14 s15) (d_succ s15 s16) (d_succ s16 s17) (d_succ s17 s18) (d_succ s18 s19) (d_succ s19 s20) (d_succ s20 s21) (d_succ s21 s22) (d_succ s22 s23) (d_succ s23 s24) (d_succ s24 s25) (d_succ s25 s26) (d_succ s26 s27) (d_succ s27 s28) (d_succ s28 s29) (d_succ s29 s30) (d_succ s30 s31) (d_succ s31 s32))
(:goal (rgoal g100)))
