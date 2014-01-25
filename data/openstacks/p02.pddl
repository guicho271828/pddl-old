(DEFINE (PROBLEM OPENSTACKS) (:DOMAIN OPENSTACKS)
 (:OBJECTS N0 N1 N2 N3 N4 N5 N6 N7 N8 N9 N10 N11 N12 N13 N14 N15 N16 N17 N18
  N19 N20 N21 N22 N23 N24 N25 N26 N27 N28 N29 N30 - COUNT O0 O1 O2 O3 O4 O5 O6
  O7 O8 O9 O10 O11 O12 O13 O14 O15 O16 O17 O18 O19 O20 O21 O22 O23 O24 O25 O26
  O27 O28 O29 - ORDER P0 P1 P2 P3 P4 P5 P6 P7 P8 P9 P10 P11 P12 P13 P14 P15 P16
  P17 P18 P19 P20 P21 P22 P23 P24 P25 P26 P27 P28 P29 - PRODUCT)
 (:INIT (STACKS-AVAIL N0) (NEXT-COUNT N0 N1) (NEXT-COUNT N1 N2)
  (NEXT-COUNT N2 N3) (NEXT-COUNT N3 N4) (NEXT-COUNT N4 N5) (NEXT-COUNT N5 N6)
  (NEXT-COUNT N6 N7) (NEXT-COUNT N7 N8) (NEXT-COUNT N8 N9) (NEXT-COUNT N9 N10)
  (NEXT-COUNT N10 N11) (NEXT-COUNT N11 N12) (NEXT-COUNT N12 N13)
  (NEXT-COUNT N13 N14) (NEXT-COUNT N14 N15) (NEXT-COUNT N15 N16)
  (NEXT-COUNT N16 N17) (NEXT-COUNT N17 N18) (NEXT-COUNT N18 N19)
  (NEXT-COUNT N19 N20) (NEXT-COUNT N20 N21) (NEXT-COUNT N21 N22)
  (NEXT-COUNT N22 N23) (NEXT-COUNT N23 N24) (NEXT-COUNT N24 N25)
  (NEXT-COUNT N25 N26) (NEXT-COUNT N26 N27) (NEXT-COUNT N27 N28)
  (NEXT-COUNT N28 N29) (NEXT-COUNT N29 N30) (WAITING O0) (WAITING O1)
  (WAITING O2) (WAITING O3) (WAITING O4) (WAITING O5) (WAITING O6) (WAITING O7)
  (WAITING O8) (WAITING O9) (WAITING O10) (WAITING O11) (WAITING O12)
  (WAITING O13) (WAITING O14) (WAITING O15) (WAITING O16) (WAITING O17)
  (WAITING O18) (WAITING O19) (WAITING O20) (WAITING O21) (WAITING O22)
  (WAITING O23) (WAITING O24) (WAITING O25) (WAITING O26) (WAITING O27)
  (WAITING O28) (WAITING O29) (NOT-MADE P0) (NOT-MADE P1) (NOT-MADE P2)
  (NOT-MADE P3) (NOT-MADE P4) (NOT-MADE P5) (NOT-MADE P6) (NOT-MADE P7)
  (NOT-MADE P8) (NOT-MADE P9) (NOT-MADE P10) (NOT-MADE P11) (NOT-MADE P12)
  (NOT-MADE P13) (NOT-MADE P14) (NOT-MADE P15) (NOT-MADE P16) (NOT-MADE P17)
  (NOT-MADE P18) (NOT-MADE P19) (NOT-MADE P20) (NOT-MADE P21) (NOT-MADE P22)
  (NOT-MADE P23) (NOT-MADE P24) (NOT-MADE P25) (NOT-MADE P26) (NOT-MADE P27)
  (NOT-MADE P28) (NOT-MADE P29) (INCLUDES O0 P11)
  (REQUIRED-ORDER-NOT-CHECKED O0 P11) (REQUIRED-PRODUCT-NOT-CHECKED O0 P11)
  (INCLUDES O0 P14) (REQUIRED-ORDER-NOT-CHECKED O0 P14)
  (REQUIRED-PRODUCT-NOT-CHECKED O0 P14) (INCLUDES O1 P1)
  (REQUIRED-ORDER-NOT-CHECKED O1 P1) (REQUIRED-PRODUCT-NOT-CHECKED O1 P1)
  (INCLUDES O1 P9) (REQUIRED-ORDER-NOT-CHECKED O1 P9)
  (REQUIRED-PRODUCT-NOT-CHECKED O1 P9) (INCLUDES O1 P12)
  (REQUIRED-ORDER-NOT-CHECKED O1 P12) (REQUIRED-PRODUCT-NOT-CHECKED O1 P12)
  (INCLUDES O2 P2) (REQUIRED-ORDER-NOT-CHECKED O2 P2)
  (REQUIRED-PRODUCT-NOT-CHECKED O2 P2) (INCLUDES O2 P6)
  (REQUIRED-ORDER-NOT-CHECKED O2 P6) (REQUIRED-PRODUCT-NOT-CHECKED O2 P6)
  (INCLUDES O2 P18) (REQUIRED-ORDER-NOT-CHECKED O2 P18)
  (REQUIRED-PRODUCT-NOT-CHECKED O2 P18) (INCLUDES O2 P27)
  (REQUIRED-ORDER-NOT-CHECKED O2 P27) (REQUIRED-PRODUCT-NOT-CHECKED O2 P27)
  (INCLUDES O3 P13) (REQUIRED-ORDER-NOT-CHECKED O3 P13)
  (REQUIRED-PRODUCT-NOT-CHECKED O3 P13) (INCLUDES O3 P29)
  (REQUIRED-ORDER-NOT-CHECKED O3 P29) (REQUIRED-PRODUCT-NOT-CHECKED O3 P29)
  (INCLUDES O4 P4) (REQUIRED-ORDER-NOT-CHECKED O4 P4)
  (REQUIRED-PRODUCT-NOT-CHECKED O4 P4) (INCLUDES O4 P12)
  (REQUIRED-ORDER-NOT-CHECKED O4 P12) (REQUIRED-PRODUCT-NOT-CHECKED O4 P12)
  (INCLUDES O4 P27) (REQUIRED-ORDER-NOT-CHECKED O4 P27)
  (REQUIRED-PRODUCT-NOT-CHECKED O4 P27) (INCLUDES O5 P16)
  (REQUIRED-ORDER-NOT-CHECKED O5 P16) (REQUIRED-PRODUCT-NOT-CHECKED O5 P16)
  (INCLUDES O5 P29) (REQUIRED-ORDER-NOT-CHECKED O5 P29)
  (REQUIRED-PRODUCT-NOT-CHECKED O5 P29) (INCLUDES O6 P4)
  (REQUIRED-ORDER-NOT-CHECKED O6 P4) (REQUIRED-PRODUCT-NOT-CHECKED O6 P4)
  (INCLUDES O6 P16) (REQUIRED-ORDER-NOT-CHECKED O6 P16)
  (REQUIRED-PRODUCT-NOT-CHECKED O6 P16) (INCLUDES O6 P26)
  (REQUIRED-ORDER-NOT-CHECKED O6 P26) (REQUIRED-PRODUCT-NOT-CHECKED O6 P26)
  (INCLUDES O7 P5) (REQUIRED-ORDER-NOT-CHECKED O7 P5)
  (REQUIRED-PRODUCT-NOT-CHECKED O7 P5) (INCLUDES O7 P15)
  (REQUIRED-ORDER-NOT-CHECKED O7 P15) (REQUIRED-PRODUCT-NOT-CHECKED O7 P15)
  (INCLUDES O7 P19) (REQUIRED-ORDER-NOT-CHECKED O7 P19)
  (REQUIRED-PRODUCT-NOT-CHECKED O7 P19) (INCLUDES O7 P22)
  (REQUIRED-ORDER-NOT-CHECKED O7 P22) (REQUIRED-PRODUCT-NOT-CHECKED O7 P22)
  (INCLUDES O7 P23) (REQUIRED-ORDER-NOT-CHECKED O7 P23)
  (REQUIRED-PRODUCT-NOT-CHECKED O7 P23) (INCLUDES O8 P4)
  (REQUIRED-ORDER-NOT-CHECKED O8 P4) (REQUIRED-PRODUCT-NOT-CHECKED O8 P4)
  (INCLUDES O8 P5) (REQUIRED-ORDER-NOT-CHECKED O8 P5)
  (REQUIRED-PRODUCT-NOT-CHECKED O8 P5) (INCLUDES O8 P17)
  (REQUIRED-ORDER-NOT-CHECKED O8 P17) (REQUIRED-PRODUCT-NOT-CHECKED O8 P17)
  (INCLUDES O9 P6) (REQUIRED-ORDER-NOT-CHECKED O9 P6)
  (REQUIRED-PRODUCT-NOT-CHECKED O9 P6) (INCLUDES O9 P7)
  (REQUIRED-ORDER-NOT-CHECKED O9 P7) (REQUIRED-PRODUCT-NOT-CHECKED O9 P7)
  (INCLUDES O9 P11) (REQUIRED-ORDER-NOT-CHECKED O9 P11)
  (REQUIRED-PRODUCT-NOT-CHECKED O9 P11) (INCLUDES O9 P16)
  (REQUIRED-ORDER-NOT-CHECKED O9 P16) (REQUIRED-PRODUCT-NOT-CHECKED O9 P16)
  (INCLUDES O9 P23) (REQUIRED-ORDER-NOT-CHECKED O9 P23)
  (REQUIRED-PRODUCT-NOT-CHECKED O9 P23) (INCLUDES O9 P27)
  (REQUIRED-ORDER-NOT-CHECKED O9 P27) (REQUIRED-PRODUCT-NOT-CHECKED O9 P27)
  (INCLUDES O10 P2) (REQUIRED-ORDER-NOT-CHECKED O10 P2)
  (REQUIRED-PRODUCT-NOT-CHECKED O10 P2) (INCLUDES O10 P7)
  (REQUIRED-ORDER-NOT-CHECKED O10 P7) (REQUIRED-PRODUCT-NOT-CHECKED O10 P7)
  (INCLUDES O10 P11) (REQUIRED-ORDER-NOT-CHECKED O10 P11)
  (REQUIRED-PRODUCT-NOT-CHECKED O10 P11) (INCLUDES O10 P17)
  (REQUIRED-ORDER-NOT-CHECKED O10 P17) (REQUIRED-PRODUCT-NOT-CHECKED O10 P17)
  (INCLUDES O11 P16) (REQUIRED-ORDER-NOT-CHECKED O11 P16)
  (REQUIRED-PRODUCT-NOT-CHECKED O11 P16) (INCLUDES O11 P18)
  (REQUIRED-ORDER-NOT-CHECKED O11 P18) (REQUIRED-PRODUCT-NOT-CHECKED O11 P18)
  (INCLUDES O12 P0) (REQUIRED-ORDER-NOT-CHECKED O12 P0)
  (REQUIRED-PRODUCT-NOT-CHECKED O12 P0) (INCLUDES O13 P2)
  (REQUIRED-ORDER-NOT-CHECKED O13 P2) (REQUIRED-PRODUCT-NOT-CHECKED O13 P2)
  (INCLUDES O13 P4) (REQUIRED-ORDER-NOT-CHECKED O13 P4)
  (REQUIRED-PRODUCT-NOT-CHECKED O13 P4) (INCLUDES O13 P11)
  (REQUIRED-ORDER-NOT-CHECKED O13 P11) (REQUIRED-PRODUCT-NOT-CHECKED O13 P11)
  (INCLUDES O13 P16) (REQUIRED-ORDER-NOT-CHECKED O13 P16)
  (REQUIRED-PRODUCT-NOT-CHECKED O13 P16) (INCLUDES O13 P23)
  (REQUIRED-ORDER-NOT-CHECKED O13 P23) (REQUIRED-PRODUCT-NOT-CHECKED O13 P23)
  (INCLUDES O14 P1) (REQUIRED-ORDER-NOT-CHECKED O14 P1)
  (REQUIRED-PRODUCT-NOT-CHECKED O14 P1) (INCLUDES O14 P3)
  (REQUIRED-ORDER-NOT-CHECKED O14 P3) (REQUIRED-PRODUCT-NOT-CHECKED O14 P3)
  (INCLUDES O15 P13) (REQUIRED-ORDER-NOT-CHECKED O15 P13)
  (REQUIRED-PRODUCT-NOT-CHECKED O15 P13) (INCLUDES O15 P28)
  (REQUIRED-ORDER-NOT-CHECKED O15 P28) (REQUIRED-PRODUCT-NOT-CHECKED O15 P28)
  (INCLUDES O16 P6) (REQUIRED-ORDER-NOT-CHECKED O16 P6)
  (REQUIRED-PRODUCT-NOT-CHECKED O16 P6) (INCLUDES O16 P22)
  (REQUIRED-ORDER-NOT-CHECKED O16 P22) (REQUIRED-PRODUCT-NOT-CHECKED O16 P22)
  (INCLUDES O16 P24) (REQUIRED-ORDER-NOT-CHECKED O16 P24)
  (REQUIRED-PRODUCT-NOT-CHECKED O16 P24) (INCLUDES O17 P10)
  (REQUIRED-ORDER-NOT-CHECKED O17 P10) (REQUIRED-PRODUCT-NOT-CHECKED O17 P10)
  (INCLUDES O17 P15) (REQUIRED-ORDER-NOT-CHECKED O17 P15)
  (REQUIRED-PRODUCT-NOT-CHECKED O17 P15) (INCLUDES O18 P1)
  (REQUIRED-ORDER-NOT-CHECKED O18 P1) (REQUIRED-PRODUCT-NOT-CHECKED O18 P1)
  (INCLUDES O18 P3) (REQUIRED-ORDER-NOT-CHECKED O18 P3)
  (REQUIRED-PRODUCT-NOT-CHECKED O18 P3) (INCLUDES O18 P5)
  (REQUIRED-ORDER-NOT-CHECKED O18 P5) (REQUIRED-PRODUCT-NOT-CHECKED O18 P5)
  (INCLUDES O18 P19) (REQUIRED-ORDER-NOT-CHECKED O18 P19)
  (REQUIRED-PRODUCT-NOT-CHECKED O18 P19) (INCLUDES O18 P20)
  (REQUIRED-ORDER-NOT-CHECKED O18 P20) (REQUIRED-PRODUCT-NOT-CHECKED O18 P20)
  (INCLUDES O18 P24) (REQUIRED-ORDER-NOT-CHECKED O18 P24)
  (REQUIRED-PRODUCT-NOT-CHECKED O18 P24) (INCLUDES O19 P9)
  (REQUIRED-ORDER-NOT-CHECKED O19 P9) (REQUIRED-PRODUCT-NOT-CHECKED O19 P9)
  (INCLUDES O19 P15) (REQUIRED-ORDER-NOT-CHECKED O19 P15)
  (REQUIRED-PRODUCT-NOT-CHECKED O19 P15) (INCLUDES O19 P16)
  (REQUIRED-ORDER-NOT-CHECKED O19 P16) (REQUIRED-PRODUCT-NOT-CHECKED O19 P16)
  (INCLUDES O19 P26) (REQUIRED-ORDER-NOT-CHECKED O19 P26)
  (REQUIRED-PRODUCT-NOT-CHECKED O19 P26) (INCLUDES O20 P3)
  (REQUIRED-ORDER-NOT-CHECKED O20 P3) (REQUIRED-PRODUCT-NOT-CHECKED O20 P3)
  (INCLUDES O20 P4) (REQUIRED-ORDER-NOT-CHECKED O20 P4)
  (REQUIRED-PRODUCT-NOT-CHECKED O20 P4) (INCLUDES O20 P8)
  (REQUIRED-ORDER-NOT-CHECKED O20 P8) (REQUIRED-PRODUCT-NOT-CHECKED O20 P8)
  (INCLUDES O20 P22) (REQUIRED-ORDER-NOT-CHECKED O20 P22)
  (REQUIRED-PRODUCT-NOT-CHECKED O20 P22) (INCLUDES O21 P5)
  (REQUIRED-ORDER-NOT-CHECKED O21 P5) (REQUIRED-PRODUCT-NOT-CHECKED O21 P5)
  (INCLUDES O21 P22) (REQUIRED-ORDER-NOT-CHECKED O21 P22)
  (REQUIRED-PRODUCT-NOT-CHECKED O21 P22) (INCLUDES O21 P29)
  (REQUIRED-ORDER-NOT-CHECKED O21 P29) (REQUIRED-PRODUCT-NOT-CHECKED O21 P29)
  (INCLUDES O22 P4) (REQUIRED-ORDER-NOT-CHECKED O22 P4)
  (REQUIRED-PRODUCT-NOT-CHECKED O22 P4) (INCLUDES O23 P2)
  (REQUIRED-ORDER-NOT-CHECKED O23 P2) (REQUIRED-PRODUCT-NOT-CHECKED O23 P2)
  (INCLUDES O23 P16) (REQUIRED-ORDER-NOT-CHECKED O23 P16)
  (REQUIRED-PRODUCT-NOT-CHECKED O23 P16) (INCLUDES O24 P0)
  (REQUIRED-ORDER-NOT-CHECKED O24 P0) (REQUIRED-PRODUCT-NOT-CHECKED O24 P0)
  (INCLUDES O24 P7) (REQUIRED-ORDER-NOT-CHECKED O24 P7)
  (REQUIRED-PRODUCT-NOT-CHECKED O24 P7) (INCLUDES O24 P13)
  (REQUIRED-ORDER-NOT-CHECKED O24 P13) (REQUIRED-PRODUCT-NOT-CHECKED O24 P13)
  (INCLUDES O25 P7) (REQUIRED-ORDER-NOT-CHECKED O25 P7)
  (REQUIRED-PRODUCT-NOT-CHECKED O25 P7) (INCLUDES O25 P19)
  (REQUIRED-ORDER-NOT-CHECKED O25 P19) (REQUIRED-PRODUCT-NOT-CHECKED O25 P19)
  (INCLUDES O26 P10) (REQUIRED-ORDER-NOT-CHECKED O26 P10)
  (REQUIRED-PRODUCT-NOT-CHECKED O26 P10) (INCLUDES O26 P11)
  (REQUIRED-ORDER-NOT-CHECKED O26 P11) (REQUIRED-PRODUCT-NOT-CHECKED O26 P11)
  (INCLUDES O27 P4) (REQUIRED-ORDER-NOT-CHECKED O27 P4)
  (REQUIRED-PRODUCT-NOT-CHECKED O27 P4) (INCLUDES O27 P5)
  (REQUIRED-ORDER-NOT-CHECKED O27 P5) (REQUIRED-PRODUCT-NOT-CHECKED O27 P5)
  (INCLUDES O27 P10) (REQUIRED-ORDER-NOT-CHECKED O27 P10)
  (REQUIRED-PRODUCT-NOT-CHECKED O27 P10) (INCLUDES O27 P15)
  (REQUIRED-ORDER-NOT-CHECKED O27 P15) (REQUIRED-PRODUCT-NOT-CHECKED O27 P15)
  (INCLUDES O27 P22) (REQUIRED-ORDER-NOT-CHECKED O27 P22)
  (REQUIRED-PRODUCT-NOT-CHECKED O27 P22) (INCLUDES O28 P9)
  (REQUIRED-ORDER-NOT-CHECKED O28 P9) (REQUIRED-PRODUCT-NOT-CHECKED O28 P9)
  (INCLUDES O28 P14) (REQUIRED-ORDER-NOT-CHECKED O28 P14)
  (REQUIRED-PRODUCT-NOT-CHECKED O28 P14) (INCLUDES O28 P20)
  (REQUIRED-ORDER-NOT-CHECKED O28 P20) (REQUIRED-PRODUCT-NOT-CHECKED O28 P20)
  (INCLUDES O29 P23) (REQUIRED-ORDER-NOT-CHECKED O29 P23)
  (REQUIRED-PRODUCT-NOT-CHECKED O29 P23) (INCLUDES O29 P24)
  (REQUIRED-ORDER-NOT-CHECKED O29 P24) (REQUIRED-PRODUCT-NOT-CHECKED O29 P24)
  (HOWMANY-ORDERS-NOT-STARTED P0 N2) (HOWMANY-ORDERS-NOT-STARTED P1 N3)
  (HOWMANY-ORDERS-NOT-STARTED P2 N4) (HOWMANY-ORDERS-NOT-STARTED P3 N3)
  (HOWMANY-ORDERS-NOT-STARTED P4 N7) (HOWMANY-ORDERS-NOT-STARTED P5 N5)
  (HOWMANY-ORDERS-NOT-STARTED P6 N3) (HOWMANY-ORDERS-NOT-STARTED P7 N4)
  (HOWMANY-ORDERS-NOT-STARTED P8 N1) (HOWMANY-ORDERS-NOT-STARTED P9 N3)
  (HOWMANY-ORDERS-NOT-STARTED P10 N3) (HOWMANY-ORDERS-NOT-STARTED P11 N5)
  (HOWMANY-ORDERS-NOT-STARTED P12 N2) (HOWMANY-ORDERS-NOT-STARTED P13 N3)
  (HOWMANY-ORDERS-NOT-STARTED P14 N2) (HOWMANY-ORDERS-NOT-STARTED P15 N4)
  (HOWMANY-ORDERS-NOT-STARTED P16 N7) (HOWMANY-ORDERS-NOT-STARTED P17 N2)
  (HOWMANY-ORDERS-NOT-STARTED P18 N2) (HOWMANY-ORDERS-NOT-STARTED P19 N3)
  (HOWMANY-ORDERS-NOT-STARTED P20 N2) (HOWMANY-ORDERS-NOT-STARTED P21 N0)
  (HOWMANY-ORDERS-NOT-STARTED P22 N5) (HOWMANY-ORDERS-NOT-STARTED P23 N4)
  (HOWMANY-ORDERS-NOT-STARTED P24 N3) (HOWMANY-ORDERS-NOT-STARTED P25 N0)
  (HOWMANY-ORDERS-NOT-STARTED P26 N2) (HOWMANY-ORDERS-NOT-STARTED P27 N3)
  (HOWMANY-ORDERS-NOT-STARTED P28 N1) (HOWMANY-ORDERS-NOT-STARTED P29 N3)
  (HOWMANY-PRODUCTS-NOT-MADE O0 N2) (HOWMANY-PRODUCTS-NOT-MADE O1 N3)
  (HOWMANY-PRODUCTS-NOT-MADE O2 N4) (HOWMANY-PRODUCTS-NOT-MADE O3 N2)
  (HOWMANY-PRODUCTS-NOT-MADE O4 N3) (HOWMANY-PRODUCTS-NOT-MADE O5 N2)
  (HOWMANY-PRODUCTS-NOT-MADE O6 N3) (HOWMANY-PRODUCTS-NOT-MADE O7 N5)
  (HOWMANY-PRODUCTS-NOT-MADE O8 N3) (HOWMANY-PRODUCTS-NOT-MADE O9 N6)
  (HOWMANY-PRODUCTS-NOT-MADE O10 N4) (HOWMANY-PRODUCTS-NOT-MADE O11 N2)
  (HOWMANY-PRODUCTS-NOT-MADE O12 N1) (HOWMANY-PRODUCTS-NOT-MADE O13 N5)
  (HOWMANY-PRODUCTS-NOT-MADE O14 N2) (HOWMANY-PRODUCTS-NOT-MADE O15 N2)
  (HOWMANY-PRODUCTS-NOT-MADE O16 N3) (HOWMANY-PRODUCTS-NOT-MADE O17 N2)
  (HOWMANY-PRODUCTS-NOT-MADE O18 N6) (HOWMANY-PRODUCTS-NOT-MADE O19 N4)
  (HOWMANY-PRODUCTS-NOT-MADE O20 N4) (HOWMANY-PRODUCTS-NOT-MADE O21 N3)
  (HOWMANY-PRODUCTS-NOT-MADE O22 N1) (HOWMANY-PRODUCTS-NOT-MADE O23 N2)
  (HOWMANY-PRODUCTS-NOT-MADE O24 N3) (HOWMANY-PRODUCTS-NOT-MADE O25 N2)
  (HOWMANY-PRODUCTS-NOT-MADE O26 N2) (HOWMANY-PRODUCTS-NOT-MADE O27 N5)
  (HOWMANY-PRODUCTS-NOT-MADE O28 N3) (HOWMANY-PRODUCTS-NOT-MADE O29 N2)
  (= (TOTAL-COST) 0))
 (:GOAL
  (AND (SHIPPED O0) (SHIPPED O1) (SHIPPED O2) (SHIPPED O3) (SHIPPED O4)
       (SHIPPED O5) (SHIPPED O6) (SHIPPED O7) (SHIPPED O8) (SHIPPED O9)
       (SHIPPED O10) (SHIPPED O11) (SHIPPED O12) (SHIPPED O13) (SHIPPED O14)
       (SHIPPED O15) (SHIPPED O16) (SHIPPED O17) (SHIPPED O18) (SHIPPED O19)
       (SHIPPED O20) (SHIPPED O21) (SHIPPED O22) (SHIPPED O23) (SHIPPED O24)
       (SHIPPED O25) (SHIPPED O26) (SHIPPED O27) (SHIPPED O28) (SHIPPED O29)))
 (:METRIC MINIMIZE (TOTAL-COST)))