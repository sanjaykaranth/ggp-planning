(define (domain puzzle)
(:types dom_of_function_cell_3_1 - object dom_of_function_step_1_1 - object dom_of_function_cell_3_3 - object dom-dom_of_function_step_1_1 - dom_of_function_step_1_1 dom-dom_of_function_cell_3_3-dom_of_function_step_1_1 - dom_of_function_cell_3_3 dom_of_function_step_1_1 dom-dom_of_function_cell_3_3 - dom_of_function_cell_3_3 dom-dom_of_function_cell_3_1-dom_of_function_cell_3_3-dom_of_function_step_1_1 - dom_of_function_cell_3_1 dom_of_function_cell_3_3 dom_of_function_step_1_1)
(:predicates (step ?V7714 - dom_of_function_step_1_1) (d_successor ?V7649 - dom_of_function_step_1_1 ?V7650 - dom_of_function_step_1_1) (d_succ ?V7582 - dom_of_function_cell_3_1 ?V7583 - dom_of_function_cell_3_1) (d_pred ?V7515 - dom_of_function_cell_3_1 ?V7516 - dom_of_function_cell_3_1) (cell ?V7425 - dom_of_function_cell_3_1 ?V7426 - dom_of_function_cell_3_1 ?V7427 - dom_of_function_cell_3_3))
(:constants N60 N59 N58 N57 N56 N55 N54 N53 N52 N51 N50 N49 N48 N47 N46 N45 N44 N43 N42 N41 N40 N39 N38 N37 N36 N35 N34 N33 N32 N31 N30 N29 N28 N27 N26 N25 N24 N23 N22 N21 N20 N19 N18 N17 N16 N15 N14 N13 N12 N11 N10 N9 N0 - dom-dom_of_function_step_1_1 N8 N7 N6 N5 N4 - dom-dom_of_function_cell_3_3-dom_of_function_step_1_1 b - dom-dom_of_function_cell_3_3 N3 N2 N1 - dom-dom_of_function_cell_3_1-dom_of_function_cell_3_3-dom_of_function_step_1_1)

(:action move :parameters (?V8379 - dom_of_function_cell_3_1 ?V8380 - dom_of_function_cell_3_1) :precondition 
	 (or (exists (?V8563 - dom_of_function_cell_3_1) (and (cell ?V8379 ?V8563 b) (d_pred ?V8380 ?V8563))) (exists (?V8533 - dom_of_function_cell_3_1) (and (cell ?V8379 ?V8533 b) (d_succ ?V8380 ?V8533))) (exists (?V8503 - dom_of_function_cell_3_1) (and (cell ?V8503 ?V8380 b) (d_pred ?V8379 ?V8503))) (exists (?V8473 - dom_of_function_cell_3_1) (and (cell ?V8473 ?V8380 b) (d_succ ?V8379 ?V8473)))) 
	 :effect 
	 (and 
	  (forall (?V9655 - dom_of_function_step_1_1) (when (exists (?V14114 - dom_of_function_step_1_1) (and (step ?V14114) (d_successor ?V14114 ?V9655) (not (step ?V9655)))) (step ?V9655)))
	  (forall (?V9640 - dom_of_function_cell_3_1 ?V9641 - dom_of_function_cell_3_1 ?V9642 - dom_of_function_cell_3_3) 
		  (when (and (or (and (= ?V8379 ?V9640) (cell ?V9640 ?V9641 b) (cell ?V9640 ?V8380 ?V9642)) (and (= ?V8380 ?V9641) (cell ?V9640 ?V9641 b) (cell ?V8379 ?V9641 ?V9642)) (and (= ?V8379 ?V9640) (= ?V8380 ?V9641) (= ?V9642 b))) (not (cell ?V9640 ?V9641 ?V9642))) (cell ?V9640 ?V9641 ?V9642)))
	  (forall (?V9655 - dom_of_function_step_1_1) (when (and (not (exists (?V14585 - dom_of_function_step_1_1) (and (step ?V14585) (d_successor ?V14585 ?V9655)))) (step ?V9655)) (not (step ?V9655)))) 
	  
	  (forall (?V9640 - dom_of_function_cell_3_1 ?V9641 - dom_of_function_cell_3_1 ?V9642 - dom_of_function_cell_3_3) 
		  (when (and 
			 (not (and (= ?V8379 ?V9640) (= ?V8380 ?V9641) (= ?V9642 b))) 
			 (not (and (= ?V9641 ?V8380) (cell ?V9640 ?V8380 b) (cell ?V8379 ?V8380 ?V9642) (not (= ?V9642 b)))) 
			 (not (and (= ?V9640 ?V8379) (cell ?V8379 ?V9641 b) (cell ?V8379 ?V8380 ?V9642) (not (= ?V9642 b))))
			 (or (not (exists (?V10880 - dom_of_function_cell_3_1 ?V10883 - dom_of_function_cell_3_1) (and (cell ?V10883 ?V10880 b) (not (= ?V10883 ?V9640)))))
			     (= ?V8379 ?V9640))
			 (or (not (exists (?V10922 - dom_of_function_cell_3_1 ?V10925 - dom_of_function_cell_3_1) (and (cell ?V10925 ?V10922 b) (not (= ?V10922 ?V9641))))) (= ?V8379 ?V9640))
			 (or (not (exists (?V10964 - dom_of_function_cell_3_1 ?V10967 - dom_of_function_cell_3_1) (and (cell ?V10967 ?V10964 b) (not (= ?V10967 ?V9640))))) (= ?V8380 ?V9641))
			 (or (not (exists (?V11006 - dom_of_function_cell_3_1 ?V11009 - dom_of_function_cell_3_1) (and (cell ?V11009 ?V11006 b) (not (= ?V11006 ?V9641))))) (= ?V8380 ?V9641))
			 (cell ?V9640 ?V9641 ?V9642)) 
		    (not (cell ?V9640 ?V9641 ?V9642)))))))
