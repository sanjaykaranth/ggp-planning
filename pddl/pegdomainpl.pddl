(define (domain peg)
    (:requirements :adl :typing)
  
  (:types row col pegempty pegnumber)
  
  (:predicates (hole ?X - row ?Y - col ?Z - pegempty) (pegs ?N - pegnumber) (d_row ?R - row) (d_column ?C - col) (d_pc ?X1 ?X2 - col) (d_nc ?X1 ?X2 - col) (d_pr ?X1 ?X2 - row) (d_nr ?X1 ?X2 - row) (d_succ ?S1 ?S2 - pegnumber))

  (:constants a b c d e f g - row c1 c2 c3 c4 c5 c6 c7 - col peg empty - pegempty s1 s2 s3 s4 s5 s6  s7 s8 s9 s10 s11 s12 s13 s14 s15 s16 s17 s18 s19 s20 s21 s22 s23 s24 s25 s26 s27 s28 s29 s30 s31 s32 - pegnumber)

  (:action jump 
	   :parameters (?A - row ?B - col ?C - row ?D - col)

	 :precondition (exists (?V546449 - col ?V546448 - row) 
			       (and (hole ?A ?B peg) (hole ?C ?D empty) 
				    (or 
				     (and (= ?C ?V546448) (= ?V546448 ?A) (d_pc ?B ?V546449) (d_nc ?D ?V546449) (d_row ?V546448))
				     (and (= ?C ?V546448) (= ?V546448 ?A) (d_nc ?B ?V546449) (d_pc ?D ?V546449) (d_row ?V546448)) 
				     (and (= ?D ?V546449) (= ?V546449 ?B) (d_pr ?A ?V546448) (d_nr ?C ?V546448) (d_column ?V546449))
				     (and (= ?D ?V546449) (= ?V546449 ?B) (d_nr ?A ?V546448) (d_pr ?C ?V546448) (d_column ?V546449))) 
				    (hole ?V546448 ?V546449 peg)))


	 :effect
	 (and
	  (forall (?P - row ?Q - col ?R - pegempty)
		  (when (and (or (and (= ?B ?Q) (= ?A ?P) (= ?R empty)) (and (= ?A ?C) (= ?C ?P) (= ?R empty) (d_pc ?B ?Q) (d_nc ?D ?Q) (d_row ?A)) (and (= ?A ?C) (= ?C ?P) (= ?R empty) (d_nc ?B ?Q) (d_pc ?D ?Q) (d_row ?A)) (and (= ?B ?D) (= ?D ?Q) (= ?R empty) (d_pr ?A ?P) (d_nr ?C ?P) (d_column ?B)) (and (= ?B ?D) (= ?D ?Q) (= ?R empty) (d_nr ?A ?P) (d_pr ?C ?P) (d_column ?B)) (and (= ?D ?Q) (= ?C ?P) (= ?R peg))) (not (hole ?P ?Q ?R)))
		    (hole ?P ?Q ?R)))
	  (forall (?P - row ?Q - col ?R - pegempty)
		  (when (and 
			 (not (and (= ?A ?P) (= ?B ?Q) (= ?R empty))) 
			 (not (and (= ?R empty) (or (and (= ?P ?A) (= ?A ?C) (d_pc ?B ?Q) (d_nc ?D ?Q) (d_row ?C)) (and (= ?P ?A) (= ?A ?C) (d_nc ?B ?Q) (d_pc ?D ?Q) (d_row ?C)) (and (= ?Q ?B) (= ?B ?D) (d_pr ?A ?P) (d_nr ?C ?P) (d_column ?D)) (and (= ?Q ?B) (= ?B ?D) (d_nr ?A ?P) (d_pr ?C ?P) (d_column ?D))))) 
			 (not (and (= ?C ?P) (= ?D ?Q) (= ?R peg)))
			 (not (and (= ?R empty) (not (= ?P ?C)))) 
			 (not (and (= ?R empty) (not (= ?Q ?D)))) 
			 (not (and (= ?R peg) 
				   (exists (?V546360 - col ?V546359 - row) 
					   (and 
					    (not (= ?P ?A)) 
					    (or 
					     (and (= ?C ?V546359) (= ?V546359 ?A) (d_pc ?B ?V546360) (d_nc ?D ?V546360) (d_row ?V546359)) 
					     (and (= ?C ?V546359) (= ?V546359 ?A) (d_nc ?B ?V546360) (d_pc ?D ?V546360) (d_row ?V546359))
					     (and (= ?D ?V546360) (= ?V546360 ?B) (d_pr ?A ?V546359) (d_nr ?C ?V546359) (d_column ?V546360))
					     (and (= ?D ?V546360) (= ?V546360 ?B) (d_nr ?A ?V546359) (d_pr ?C ?V546359) (d_column ?V546360)))
					    (not (= ?P ?V546359))))))

			 (not (and (= ?R peg) (exists (?V546398 - col ?V546397 - row) (and (not (= ?Q ?B)) (or (and (= ?C ?V546397) (= ?V546397 ?A) (d_pc ?B ?V546398) (d_nc ?D ?V546398) (d_row ?V546397)) (and (= ?C ?V546397) (= ?V546397 ?A) (d_nc ?B ?V546398) (d_pc ?D ?V546398) (d_row ?V546397)) (and (= ?D ?V546398) (= ?V546398 ?B) (d_pr ?A ?V546397) (d_nr ?C ?V546397) (d_column ?V546398)) (and (= ?D ?V546398) (= ?V546398 ?B) (d_nr ?A ?V546397) (d_pr ?C ?V546397) (d_column ?V546398))) (not (= ?Q ?V546398))))))
			 (hole ?P ?Q ?R))
		    (not (hole ?P ?Q ?R))))

	  (forall (?N - pegnumber)
		  (when (exists (?V546660 - pegnumber) (and (pegs ?V546660) (d_succ ?N ?V546660) (not (pegs ?N))))
		    (pegs ?N)))
	  (forall (?N - pegnumber)
		  (when (and (not (exists (?V546267 - pegnumber) (and (pegs ?V546267) (d_succ ?N ?V546267)))) (pegs ?N))
		    (not (pegs ?N)))))))
