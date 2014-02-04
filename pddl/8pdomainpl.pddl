(define (domain epuzzle)
    (:requirements :adl :typing)
  (:types boardpos block stepnumber)
  (:PREDICATES
   (d_SUCCESSOR ?V61 ?V62 - stepnumber)  (d_PRED ?V63 ?V64 - boardpos) (d_SUCC ?V65 ?V66 - boardpos) 
   (CELL ?V68 ?V69 - boardpos ?V70 - block )
   (STEP ?V71 - stepnumber))
  (:constants nb n0 n1 n2 n3 n4 n5 n6 n7 n8 - block b1 b2 b3 - boardpos n0 n1 n2 n3 n4 n5 n6 n7 n8 N9 N10 N11 N12 N13 N14 N15 N16 N17 N18 N19 N20 N21 N22 N23 N24 N25 N26 N27 N28 N29 N30 N31 N32 N33 N34 N35 N36 N37 N38 N39 N40 N41 N42 N43 N44 N45 N46 N47 N48 N49 N50 N51 N52 N53 N54 N55 N56 N57 N58 N59 N60 N61 N62 N63 N64 N65 N66 N67 - stepnumber)

  (:action move
	   :parameters (?M ?N - boardpos)
	   :precondition 
	   (or (exists (?V317631 - boardpos) (and (cell ?V317631 ?N nb) (d_succ ?M ?V317631))) 
	       (exists (?V317658 - boardpos) (and (cell ?V317658 ?N nb) (d_pred ?M ?V317658)))
	       (exists (?V317685 - boardpos) (and (cell ?M ?V317685 nb) (d_succ ?N ?V317685)))
	       (exists (?V317712 - boardpos) (and (cell ?M ?V317712 nb) (d_pred ?N ?V317712))))
 
	   :effect 
	   (and (forall (?V317764 ?V317765 - boardpos ?V317766 - block) 
			(when (and (or (and (= ?V317764 ?M) (= ?V317765 ?N) (= ?V317766 nb)) (and (= ?V317765 ?N) (and (cell ?V317764 ?N nb) (cell ?M ?N ?V317766))) (and (= ?V317764 ?M) (and (cell ?M ?V317765 nb) (cell ?M ?N ?V317766)))) (not (cell ?V317764 ?V317765 ?V317766)))
			  (cell ?V317764 ?V317765 ?V317766)))
		(forall (?V317726 - stepnumber) 
			(when (exists (?V317881 - stepnumber) (and (step ?V317881) (d_successor ?V317881 ?V317726) (not (step ?V317726)))) (step ?V317726)))
		(forall (?V317764 ?V317765 - boardpos ?V317766 - block ) 
			(when (and (not (and (= ?M ?V317764) (= ?N ?V317765) (= ?V317766 nb))) (not (and (= ?N ?V317765) (and (cell ?V317764 ?N nb) (cell ?M ?N ?V317766) (not (= ?V317766 nb))))) (not (and (= ?M ?V317764) (and (cell ?M ?V317765 nb) (cell ?M ?N ?V317766) (not (= ?V317766 nb))))) (or (= ?V317764 ?M) (not (exists (?V317466 ?V317465 - boardpos) (and (cell ?V317465 ?V317466 nb) (not (= ?V317465 ?V317764)))))) (or (= ?V317764 ?M) (not (exists (?V317488 ?V317487 - boardpos) (and (cell ?V317487 ?V317488 nb) (not (= ?V317488 ?V317765)))))) (or (= ?V317765 ?N) (not (exists (?V317510 ?V317509  - boardpos) (and (cell ?V317509 ?V317510 nb) (not (= ?V317509 ?V317764)))))) (or (= ?V317765 ?N) (not (exists (?V317532 ?V317531 - boardpos) (and (cell ?V317531 ?V317532 nb) (not (= ?V317532 ?V317765)))))) (cell ?V317764 ?V317765 ?V317766))
			  (not (cell ?V317764 ?V317765 ?V317766))))
		(forall (?V317726 - stepnumber) (when (and (not (exists (?V317444 - stepnumber) (and (step ?V317444) (d_successor ?V317444 ?V317726)))) (step ?V317726)) (not (step ?V317726)))))))
