(define (problem epuzzle)
  (:domain epuzzle)
  
  (:init 
   (cell b1 b1 n8)
   (cell b1 b2 n7)
   (cell b1 b3 n6)
   (cell b2 b1 n5)
   (cell b2 b2 n4)
   (cell b2 b3 n3)
   (cell b3 b1 n2)
   (cell b3 b2 n1)
   (cell b3 b3 nb)
   (d_succ b1 b2)
   (d_succ b2 b3)
   (d_pred b2 b1)	
   (d_pred b3 b2)
   
   (step n0)
   (D_SUCCESSOR n66 n67)
   (D_SUCCESSOR n65 n66)
   (D_SUCCESSOR n64 n65)
   (D_SUCCESSOR n63 n64)
   (D_SUCCESSOR n62 n63)
   (D_SUCCESSOR n61 n62)
   (D_SUCCESSOR n60 n61)
   (D_SUCCESSOR n59 n60)
   (D_SUCCESSOR n58 n59)
   (D_SUCCESSOR n57 n58)
   (D_SUCCESSOR n56 n57)
   (D_SUCCESSOR n55 n56)
   (D_SUCCESSOR n54 n55)
   (D_SUCCESSOR n53 n54)
   (D_SUCCESSOR n52 n53)
   (D_SUCCESSOR n51 n52)
   (D_SUCCESSOR n50 n51)
   (D_SUCCESSOR n49 n50)
   (D_SUCCESSOR n48 n49)
   (D_SUCCESSOR n47 n48)
   (D_SUCCESSOR n46 n47)
   (D_SUCCESSOR n45 n46)
   (D_SUCCESSOR n44 n45)
   (D_SUCCESSOR n43 n44)
   (D_SUCCESSOR n42 n43)
   (D_SUCCESSOR n41 n42)
   (D_SUCCESSOR n40 n41)
   (D_SUCCESSOR n39 n40)
   (D_SUCCESSOR n38 n39)
   (D_SUCCESSOR n37 n38)
   (D_SUCCESSOR n36 n37)
   (D_SUCCESSOR n35 n36)
   (D_SUCCESSOR n34 n35)
   (D_SUCCESSOR n33 n34)
   (D_SUCCESSOR n32 n33)
   (D_SUCCESSOR n31 n32)
   (D_SUCCESSOR n30 n31)
   (D_SUCCESSOR n29 n30)
   (D_SUCCESSOR n28 n29)
   (D_SUCCESSOR n27 n28)
   (D_SUCCESSOR n26 n27)
   (D_SUCCESSOR n25 n26)
   (D_SUCCESSOR n24 n25)
   (D_SUCCESSOR n23 n24)
   (D_SUCCESSOR n22 n23)
   (D_SUCCESSOR n21 n22)
   (D_SUCCESSOR n20 n21)
   (D_SUCCESSOR n19 n20)
   (D_SUCCESSOR n18 n19)
   (D_SUCCESSOR n17 n18)
   (D_SUCCESSOR n16 n17)
   (D_SUCCESSOR n15 n16)
   (D_SUCCESSOR n14 n15)
   (D_SUCCESSOR n13 n14)
   (D_SUCCESSOR n12 n13)
   (D_SUCCESSOR n11 n12)
   (D_SUCCESSOR n10 n11)
   (D_SUCCESSOR n9 n10)
   (D_SUCCESSOR n8 n9)
   (D_SUCCESSOR n7 n8)
   (D_SUCCESSOR n6 n7)
   (D_SUCCESSOR n5 n6)
   (D_SUCCESSOR n4 n5)
   (D_SUCCESSOR n3 n4)
   (D_SUCCESSOR n2 n3)
   (D_SUCCESSOR n1 n2)
   (D_SUCCESSOR n0 n1))
   
	


  (:goal  (and (cell b1 b1 n1) 
	       (cell b1 b2 n2) 
	       (cell b1 b3 n3) 
	       (cell b2 b1 n4) 
	       (cell b2 b2 n5) 
	       (cell b2 b3 n6) 
	       (cell b3 b1 n7) 
	       (cell b3 b2 n8) 
	       (cell b3 b3 nb)
	       (step n30))))
