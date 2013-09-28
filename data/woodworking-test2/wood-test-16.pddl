(DEFINE (PROBLEM WOOD-LOOP-16) (:DOMAIN WOODWORKING-LOOP)
 (:OBJECTS GRINDER-0 - GRINDER GLAZER-0 - GLAZER IMMERSION-VARNISHER-0 -
  IMMERSION-VARNISHER PLANER-0 - PLANER HIGHSPEED-SAW-0 - HIGHSPEED-SAW
  SPRAY-VARNISHER-0 - SPRAY-VARNISHER SAW-0 - SAW COLOR-0 COLOR-1 COLOR-2 -
  ACOLOUR WOOD-0 WOOD-1 WOOD-2 - AWOOD PART-0 PART-1 PART-2 PART-3 PART-4
  PART-5 PART-6 PART-7 PART-8 PART-9 PART-10 PART-11 PART-12 PART-13 PART-14
  PART-15 - PART BOARD-0 BOARD-1 BOARD-2 - BOARD)
 (:INIT (GRIND-TREATMENT-CHANGE VARNISHED COLOURFRAGMENTS)
  (GRIND-TREATMENT-CHANGE GLAZED UNTREATED)
  (GRIND-TREATMENT-CHANGE UNTREATED UNTREATED)
  (GRIND-TREATMENT-CHANGE COLOURFRAGMENTS UNTREATED) (IS-SMOOTH SMOOTH)
  (IS-SMOOTH VERYSMOOTH) (= (TOTAL-COST) 0)
  (HAS-COLOUR IMMERSION-VARNISHER-0 COLOR-0)
  (HAS-COLOUR SPRAY-VARNISHER-0 COLOR-1) (HAS-COLOUR GLAZER-0 COLOR-2)
  (EMPTY HIGHSPEED-SAW-0) (AVAILABLE PART-0) (COLOUR PART-0 COLOR-1)
  (WOOD PART-0 WOOD-0) (SURFACE-CONDITION PART-0 ROUGH)
  (TREATMENT PART-0 VARNISHED) (GOALSIZE PART-0 SMALL)
  (= (SPRAY-VARNISH-COST PART-0) 5) (= (GLAZE-COST PART-0) 10)
  (= (GRIND-COST PART-0) 15) (= (PLANE-COST PART-0) 10) (AVAILABLE PART-1)
  (COLOUR PART-1 COLOR-1) (WOOD PART-1 WOOD-0) (SURFACE-CONDITION PART-1 ROUGH)
  (TREATMENT PART-1 VARNISHED) (GOALSIZE PART-1 SMALL)
  (= (SPRAY-VARNISH-COST PART-1) 5) (= (GLAZE-COST PART-1) 10)
  (= (GRIND-COST PART-1) 15) (= (PLANE-COST PART-1) 10) (AVAILABLE PART-2)
  (COLOUR PART-2 COLOR-1) (WOOD PART-2 WOOD-0) (SURFACE-CONDITION PART-2 ROUGH)
  (TREATMENT PART-2 VARNISHED) (GOALSIZE PART-2 SMALL)
  (= (SPRAY-VARNISH-COST PART-2) 5) (= (GLAZE-COST PART-2) 10)
  (= (GRIND-COST PART-2) 15) (= (PLANE-COST PART-2) 10) (AVAILABLE PART-3)
  (COLOUR PART-3 COLOR-1) (WOOD PART-3 WOOD-0) (SURFACE-CONDITION PART-3 ROUGH)
  (TREATMENT PART-3 VARNISHED) (GOALSIZE PART-3 SMALL)
  (= (SPRAY-VARNISH-COST PART-3) 5) (= (GLAZE-COST PART-3) 10)
  (= (GRIND-COST PART-3) 15) (= (PLANE-COST PART-3) 10) (AVAILABLE PART-4)
  (COLOUR PART-4 COLOR-1) (WOOD PART-4 WOOD-0) (SURFACE-CONDITION PART-4 ROUGH)
  (TREATMENT PART-4 VARNISHED) (GOALSIZE PART-4 SMALL)
  (= (SPRAY-VARNISH-COST PART-4) 5) (= (GLAZE-COST PART-4) 10)
  (= (GRIND-COST PART-4) 15) (= (PLANE-COST PART-4) 10) (AVAILABLE PART-5)
  (COLOUR PART-5 COLOR-1) (WOOD PART-5 WOOD-0) (SURFACE-CONDITION PART-5 ROUGH)
  (TREATMENT PART-5 VARNISHED) (GOALSIZE PART-5 SMALL)
  (= (SPRAY-VARNISH-COST PART-5) 5) (= (GLAZE-COST PART-5) 10)
  (= (GRIND-COST PART-5) 15) (= (PLANE-COST PART-5) 10) (AVAILABLE PART-6)
  (COLOUR PART-6 COLOR-1) (WOOD PART-6 WOOD-0) (SURFACE-CONDITION PART-6 ROUGH)
  (TREATMENT PART-6 VARNISHED) (GOALSIZE PART-6 SMALL)
  (= (SPRAY-VARNISH-COST PART-6) 5) (= (GLAZE-COST PART-6) 10)
  (= (GRIND-COST PART-6) 15) (= (PLANE-COST PART-6) 10) (AVAILABLE PART-7)
  (COLOUR PART-7 COLOR-1) (WOOD PART-7 WOOD-0) (SURFACE-CONDITION PART-7 ROUGH)
  (TREATMENT PART-7 VARNISHED) (GOALSIZE PART-7 SMALL)
  (= (SPRAY-VARNISH-COST PART-7) 5) (= (GLAZE-COST PART-7) 10)
  (= (GRIND-COST PART-7) 15) (= (PLANE-COST PART-7) 10) (AVAILABLE PART-8)
  (COLOUR PART-8 COLOR-1) (WOOD PART-8 WOOD-0) (SURFACE-CONDITION PART-8 ROUGH)
  (TREATMENT PART-8 VARNISHED) (GOALSIZE PART-8 SMALL)
  (= (SPRAY-VARNISH-COST PART-8) 5) (= (GLAZE-COST PART-8) 10)
  (= (GRIND-COST PART-8) 15) (= (PLANE-COST PART-8) 10) (AVAILABLE PART-9)
  (COLOUR PART-9 COLOR-1) (WOOD PART-9 WOOD-0) (SURFACE-CONDITION PART-9 ROUGH)
  (TREATMENT PART-9 VARNISHED) (GOALSIZE PART-9 SMALL)
  (= (SPRAY-VARNISH-COST PART-9) 5) (= (GLAZE-COST PART-9) 10)
  (= (GRIND-COST PART-9) 15) (= (PLANE-COST PART-9) 10) (AVAILABLE PART-10)
  (COLOUR PART-10 COLOR-1) (WOOD PART-10 WOOD-0)
  (SURFACE-CONDITION PART-10 ROUGH) (TREATMENT PART-10 VARNISHED)
  (GOALSIZE PART-10 SMALL) (= (SPRAY-VARNISH-COST PART-10) 5)
  (= (GLAZE-COST PART-10) 10) (= (GRIND-COST PART-10) 15)
  (= (PLANE-COST PART-10) 10) (AVAILABLE PART-11) (COLOUR PART-11 COLOR-1)
  (WOOD PART-11 WOOD-0) (SURFACE-CONDITION PART-11 ROUGH)
  (TREATMENT PART-11 VARNISHED) (GOALSIZE PART-11 SMALL)
  (= (SPRAY-VARNISH-COST PART-11) 5) (= (GLAZE-COST PART-11) 10)
  (= (GRIND-COST PART-11) 15) (= (PLANE-COST PART-11) 10) (AVAILABLE PART-12)
  (COLOUR PART-12 COLOR-1) (WOOD PART-12 WOOD-0)
  (SURFACE-CONDITION PART-12 ROUGH) (TREATMENT PART-12 VARNISHED)
  (GOALSIZE PART-12 SMALL) (= (SPRAY-VARNISH-COST PART-12) 5)
  (= (GLAZE-COST PART-12) 10) (= (GRIND-COST PART-12) 15)
  (= (PLANE-COST PART-12) 10) (AVAILABLE PART-13) (COLOUR PART-13 COLOR-1)
  (WOOD PART-13 WOOD-0) (SURFACE-CONDITION PART-13 ROUGH)
  (TREATMENT PART-13 VARNISHED) (GOALSIZE PART-13 SMALL)
  (= (SPRAY-VARNISH-COST PART-13) 5) (= (GLAZE-COST PART-13) 10)
  (= (GRIND-COST PART-13) 15) (= (PLANE-COST PART-13) 10) (AVAILABLE PART-14)
  (COLOUR PART-14 COLOR-1) (WOOD PART-14 WOOD-0)
  (SURFACE-CONDITION PART-14 ROUGH) (TREATMENT PART-14 VARNISHED)
  (GOALSIZE PART-14 SMALL) (= (SPRAY-VARNISH-COST PART-14) 5)
  (= (GLAZE-COST PART-14) 10) (= (GRIND-COST PART-14) 15)
  (= (PLANE-COST PART-14) 10) (AVAILABLE PART-15) (COLOUR PART-15 COLOR-1)
  (WOOD PART-15 WOOD-0) (SURFACE-CONDITION PART-15 ROUGH)
  (TREATMENT PART-15 VARNISHED) (GOALSIZE PART-15 SMALL)
  (= (SPRAY-VARNISH-COST PART-15) 5) (= (GLAZE-COST PART-15) 10)
  (= (GRIND-COST PART-15) 15) (= (PLANE-COST PART-15) 10) (WOOD BOARD-0 WOOD-0)
  (SURFACE-CONDITION BOARD-0 ROUGH) (AVAILABLE BOARD-0) (WOOD BOARD-1 WOOD-1)
  (SURFACE-CONDITION BOARD-1 ROUGH) (AVAILABLE BOARD-1) (WOOD BOARD-2 WOOD-2)
  (SURFACE-CONDITION BOARD-2 ROUGH) (AVAILABLE BOARD-2))
 (:GOAL
  (AND (COLOUR PART-0 COLOR-0) (AVAILABLE PART-0)
       (SURFACE-CONDITION PART-0 VERYSMOOTH) (COLOUR PART-1 COLOR-0)
       (AVAILABLE PART-1) (SURFACE-CONDITION PART-1 VERYSMOOTH)
       (COLOUR PART-2 COLOR-0) (AVAILABLE PART-2)
       (SURFACE-CONDITION PART-2 VERYSMOOTH) (COLOUR PART-3 COLOR-0)
       (AVAILABLE PART-3) (SURFACE-CONDITION PART-3 VERYSMOOTH)
       (COLOUR PART-4 COLOR-0) (AVAILABLE PART-4)
       (SURFACE-CONDITION PART-4 VERYSMOOTH) (COLOUR PART-5 COLOR-0)
       (AVAILABLE PART-5) (SURFACE-CONDITION PART-5 VERYSMOOTH)
       (COLOUR PART-6 COLOR-0) (AVAILABLE PART-6)
       (SURFACE-CONDITION PART-6 VERYSMOOTH) (COLOUR PART-7 COLOR-0)
       (AVAILABLE PART-7) (SURFACE-CONDITION PART-7 VERYSMOOTH)
       (COLOUR PART-8 COLOR-0) (AVAILABLE PART-8)
       (SURFACE-CONDITION PART-8 VERYSMOOTH) (COLOUR PART-9 COLOR-0)
       (AVAILABLE PART-9) (SURFACE-CONDITION PART-9 VERYSMOOTH)
       (COLOUR PART-10 COLOR-0) (AVAILABLE PART-10)
       (SURFACE-CONDITION PART-10 VERYSMOOTH) (COLOUR PART-11 COLOR-0)
       (AVAILABLE PART-11) (SURFACE-CONDITION PART-11 VERYSMOOTH)
       (COLOUR PART-12 COLOR-0) (AVAILABLE PART-12)
       (SURFACE-CONDITION PART-12 VERYSMOOTH) (COLOUR PART-13 COLOR-0)
       (AVAILABLE PART-13) (SURFACE-CONDITION PART-13 VERYSMOOTH)
       (COLOUR PART-14 COLOR-0) (AVAILABLE PART-14)
       (SURFACE-CONDITION PART-14 VERYSMOOTH) (COLOUR PART-15 COLOR-0)
       (AVAILABLE PART-15) (SURFACE-CONDITION PART-15 VERYSMOOTH)))
 (:METRIC MINIMIZE (TOTAL-COST)))