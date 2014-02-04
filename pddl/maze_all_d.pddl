(define (domain maze)
	
(:types dom_of_function_step_1_1 - object dom_of_function_cell_1_1 - object points - object)
(:predicates (rgoal ?G - points) (step ?V1473 - dom_of_function_step_1_1) (gold ?V1444 - dom_of_function_cell_1_1) (d_succ ?V1377 - dom_of_function_step_1_1 ?V1378 - dom_of_function_step_1_1) (d_adjacent ?V1312 - dom_of_function_cell_1_1 ?V1313 - dom_of_function_cell_1_1) (cell ?V1282 - dom_of_function_cell_1_1))
(:constants N10 N9 N8 N7 N6 N5 N4 N3 N2 N1 - dom_of_function_step_1_1 c i a d b - dom_of_function_cell_1_1 G100 G0 - points)

(:action drop :parameters () :precondition (gold i) :effect (and (forall (?V2251 - dom_of_function_step_1_1) (when (exists (?V3166 - dom_of_function_step_1_1) (and (step ?V3166) (d_succ ?V3166 ?V2251) (not (step ?V2251)))) (step ?V2251))) (forall (?V2238 - dom_of_function_cell_1_1) (when (and (cell ?V2238) (not (gold ?V2238))) (gold ?V2238))) (forall (?V2251 - dom_of_function_step_1_1) (when (and (not (exists (?V3591 - dom_of_function_step_1_1) (and (step ?V3591) (d_succ ?V3591 ?V2251)))) (step ?V2251)) (not (step ?V2251)))) (forall (?V2238 - dom_of_function_cell_1_1) (when (and (= ?V2238 i) (not (cell ?V2238))) (not (gold ?V2238))))))
(:action grab :parameters () :precondition (exists (?V6278 - dom_of_function_cell_1_1) (and (cell ?V6278) (gold ?V6278))) :effect (and (forall (?V6556 - dom_of_function_step_1_1) (when (exists (?V7956 - dom_of_function_step_1_1) (and (step ?V7956) (d_succ ?V7956 ?V6556) (not (step ?V6556)))) (step ?V6556))) (forall (?V6543 - dom_of_function_cell_1_1) (when (and (= ?V6543 i) (exists (?V6925 - dom_of_function_cell_1_1) (and (cell ?V6925) (gold ?V6925) (not (gold ?V6543))))) (gold ?V6543))) (forall (?V6556 - dom_of_function_step_1_1) (when (and (not (exists (?V8381 - dom_of_function_step_1_1) (and (step ?V8381) (d_succ ?V8381 ?V6556)))) (step ?V6556)) (not (step ?V6556)))) (forall (?V6543 - dom_of_function_cell_1_1) (when (and (not (= ?V6543 i)) (not (exists (?V7415 - dom_of_function_cell_1_1) (and (cell ?V7415) (not (= ?V7415 ?V6543))))) (gold ?V6543)) (not (gold ?V6543))))))
(:action move :parameters ()  :effect (and (forall (?V12040 - dom_of_function_step_1_1) (when (exists (?V13326 - dom_of_function_step_1_1) (and (step ?V13326) (d_succ ?V13326 ?V12040) (not (step ?V12040)))) (step ?V12040))) (forall (?V12014 - dom_of_function_cell_1_1) (when (exists (?V12131 - dom_of_function_cell_1_1) (and (cell ?V12131) (d_adjacent ?V12131 ?V12014) (not (cell ?V12014)))) (cell ?V12014))) (forall (?V12040 - dom_of_function_step_1_1) (when (and (not (exists (?V13751 - dom_of_function_step_1_1) (and (step ?V13751) (d_succ ?V13751 ?V12040)))) (step ?V12040)) (not (step ?V12040)))) (forall (?V12014 - dom_of_function_cell_1_1) (when (and (not (exists (?V12556 - dom_of_function_cell_1_1) (and (cell ?V12556) (d_adjacent ?V12556 ?V12014)))) (cell ?V12014)) (not (cell ?V12014))))))
(:action goal0 :parameters () :precondition (exists (?V16954 - dom_of_function_cell_1_1) (and (gold ?V16954) (not (= ?V16954 a)))) :effect (rgoal G0))(:action goal100 :parameters () :precondition (gold a) :effect (rgoal G100))
)