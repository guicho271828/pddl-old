(DEFINE (PROBLEM CELL-ASSEMBLY-MODEL3C-4) (:DOMAIN CELL-ASSEMBLY)
 (:OBJECTS A1 A2 A3 A4 A5 - ARM B-0 B-1 B-2 B-3 - BASE P1 P2 P3 P4 P5 P6 -
  COMPONENT T1 T2 T3 T4 T5 T6 - TRAY TB-FOR-234 TB-FOR-1 TB-FOR-56 TB12 TB23
  TB24 TB35 TB45 - TABLE M1 M2 M3 M4 M5 - MACHINE J1 J2 J3 J4 J5 J6 - JOB MJ1
  MJ2 MJ3 MJ4 MJ5 - MACHINE-JOB)
 (:INIT (= (TOTAL-COST) 0) (= (LOADING-COST) 1) (REACHABLE A1 TABLE-IN)
  (REACHABLE A1 M1) (REACHABLE A1 M2) (REACHABLE A1 TB12) (REACHABLE A2 TB12)
  (REACHABLE A2 TB23) (REACHABLE A2 TB24) (REACHABLE A2 M4) (REACHABLE A3 TB23)
  (REACHABLE A3 T2) (REACHABLE A3 T3) (REACHABLE A3 T4)
  (REACHABLE A3 TB-FOR-234) (REACHABLE A3 TB35) (REACHABLE A4 TB24)
  (REACHABLE A4 T1) (REACHABLE A4 T5) (REACHABLE A4 T6) (REACHABLE A4 TB-FOR-1)
  (REACHABLE A4 TB-FOR-56) (REACHABLE A4 TB45) (REACHABLE A5 TB35)
  (REACHABLE A5 TB45) (REACHABLE A5 M3) (REACHABLE A5 M5)
  (REACHABLE A5 TABLE-OUT) (= (MOVE-COST M1 M1) 1000) (= (MOVE-COST M1 T4) 4)
  (= (MOVE-COST M1 TB-FOR-234) 5) (= (MOVE-COST M1 T2) 5)
  (= (MOVE-COST M1 T3) 4) (= (MOVE-COST M1 M3) 6)
  (= (MOVE-COST M1 TABLE-OUT) 6) (= (MOVE-COST M1 M5) 5)
  (= (MOVE-COST M1 TB35) 5) (= (MOVE-COST M1 TB23) 3) (= (MOVE-COST M1 TB45) 4)
  (= (MOVE-COST M1 TB-FOR-56) 5) (= (MOVE-COST M1 TB-FOR-1) 6)
  (= (MOVE-COST M1 T6) 6) (= (MOVE-COST M1 T5) 5) (= (MOVE-COST M1 T1) 4)
  (= (MOVE-COST M1 TB24) 3) (= (MOVE-COST M1 M4) 3) (= (MOVE-COST M1 TB12) 2)
  (= (MOVE-COST M1 M2) 2) (= (MOVE-COST M1 TABLE-IN) 2) (= (MOVE-COST T4 M1) 4)
  (= (MOVE-COST T4 T4) 1000) (= (MOVE-COST T4 TB-FOR-234) 2)
  (= (MOVE-COST T4 T2) 3) (= (MOVE-COST T4 T3) 3) (= (MOVE-COST T4 M3) 5)
  (= (MOVE-COST T4 TABLE-OUT) 6) (= (MOVE-COST T4 M5) 6)
  (= (MOVE-COST T4 TB35) 4) (= (MOVE-COST T4 TB23) 2) (= (MOVE-COST T4 TB45) 5)
  (= (MOVE-COST T4 TB-FOR-56) 6) (= (MOVE-COST T4 TB-FOR-1) 7)
  (= (MOVE-COST T4 T6) 7) (= (MOVE-COST T4 T5) 6) (= (MOVE-COST T4 T1) 5)
  (= (MOVE-COST T4 TB24) 4) (= (MOVE-COST T4 M4) 4) (= (MOVE-COST T4 TB12) 3)
  (= (MOVE-COST T4 M2) 5) (= (MOVE-COST T4 TABLE-IN) 5)
  (= (MOVE-COST TB-FOR-234 M1) 5) (= (MOVE-COST TB-FOR-234 T4) 2)
  (= (MOVE-COST TB-FOR-234 TB-FOR-234) 1000) (= (MOVE-COST TB-FOR-234 T2) 2)
  (= (MOVE-COST TB-FOR-234 T3) 3) (= (MOVE-COST TB-FOR-234 M3) 5)
  (= (MOVE-COST TB-FOR-234 TABLE-OUT) 6) (= (MOVE-COST TB-FOR-234 M5) 6)
  (= (MOVE-COST TB-FOR-234 TB35) 4) (= (MOVE-COST TB-FOR-234 TB23) 3)
  (= (MOVE-COST TB-FOR-234 TB45) 5) (= (MOVE-COST TB-FOR-234 TB-FOR-56) 6)
  (= (MOVE-COST TB-FOR-234 TB-FOR-1) 7) (= (MOVE-COST TB-FOR-234 T6) 8)
  (= (MOVE-COST TB-FOR-234 T5) 7) (= (MOVE-COST TB-FOR-234 T1) 6)
  (= (MOVE-COST TB-FOR-234 TB24) 5) (= (MOVE-COST TB-FOR-234 M4) 5)
  (= (MOVE-COST TB-FOR-234 TB12) 4) (= (MOVE-COST TB-FOR-234 M2) 6)
  (= (MOVE-COST TB-FOR-234 TABLE-IN) 6) (= (MOVE-COST T2 M1) 5)
  (= (MOVE-COST T2 T4) 3) (= (MOVE-COST T2 TB-FOR-234) 2)
  (= (MOVE-COST T2 T2) 1000) (= (MOVE-COST T2 T3) 2) (= (MOVE-COST T2 M3) 4)
  (= (MOVE-COST T2 TABLE-OUT) 5) (= (MOVE-COST T2 M5) 5)
  (= (MOVE-COST T2 TB35) 3) (= (MOVE-COST T2 TB23) 3) (= (MOVE-COST T2 TB45) 4)
  (= (MOVE-COST T2 TB-FOR-56) 5) (= (MOVE-COST T2 TB-FOR-1) 6)
  (= (MOVE-COST T2 T6) 7) (= (MOVE-COST T2 T5) 7) (= (MOVE-COST T2 T1) 6)
  (= (MOVE-COST T2 TB24) 5) (= (MOVE-COST T2 M4) 5) (= (MOVE-COST T2 TB12) 4)
  (= (MOVE-COST T2 M2) 6) (= (MOVE-COST T2 TABLE-IN) 6) (= (MOVE-COST T3 M1) 4)
  (= (MOVE-COST T3 T4) 3) (= (MOVE-COST T3 TB-FOR-234) 3)
  (= (MOVE-COST T3 T2) 2) (= (MOVE-COST T3 T3) 1000) (= (MOVE-COST T3 M3) 3)
  (= (MOVE-COST T3 TABLE-OUT) 4) (= (MOVE-COST T3 M5) 4)
  (= (MOVE-COST T3 TB35) 2) (= (MOVE-COST T3 TB23) 2) (= (MOVE-COST T3 TB45) 3)
  (= (MOVE-COST T3 TB-FOR-56) 4) (= (MOVE-COST T3 TB-FOR-1) 5)
  (= (MOVE-COST T3 T6) 6) (= (MOVE-COST T3 T5) 6) (= (MOVE-COST T3 T1) 5)
  (= (MOVE-COST T3 TB24) 4) (= (MOVE-COST T3 M4) 4) (= (MOVE-COST T3 TB12) 3)
  (= (MOVE-COST T3 M2) 5) (= (MOVE-COST T3 TABLE-IN) 5) (= (MOVE-COST M3 M1) 6)
  (= (MOVE-COST M3 T4) 5) (= (MOVE-COST M3 TB-FOR-234) 5)
  (= (MOVE-COST M3 T2) 4) (= (MOVE-COST M3 T3) 3) (= (MOVE-COST M3 M3) 1000)
  (= (MOVE-COST M3 TABLE-OUT) 2) (= (MOVE-COST M3 M5) 3)
  (= (MOVE-COST M3 TB35) 2) (= (MOVE-COST M3 TB23) 4) (= (MOVE-COST M3 TB45) 3)
  (= (MOVE-COST M3 TB-FOR-56) 4) (= (MOVE-COST M3 TB-FOR-1) 5)
  (= (MOVE-COST M3 T6) 6) (= (MOVE-COST M3 T5) 6) (= (MOVE-COST M3 T1) 5)
  (= (MOVE-COST M3 TB24) 4) (= (MOVE-COST M3 M4) 6) (= (MOVE-COST M3 TB12) 5)
  (= (MOVE-COST M3 M2) 7) (= (MOVE-COST M3 TABLE-IN) 7)
  (= (MOVE-COST TABLE-OUT M1) 6) (= (MOVE-COST TABLE-OUT T4) 6)
  (= (MOVE-COST TABLE-OUT TB-FOR-234) 6) (= (MOVE-COST TABLE-OUT T2) 5)
  (= (MOVE-COST TABLE-OUT T3) 4) (= (MOVE-COST TABLE-OUT M3) 2)
  (= (MOVE-COST TABLE-OUT TABLE-OUT) 1000) (= (MOVE-COST TABLE-OUT M5) 2)
  (= (MOVE-COST TABLE-OUT TB35) 3) (= (MOVE-COST TABLE-OUT TB23) 5)
  (= (MOVE-COST TABLE-OUT TB45) 3) (= (MOVE-COST TABLE-OUT TB-FOR-56) 4)
  (= (MOVE-COST TABLE-OUT TB-FOR-1) 5) (= (MOVE-COST TABLE-OUT T6) 6)
  (= (MOVE-COST TABLE-OUT T5) 6) (= (MOVE-COST TABLE-OUT T1) 5)
  (= (MOVE-COST TABLE-OUT TB24) 4) (= (MOVE-COST TABLE-OUT M4) 6)
  (= (MOVE-COST TABLE-OUT TB12) 5) (= (MOVE-COST TABLE-OUT M2) 7)
  (= (MOVE-COST TABLE-OUT TABLE-IN) 7) (= (MOVE-COST M5 M1) 5)
  (= (MOVE-COST M5 T4) 6) (= (MOVE-COST M5 TB-FOR-234) 6)
  (= (MOVE-COST M5 T2) 5) (= (MOVE-COST M5 T3) 4) (= (MOVE-COST M5 M3) 3)
  (= (MOVE-COST M5 TABLE-OUT) 2) (= (MOVE-COST M5 M5) 1000)
  (= (MOVE-COST M5 TB35) 3) (= (MOVE-COST M5 TB23) 5) (= (MOVE-COST M5 TB45) 2)
  (= (MOVE-COST M5 TB-FOR-56) 3) (= (MOVE-COST M5 TB-FOR-1) 4)
  (= (MOVE-COST M5 T6) 5) (= (MOVE-COST M5 T5) 5) (= (MOVE-COST M5 T1) 4)
  (= (MOVE-COST M5 TB24) 3) (= (MOVE-COST M5 M4) 5) (= (MOVE-COST M5 TB12) 4)
  (= (MOVE-COST M5 M2) 6) (= (MOVE-COST M5 TABLE-IN) 6)
  (= (MOVE-COST TB35 M1) 5) (= (MOVE-COST TB35 T4) 4)
  (= (MOVE-COST TB35 TB-FOR-234) 4) (= (MOVE-COST TB35 T2) 3)
  (= (MOVE-COST TB35 T3) 2) (= (MOVE-COST TB35 M3) 2)
  (= (MOVE-COST TB35 TABLE-OUT) 3) (= (MOVE-COST TB35 M5) 3)
  (= (MOVE-COST TB35 TB35) 1000) (= (MOVE-COST TB35 TB23) 3)
  (= (MOVE-COST TB35 TB45) 2) (= (MOVE-COST TB35 TB-FOR-56) 3)
  (= (MOVE-COST TB35 TB-FOR-1) 4) (= (MOVE-COST TB35 T6) 5)
  (= (MOVE-COST TB35 T5) 5) (= (MOVE-COST TB35 T1) 4)
  (= (MOVE-COST TB35 TB24) 3) (= (MOVE-COST TB35 M4) 5)
  (= (MOVE-COST TB35 TB12) 4) (= (MOVE-COST TB35 M2) 6)
  (= (MOVE-COST TB35 TABLE-IN) 6) (= (MOVE-COST TB23 M1) 3)
  (= (MOVE-COST TB23 T4) 2) (= (MOVE-COST TB23 TB-FOR-234) 3)
  (= (MOVE-COST TB23 T2) 3) (= (MOVE-COST TB23 T3) 2) (= (MOVE-COST TB23 M3) 4)
  (= (MOVE-COST TB23 TABLE-OUT) 5) (= (MOVE-COST TB23 M5) 5)
  (= (MOVE-COST TB23 TB35) 3) (= (MOVE-COST TB23 TB23) 1000)
  (= (MOVE-COST TB23 TB45) 4) (= (MOVE-COST TB23 TB-FOR-56) 5)
  (= (MOVE-COST TB23 TB-FOR-1) 6) (= (MOVE-COST TB23 T6) 6)
  (= (MOVE-COST TB23 T5) 5) (= (MOVE-COST TB23 T1) 4)
  (= (MOVE-COST TB23 TB24) 3) (= (MOVE-COST TB23 M4) 3)
  (= (MOVE-COST TB23 TB12) 2) (= (MOVE-COST TB23 M2) 4)
  (= (MOVE-COST TB23 TABLE-IN) 4) (= (MOVE-COST TB45 M1) 4)
  (= (MOVE-COST TB45 T4) 5) (= (MOVE-COST TB45 TB-FOR-234) 5)
  (= (MOVE-COST TB45 T2) 4) (= (MOVE-COST TB45 T3) 3) (= (MOVE-COST TB45 M3) 3)
  (= (MOVE-COST TB45 TABLE-OUT) 3) (= (MOVE-COST TB45 M5) 2)
  (= (MOVE-COST TB45 TB35) 2) (= (MOVE-COST TB45 TB23) 4)
  (= (MOVE-COST TB45 TB45) 1000) (= (MOVE-COST TB45 TB-FOR-56) 2)
  (= (MOVE-COST TB45 TB-FOR-1) 3) (= (MOVE-COST TB45 T6) 4)
  (= (MOVE-COST TB45 T5) 4) (= (MOVE-COST TB45 T1) 3)
  (= (MOVE-COST TB45 TB24) 2) (= (MOVE-COST TB45 M4) 4)
  (= (MOVE-COST TB45 TB12) 3) (= (MOVE-COST TB45 M2) 5)
  (= (MOVE-COST TB45 TABLE-IN) 5) (= (MOVE-COST TB-FOR-56 M1) 5)
  (= (MOVE-COST TB-FOR-56 T4) 6) (= (MOVE-COST TB-FOR-56 TB-FOR-234) 6)
  (= (MOVE-COST TB-FOR-56 T2) 5) (= (MOVE-COST TB-FOR-56 T3) 4)
  (= (MOVE-COST TB-FOR-56 M3) 4) (= (MOVE-COST TB-FOR-56 TABLE-OUT) 4)
  (= (MOVE-COST TB-FOR-56 M5) 3) (= (MOVE-COST TB-FOR-56 TB35) 3)
  (= (MOVE-COST TB-FOR-56 TB23) 5) (= (MOVE-COST TB-FOR-56 TB45) 2)
  (= (MOVE-COST TB-FOR-56 TB-FOR-56) 1000) (= (MOVE-COST TB-FOR-56 TB-FOR-1) 2)
  (= (MOVE-COST TB-FOR-56 T6) 3) (= (MOVE-COST TB-FOR-56 T5) 4)
  (= (MOVE-COST TB-FOR-56 T1) 4) (= (MOVE-COST TB-FOR-56 TB24) 3)
  (= (MOVE-COST TB-FOR-56 M4) 5) (= (MOVE-COST TB-FOR-56 TB12) 4)
  (= (MOVE-COST TB-FOR-56 M2) 6) (= (MOVE-COST TB-FOR-56 TABLE-IN) 6)
  (= (MOVE-COST TB-FOR-1 M1) 6) (= (MOVE-COST TB-FOR-1 T4) 7)
  (= (MOVE-COST TB-FOR-1 TB-FOR-234) 7) (= (MOVE-COST TB-FOR-1 T2) 6)
  (= (MOVE-COST TB-FOR-1 T3) 5) (= (MOVE-COST TB-FOR-1 M3) 5)
  (= (MOVE-COST TB-FOR-1 TABLE-OUT) 5) (= (MOVE-COST TB-FOR-1 M5) 4)
  (= (MOVE-COST TB-FOR-1 TB35) 4) (= (MOVE-COST TB-FOR-1 TB23) 6)
  (= (MOVE-COST TB-FOR-1 TB45) 3) (= (MOVE-COST TB-FOR-1 TB-FOR-56) 2)
  (= (MOVE-COST TB-FOR-1 TB-FOR-1) 1000) (= (MOVE-COST TB-FOR-1 T6) 2)
  (= (MOVE-COST TB-FOR-1 T5) 3) (= (MOVE-COST TB-FOR-1 T1) 4)
  (= (MOVE-COST TB-FOR-1 TB24) 4) (= (MOVE-COST TB-FOR-1 M4) 6)
  (= (MOVE-COST TB-FOR-1 TB12) 5) (= (MOVE-COST TB-FOR-1 M2) 7)
  (= (MOVE-COST TB-FOR-1 TABLE-IN) 7) (= (MOVE-COST T6 M1) 6)
  (= (MOVE-COST T6 T4) 7) (= (MOVE-COST T6 TB-FOR-234) 8)
  (= (MOVE-COST T6 T2) 7) (= (MOVE-COST T6 T3) 6) (= (MOVE-COST T6 M3) 6)
  (= (MOVE-COST T6 TABLE-OUT) 6) (= (MOVE-COST T6 M5) 5)
  (= (MOVE-COST T6 TB35) 5) (= (MOVE-COST T6 TB23) 6) (= (MOVE-COST T6 TB45) 4)
  (= (MOVE-COST T6 TB-FOR-56) 3) (= (MOVE-COST T6 TB-FOR-1) 2)
  (= (MOVE-COST T6 T6) 1000) (= (MOVE-COST T6 T5) 2) (= (MOVE-COST T6 T1) 3)
  (= (MOVE-COST T6 TB24) 4) (= (MOVE-COST T6 M4) 6) (= (MOVE-COST T6 TB12) 5)
  (= (MOVE-COST T6 M2) 7) (= (MOVE-COST T6 TABLE-IN) 7) (= (MOVE-COST T5 M1) 5)
  (= (MOVE-COST T5 T4) 6) (= (MOVE-COST T5 TB-FOR-234) 7)
  (= (MOVE-COST T5 T2) 7) (= (MOVE-COST T5 T3) 6) (= (MOVE-COST T5 M3) 6)
  (= (MOVE-COST T5 TABLE-OUT) 6) (= (MOVE-COST T5 M5) 5)
  (= (MOVE-COST T5 TB35) 5) (= (MOVE-COST T5 TB23) 5) (= (MOVE-COST T5 TB45) 4)
  (= (MOVE-COST T5 TB-FOR-56) 4) (= (MOVE-COST T5 TB-FOR-1) 3)
  (= (MOVE-COST T5 T6) 2) (= (MOVE-COST T5 T5) 1000) (= (MOVE-COST T5 T1) 2)
  (= (MOVE-COST T5 TB24) 3) (= (MOVE-COST T5 M4) 5) (= (MOVE-COST T5 TB12) 4)
  (= (MOVE-COST T5 M2) 6) (= (MOVE-COST T5 TABLE-IN) 6) (= (MOVE-COST T1 M1) 4)
  (= (MOVE-COST T1 T4) 5) (= (MOVE-COST T1 TB-FOR-234) 6)
  (= (MOVE-COST T1 T2) 6) (= (MOVE-COST T1 T3) 5) (= (MOVE-COST T1 M3) 5)
  (= (MOVE-COST T1 TABLE-OUT) 5) (= (MOVE-COST T1 M5) 4)
  (= (MOVE-COST T1 TB35) 4) (= (MOVE-COST T1 TB23) 4) (= (MOVE-COST T1 TB45) 3)
  (= (MOVE-COST T1 TB-FOR-56) 4) (= (MOVE-COST T1 TB-FOR-1) 4)
  (= (MOVE-COST T1 T6) 3) (= (MOVE-COST T1 T5) 2) (= (MOVE-COST T1 T1) 1000)
  (= (MOVE-COST T1 TB24) 2) (= (MOVE-COST T1 M4) 4) (= (MOVE-COST T1 TB12) 3)
  (= (MOVE-COST T1 M2) 5) (= (MOVE-COST T1 TABLE-IN) 5)
  (= (MOVE-COST TB24 M1) 3) (= (MOVE-COST TB24 T4) 4)
  (= (MOVE-COST TB24 TB-FOR-234) 5) (= (MOVE-COST TB24 T2) 5)
  (= (MOVE-COST TB24 T3) 4) (= (MOVE-COST TB24 M3) 4)
  (= (MOVE-COST TB24 TABLE-OUT) 4) (= (MOVE-COST TB24 M5) 3)
  (= (MOVE-COST TB24 TB35) 3) (= (MOVE-COST TB24 TB23) 3)
  (= (MOVE-COST TB24 TB45) 2) (= (MOVE-COST TB24 TB-FOR-56) 3)
  (= (MOVE-COST TB24 TB-FOR-1) 4) (= (MOVE-COST TB24 T6) 4)
  (= (MOVE-COST TB24 T5) 3) (= (MOVE-COST TB24 T1) 2)
  (= (MOVE-COST TB24 TB24) 1000) (= (MOVE-COST TB24 M4) 3)
  (= (MOVE-COST TB24 TB12) 2) (= (MOVE-COST TB24 M2) 4)
  (= (MOVE-COST TB24 TABLE-IN) 4) (= (MOVE-COST M4 M1) 3)
  (= (MOVE-COST M4 T4) 4) (= (MOVE-COST M4 TB-FOR-234) 5)
  (= (MOVE-COST M4 T2) 5) (= (MOVE-COST M4 T3) 4) (= (MOVE-COST M4 M3) 6)
  (= (MOVE-COST M4 TABLE-OUT) 6) (= (MOVE-COST M4 M5) 5)
  (= (MOVE-COST M4 TB35) 5) (= (MOVE-COST M4 TB23) 3) (= (MOVE-COST M4 TB45) 4)
  (= (MOVE-COST M4 TB-FOR-56) 5) (= (MOVE-COST M4 TB-FOR-1) 6)
  (= (MOVE-COST M4 T6) 6) (= (MOVE-COST M4 T5) 5) (= (MOVE-COST M4 T1) 4)
  (= (MOVE-COST M4 TB24) 3) (= (MOVE-COST M4 M4) 1000)
  (= (MOVE-COST M4 TB12) 2) (= (MOVE-COST M4 M2) 4)
  (= (MOVE-COST M4 TABLE-IN) 4) (= (MOVE-COST TB12 M1) 2)
  (= (MOVE-COST TB12 T4) 3) (= (MOVE-COST TB12 TB-FOR-234) 4)
  (= (MOVE-COST TB12 T2) 4) (= (MOVE-COST TB12 T3) 3) (= (MOVE-COST TB12 M3) 5)
  (= (MOVE-COST TB12 TABLE-OUT) 5) (= (MOVE-COST TB12 M5) 4)
  (= (MOVE-COST TB12 TB35) 4) (= (MOVE-COST TB12 TB23) 2)
  (= (MOVE-COST TB12 TB45) 3) (= (MOVE-COST TB12 TB-FOR-56) 4)
  (= (MOVE-COST TB12 TB-FOR-1) 5) (= (MOVE-COST TB12 T6) 5)
  (= (MOVE-COST TB12 T5) 4) (= (MOVE-COST TB12 T1) 3)
  (= (MOVE-COST TB12 TB24) 2) (= (MOVE-COST TB12 M4) 2)
  (= (MOVE-COST TB12 TB12) 1000) (= (MOVE-COST TB12 M2) 3)
  (= (MOVE-COST TB12 TABLE-IN) 3) (= (MOVE-COST M2 M1) 2)
  (= (MOVE-COST M2 T4) 5) (= (MOVE-COST M2 TB-FOR-234) 6)
  (= (MOVE-COST M2 T2) 6) (= (MOVE-COST M2 T3) 5) (= (MOVE-COST M2 M3) 7)
  (= (MOVE-COST M2 TABLE-OUT) 7) (= (MOVE-COST M2 M5) 6)
  (= (MOVE-COST M2 TB35) 6) (= (MOVE-COST M2 TB23) 4) (= (MOVE-COST M2 TB45) 5)
  (= (MOVE-COST M2 TB-FOR-56) 6) (= (MOVE-COST M2 TB-FOR-1) 7)
  (= (MOVE-COST M2 T6) 7) (= (MOVE-COST M2 T5) 6) (= (MOVE-COST M2 T1) 5)
  (= (MOVE-COST M2 TB24) 4) (= (MOVE-COST M2 M4) 4) (= (MOVE-COST M2 TB12) 3)
  (= (MOVE-COST M2 M2) 1000) (= (MOVE-COST M2 TABLE-IN) 2)
  (= (MOVE-COST TABLE-IN M1) 2) (= (MOVE-COST TABLE-IN T4) 5)
  (= (MOVE-COST TABLE-IN TB-FOR-234) 6) (= (MOVE-COST TABLE-IN T2) 6)
  (= (MOVE-COST TABLE-IN T3) 5) (= (MOVE-COST TABLE-IN M3) 7)
  (= (MOVE-COST TABLE-IN TABLE-OUT) 7) (= (MOVE-COST TABLE-IN M5) 6)
  (= (MOVE-COST TABLE-IN TB35) 6) (= (MOVE-COST TABLE-IN TB23) 4)
  (= (MOVE-COST TABLE-IN TB45) 5) (= (MOVE-COST TABLE-IN TB-FOR-56) 6)
  (= (MOVE-COST TABLE-IN TB-FOR-1) 7) (= (MOVE-COST TABLE-IN T6) 7)
  (= (MOVE-COST TABLE-IN T5) 6) (= (MOVE-COST TABLE-IN T1) 5)
  (= (MOVE-COST TABLE-IN TB24) 4) (= (MOVE-COST TABLE-IN M4) 4)
  (= (MOVE-COST TABLE-IN TB12) 3) (= (MOVE-COST TABLE-IN M2) 2)
  (= (MOVE-COST TABLE-IN TABLE-IN) 1000) (CONNECTED CARRY-IN TABLE-IN)
  (CONNECTED TABLE-OUT CARRY-OUT) (= (JOB-COST MJ5) 2) (DEPENDS J6 MJ5)
  (JOB-AVAILABLE-AT MJ5 M5) (AT P6 T6) (USES J6 P6) (= (JOB-COST J6) 3)
  (DEPENDS J5 J6) (JOB-AVAILABLE-AT J6 TB-FOR-56) (AT P5 T5) (USES J5 P5)
  (= (JOB-COST J5) 3) (DEPENDS MJ4 J5) (JOB-AVAILABLE-AT J5 TB-FOR-56)
  (= (JOB-COST MJ4) 3) (DEPENDS J4 MJ4) (JOB-AVAILABLE-AT MJ4 M4) (AT P4 T4)
  (USES J4 P4) (= (JOB-COST J4) 2) (DEPENDS MJ3 J4)
  (JOB-AVAILABLE-AT J4 TB-FOR-234) (= (JOB-COST MJ3) 3) (DEPENDS J3 MJ3)
  (JOB-AVAILABLE-AT MJ3 M3) (AT P3 T3) (USES J3 P3) (= (JOB-COST J3) 3)
  (DEPENDS J2 J3) (JOB-AVAILABLE-AT J3 TB-FOR-234) (AT P2 T2) (USES J2 P2)
  (= (JOB-COST J2) 2) (DEPENDS J1 J2) (JOB-AVAILABLE-AT J2 TB-FOR-234)
  (AT P1 T1) (USES J1 P1) (= (JOB-COST J1) 3) (DEPENDS MJ2 J1)
  (JOB-AVAILABLE-AT J1 TB-FOR-1) (= (JOB-COST MJ2) 3) (DEPENDS MJ1 MJ2)
  (JOB-AVAILABLE-AT MJ2 M2) (= (JOB-COST MJ1) 3) (DEPENDS NOTHING-DONE MJ1)
  (JOB-AVAILABLE-AT MJ1 M1) (= (JOB-COST NOTHING-DONE) 0) (AT B-0 CARRY-IN)
  (FINISHED NOTHING-DONE B-0) (AT B-1 CARRY-IN) (FINISHED NOTHING-DONE B-1)
  (AT B-2 CARRY-IN) (FINISHED NOTHING-DONE B-2) (AT B-3 CARRY-IN)
  (FINISHED NOTHING-DONE B-3) (FREE A1) (AT A1 TABLE-IN) (ARM-PRESENT TABLE-IN)
  (FREE A2) (AT A2 TB12) (ARM-PRESENT TB12) (FREE A3) (AT A3 TB23)
  (ARM-PRESENT TB23) (FREE A4) (AT A4 TB24) (ARM-PRESENT TB24) (FREE A5)
  (AT A5 TB45) (ARM-PRESENT TB45))
 (:GOAL
  (AND (AT B-0 CARRY-OUT) (FINISHED MJ5 B-0) (AT B-1 CARRY-OUT)
       (FINISHED MJ5 B-1) (AT B-2 CARRY-OUT) (FINISHED MJ5 B-2)
       (AT B-3 CARRY-OUT) (FINISHED MJ5 B-3)))
 (:METRIC MINIMIZE (TOTAL-COST)))