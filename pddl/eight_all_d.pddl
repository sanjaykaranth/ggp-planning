(define (domain eight)
	(:requirements :adl :typing)
	(:types dom_of_function_cell_3_1 - object dom_of_function_step_1_1 - object dom_of_function_cell_3_3 - object points - object)
	(:predicates (step ?V3388 - dom_of_function_step_1_1) (d_successor ?V3323 - dom_of_function_step_1_1 ?V3324 - dom_of_function_step_1_1) (d_succ ?V3256 - dom_of_function_cell_3_1 ?V3257 - dom_of_function_cell_3_1) (d_pred ?V3189 - dom_of_function_cell_3_1 ?V3190 - dom_of_function_cell_3_1) (cell ?V3099 - dom_of_function_cell_3_1 ?V3100 - dom_of_function_cell_3_1 ?V3101 - dom_of_function_cell_3_3) (rgoal ?points - points)) 
	(:constants N2 N1 N3 - dom_of_function_cell_3_1 N60 N59 N58 N57 N56 N55 N54 N53 N52 N51 N50 N49 N48 N47 N46 N45 N44 N43 N42 N41 N40 N39 N38 N37 N36 N35 N34 N33 N32 N31 N30 N29 N28 N27 N26 N25 N24 N23 N22 N21 N20 N19 N18 N17 N16 N15 N14 N13 N12 N11 N10 N9 N8 N7 N6 N5 N4 N3 N2 N1 N0 - dom_of_function_step_1_1 b N1 N2 N3 N4 N5 N6 N7 N8 - dom_of_function_cell_3_3 G100 G99 G1 - points)


	(:action move :parameters (?V4067 - dom_of_function_cell_3_1 ?V4068 - dom_of_function_cell_3_1) :precondition (or (exists (?V4251 - dom_of_function_cell_3_1) (and (cell ?V4067 ?V4251 b) (d_pred ?V4068 ?V4251))) (exists (?V4221 - dom_of_function_cell_3_1) (and (cell ?V4067 ?V4221 b) (d_succ ?V4068 ?V4221))) (exists (?V4191 - dom_of_function_cell_3_1) (and (cell ?V4191 ?V4068 b) (d_pred ?V4067 ?V4191))) (exists (?V4161 - dom_of_function_cell_3_1) (and (cell ?V4161 ?V4068 b) (d_succ ?V4067 ?V4161)))) :effect (and (forall (?V5343 - dom_of_function_step_1_1) (when (exists (?V9817 - dom_of_function_step_1_1) (and (step ?V9817) (d_successor ?V9817 ?V5343) (not (step ?V5343)))) (step ?V5343))) (forall (?V5328 - dom_of_function_cell_3_1 ?V5329 - dom_of_function_cell_3_1 ?V5330 - dom_of_function_cell_3_3) (when (and (or (and (= ?V4067 ?V5328) (cell ?V5328 ?V5329 b) (cell ?V5328 ?V4068 ?V5330)) (and (= ?V4068 ?V5329) (cell ?V5328 ?V5329 b) (cell ?V4067 ?V5329 ?V5330)) (and (= ?V4067 ?V5328) (= ?V4068 ?V5329) (= ?V5330 b))) (not (cell ?V5328 ?V5329 ?V5330))) (cell ?V5328 ?V5329 ?V5330))) (forall (?V5343 - dom_of_function_step_1_1) (when (and (not (exists (?V10288 - dom_of_function_step_1_1) (and (step ?V10288) (d_successor ?V10288 ?V5343)))) (step ?V5343)) (not (step ?V5343)))) (forall (?V5328 - dom_of_function_cell_3_1 ?V5329 - dom_of_function_cell_3_1 ?V5330 - dom_of_function_cell_3_3) (when (and (not (and (= ?V4067 ?V5328) (= ?V4068 ?V5329) (= ?V5330 b))) (not (and (= ?V5329 ?V4068) (cell ?V5328 ?V4068 b) (cell ?V4067 ?V4068 ?V5330) (not (= ?V5330 b)))) (not (and (= ?V5328 ?V4067) (cell ?V4067 ?V5329 b) (cell ?V4067 ?V4068 ?V5330) (not (= ?V5330 b)))) (or (not (exists (?V6568 - dom_of_function_cell_3_1 ?V6571 - dom_of_function_cell_3_1) (and (cell ?V6571 ?V6568 b) (not (= ?V6571 ?V5328))))) (= ?V4067 ?V5328)) (or (not (exists (?V6610 - dom_of_function_cell_3_1 ?V6613 - dom_of_function_cell_3_1) (and (cell ?V6613 ?V6610 b) (not (= ?V6610 ?V5329))))) (= ?V4067 ?V5328)) (or (not (exists (?V6652 - dom_of_function_cell_3_1 ?V6655 - dom_of_function_cell_3_1) (and (cell ?V6655 ?V6652 b) (not (= ?V6655 ?V5328))))) (= ?V4068 ?V5329)) (or (not (exists (?V6694 - dom_of_function_cell_3_1 ?V6697 - dom_of_function_cell_3_1) (and (cell ?V6697 ?V6694 b) (not (= ?V6694 ?V5329))))) (= ?V4068 ?V5329)) (cell ?V5328 ?V5329 ?V5330)) (not (cell ?V5328 ?V5329 ?V5330))))))
	;(:action goal1 :parameters () :precondition (or (not (cell N3 N3 b)) (not (cell N3 N2 N8)) (not (cell N3 N1 N7)) (not (cell N2 N3 N6)) (not (cell N2 N2 N5)) (not (cell N2 N1 N4)) (not (cell N1 N3 N3)) (not (cell N1 N2 N2)) (not (cell N1 N1 N1))) :effect (rgoal G1))
	(:action goal99 :parameters () :precondition (exists (?V20603 - dom_of_function_step_1_1) (and (cell N1 N1 N1) (cell N1 N2 N2) (cell N1 N3 N3) (cell N2 N1 N4) (cell N2 N2 N5) (cell N2 N3 N6) (cell N3 N1 N7) (cell N3 N2 N8) (cell N3 N3 b) (step ?V20603) (not (= ?V20603 N30)))) :effect (rgoal G99))
	(:action goal100 :parameters () :precondition (and (cell N1 N1 N1) (cell N1 N2 N2) (cell N1 N3 N3) (cell N2 N1 N4) (cell N2 N2 N5) (cell N2 N3 N6) (cell N3 N1 N7) (cell N3 N2 N8) (cell N3 N3 b) (step N30)) :effect (rgoal G100)))

	
