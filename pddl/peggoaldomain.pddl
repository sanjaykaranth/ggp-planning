(define (domain peg)
    (:requirements :adl :typing)
  (:types rewardnumber - object dom_of_function_hole_3_2 dom_of_function_hole_3_1 dom_of_function_pegs_1_1 dom_of_function_hole_3_3 - object dom-dom_of_function_hole_3_2 - dom_of_function_hole_3_2 dom-dom_of_function_pegs_1_1 - dom_of_function_pegs_1_1 dom-dom_of_function_hole_3_1 - dom_of_function_hole_3_1 dom-dom_of_function_hole_3_3 - dom_of_function_hole_3_3)
  (:predicates (pegs ?V6042 - dom_of_function_pegs_1_1) (hole ?V5957 - dom_of_function_hole_3_1 ?V5959 - dom_of_function_hole_3_2 ?V5961 - dom_of_function_hole_3_3) (d_succ ?V5894 - dom_of_function_pegs_1_1 ?V5896 - dom_of_function_pegs_1_1) (d_row ?V5861 - dom_of_function_hole_3_1) (d_pr ?V5796 - dom_of_function_hole_3_1 ?V5798 - dom_of_function_hole_3_1) (d_pc ?V5731 - dom_of_function_hole_3_2 ?V5733 - dom_of_function_hole_3_2) (d_nr ?V5666 - dom_of_function_hole_3_1 ?V5668 - dom_of_function_hole_3_1) (d_nc ?V5601 - dom_of_function_hole_3_2 ?V5603 - dom_of_function_hole_3_2)  (d_column ?V5327 - dom_of_function_hole_3_2) (rgoal ?X - rewardnumber))

  (:action jump 
	   :parameters (?V7430 - dom_of_function_hole_3_1 ?V7431 - dom_of_function_hole_3_2 ?V7432 - dom_of_function_hole_3_1 ?V7433 - dom_of_function_hole_3_2) 
	   :precondition 
	   (exists (?V7530 - dom_of_function_hole_3_1 ?V7533 - dom_of_function_hole_3_2) 
		   (and (hole ?V7430 ?V7431 peg) (hole ?V7432 ?V7433 empty) 
			(or (and (= ?V7431 ?V7533) (= ?V7533 ?V7433) (d_nr ?V7430 ?V7530) (d_pr ?V7432 ?V7530) (d_column ?V7433)) 
			    (and (= ?V7431 ?V7533) (= ?V7533 ?V7433) (d_pr ?V7430 ?V7530) (d_nr ?V7432 ?V7530) (d_column ?V7433))
			    (and (= ?V7430 ?V7530) (= ?V7530 ?V7432) (d_nc ?V7431 ?V7533) (d_pc ?V7433 ?V7533) (d_row ?V7432))
			    (and (= ?V7430 ?V7530) (= ?V7530 ?V7432) (d_pc ?V7431 ?V7533) (d_nc ?V7433 ?V7533) (d_row ?V7432)))
			(hole ?V7530 ?V7533 peg)))
	   :effect 
	   (and 
	    (forall (?V9404 - dom_of_function_pegs_1_1) 
		    (when (exists (?V18916 - dom_of_function_pegs_1_1) 
				  (and (pegs ?V18916) (d_succ ?V9404 ?V18916) (not (pegs ?V9404)))) 
		      (pegs ?V9404))) 
	    
	    (forall (?V9389 - dom_of_function_hole_3_1 ?V9390 - dom_of_function_hole_3_2 ?V9391 - dom_of_function_hole_3_3) 
		    (when 
			(and (or (and (= ?V9390 ?V7433) (= ?V9389 ?V7432) (= ?V9391 peg)) (and (= ?V9390 ?V7433) (= ?V7433 ?V7431) (= ?V9391 empty) (d_nr ?V7430 ?V9389) (d_pr ?V7432 ?V9389) (d_column ?V7431)) (and (= ?V9390 ?V7433) (= ?V7433 ?V7431) (= ?V9391 empty) (d_pr ?V7430 ?V9389) (d_nr ?V7432 ?V9389) (d_column ?V7431)) (and (= ?V9389 ?V7432) (= ?V7432 ?V7430) (= ?V9391 empty) (d_nc ?V7431 ?V9390) (d_pc ?V7433 ?V9390) (d_row ?V7430)) (and (= ?V9389 ?V7432) (= ?V7432 ?V7430) (= ?V9391 empty) (d_pc ?V7431 ?V9390) (d_nc ?V7433 ?V9390) (d_row ?V7430)) (and (= ?V9390 ?V7431) (= ?V9389 ?V7430) (= ?V9391 empty))) (not (hole ?V9389 ?V9390 ?V9391))) 
		      (hole ?V9389 ?V9390 ?V9391)))
	    
	    (forall (?V9404 - dom_of_function_pegs_1_1) 
		    (when (and (not (exists (?V19425 - dom_of_function_pegs_1_1) (and (pegs ?V19425) (d_succ ?V9404 ?V19425)))) (pegs ?V9404))
		      (not (pegs ?V9404)))) 
	    (forall (?V9389 - dom_of_function_hole_3_1 ?V9390 - dom_of_function_hole_3_2 ?V9391 - dom_of_function_hole_3_3) 
		    (when 
			(and (not (and (= ?V7430 ?V9389) (= ?V7431 ?V9390) (= ?V9391 empty)))
			     (not (and (= ?V9391 empty) (or (and (= ?V7433 ?V7431) (= ?V7431 ?V9390) (d_nr ?V7430 ?V9389) (d_pr ?V7432 ?V9389) (d_column ?V9390)) (and (= ?V7433 ?V7431) (= ?V7431 ?V9390) (d_pr ?V7430 ?V9389) (d_nr ?V7432 ?V9389) (d_column ?V9390)) (and (= ?V7432 ?V7430) (= ?V7430 ?V9389) (d_nc ?V7431 ?V9390) (d_pc ?V7433 ?V9390) (d_row ?V9389)) (and (= ?V7432 ?V7430) (= ?V7430 ?V9389) (d_pc ?V7431 ?V9390) (d_nc ?V7433 ?V9390) (d_row ?V9389))))) 
			     (not (and (= ?V7432 ?V9389) (= ?V7433 ?V9390) (= ?V9391 peg)))
			     (not (and (= ?V9391 empty) (not (= ?V9389 ?V7432))))
			     (not (and (= ?V9391 empty) (not (= ?V9390 ?V7433)))) 
			     (not (and (= ?V9391 peg) 
				       (exists 
					(?V12362 - dom_of_function_hole_3_2 ?V12365 - dom_of_function_hole_3_1)
					(and 
					 (not (= ?V9389 ?V7430)) 
					 (or 
					  (and (= ?V7431 ?V12362) (= ?V12362 ?V7433) (d_nr ?V7430 ?V12365) (d_pr ?V7432 ?V12365) (d_column ?V7433))
					  (and (= ?V7431 ?V12362) (= ?V12362 ?V7433) (d_pr ?V7430 ?V12365) (d_nr ?V7432 ?V12365) (d_column ?V7433))
					  (and (= ?V7430 ?V12365) (= ?V12365 ?V7432) (d_nc ?V7431 ?V12362) (d_pc ?V7433 ?V12362) (d_row ?V7432))
					  (and (= ?V7430 ?V12365) (= ?V12365 ?V7432) (d_pc ?V7431 ?V12362) (d_nc ?V7433 ?V12362) (d_row ?V7432)))
					 (not (= ?V9389 ?V12365))))))
			     (not (and (= ?V9391 peg) (exists (?V12510 - dom_of_function_hole_3_2 ?V12513 - dom_of_function_hole_3_1) (and (not (= ?V9390 ?V7431)) (or (and (= ?V7431 ?V12510) (= ?V12510 ?V7433) (d_nr ?V7430 ?V12513) (d_pr ?V7432 ?V12513) (d_column ?V7433)) (and (= ?V7431 ?V12510) (= ?V12510 ?V7433) (d_pr ?V7430 ?V12513) (d_nr ?V7432 ?V12513) (d_column ?V7433)) (and (= ?V7430 ?V12513) (= ?V12513 ?V7432) (d_nc ?V7431 ?V12510) (d_pc ?V7433 ?V12510) (d_row ?V7432)) (and (= ?V7430 ?V12513) (= ?V12513 ?V7432) (d_pc ?V7431 ?V12510) (d_nc ?V7433 ?V12510) (d_row ?V7432))) (not (= ?V9390 ?V12510))))))
			     (hole ?V9389 ?V9390 ?V9391)) 
		      (not (hole ?V9389 ?V9390 ?V9391))))))
  (:action goal100 :parameters () :precondition (pegs s1) 
	   :effect (rgoal g100))
  
  (:action goal90 :parameters () :precondition (pegs s2) 
	   :effect (rgoal g90))
  
  (:action goal60 :parameters () :precondition (pegs s5) 
	   :effect (rgoal g60)))
