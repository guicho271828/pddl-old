(DEFINE (PROBLEM CELL-ASSEMBLY-2A2B-MIXED-EACH-22)
 (:DOMAIN CELL-ASSEMBLY-EACHPARTS)
 (:OBJECTS ARM1 ARM2 - ARM BASE-2A-0 BASE-2A-1 BASE-2A-2 BASE-2A-3 BASE-2A-4
  BASE-2A-5 BASE-2A-6 BASE-2A-7 BASE-2A-8 BASE-2A-9 BASE-2A-10 BASE-2A-11
  BASE-2A-12 BASE-2A-13 BASE-2A-14 BASE-2A-15 BASE-2A-16 BASE-2A-17 BASE-2A-18
  BASE-2A-19 BASE-2A-20 BASE-2A-21 BASE-2B-0 BASE-2B-1 BASE-2B-2 BASE-2B-3
  BASE-2B-4 BASE-2B-5 BASE-2B-6 BASE-2B-7 BASE-2B-8 BASE-2B-9 BASE-2B-10
  BASE-2B-11 BASE-2B-12 BASE-2B-13 BASE-2B-14 BASE-2B-15 BASE-2B-16 BASE-2B-17
  BASE-2B-18 BASE-2B-19 BASE-2B-20 BASE-2B-21 - BASE PART-2A-A-0 PART-2A-A-1
  PART-2A-A-2 PART-2A-A-3 PART-2A-A-4 PART-2A-A-5 PART-2A-A-6 PART-2A-A-7
  PART-2A-A-8 PART-2A-A-9 PART-2A-A-10 PART-2A-A-11 PART-2A-A-12 PART-2A-A-13
  PART-2A-A-14 PART-2A-A-15 PART-2A-A-16 PART-2A-A-17 PART-2A-A-18 PART-2A-A-19
  PART-2A-A-20 PART-2A-A-21 PART-2A-B-0 PART-2A-B-1 PART-2A-B-2 PART-2A-B-3
  PART-2A-B-4 PART-2A-B-5 PART-2A-B-6 PART-2A-B-7 PART-2A-B-8 PART-2A-B-9
  PART-2A-B-10 PART-2A-B-11 PART-2A-B-12 PART-2A-B-13 PART-2A-B-14 PART-2A-B-15
  PART-2A-B-16 PART-2A-B-17 PART-2A-B-18 PART-2A-B-19 PART-2A-B-20 PART-2A-B-21
  PART-2A-C-0 PART-2A-C-1 PART-2A-C-2 PART-2A-C-3 PART-2A-C-4 PART-2A-C-5
  PART-2A-C-6 PART-2A-C-7 PART-2A-C-8 PART-2A-C-9 PART-2A-C-10 PART-2A-C-11
  PART-2A-C-12 PART-2A-C-13 PART-2A-C-14 PART-2A-C-15 PART-2A-C-16 PART-2A-C-17
  PART-2A-C-18 PART-2A-C-19 PART-2A-C-20 PART-2A-C-21 PART-2B-A-0 PART-2B-A-1
  PART-2B-A-2 PART-2B-A-3 PART-2B-A-4 PART-2B-A-5 PART-2B-A-6 PART-2B-A-7
  PART-2B-A-8 PART-2B-A-9 PART-2B-A-10 PART-2B-A-11 PART-2B-A-12 PART-2B-A-13
  PART-2B-A-14 PART-2B-A-15 PART-2B-A-16 PART-2B-A-17 PART-2B-A-18 PART-2B-A-19
  PART-2B-A-20 PART-2B-A-21 PART-2B-B-0 PART-2B-B-1 PART-2B-B-2 PART-2B-B-3
  PART-2B-B-4 PART-2B-B-5 PART-2B-B-6 PART-2B-B-7 PART-2B-B-8 PART-2B-B-9
  PART-2B-B-10 PART-2B-B-11 PART-2B-B-12 PART-2B-B-13 PART-2B-B-14 PART-2B-B-15
  PART-2B-B-16 PART-2B-B-17 PART-2B-B-18 PART-2B-B-19 PART-2B-B-20 PART-2B-B-21
  PART-2B-C-0 PART-2B-C-1 PART-2B-C-2 PART-2B-C-3 PART-2B-C-4 PART-2B-C-5
  PART-2B-C-6 PART-2B-C-7 PART-2B-C-8 PART-2B-C-9 PART-2B-C-10 PART-2B-C-11
  PART-2B-C-12 PART-2B-C-13 PART-2B-C-14 PART-2B-C-15 PART-2B-C-16 PART-2B-C-17
  PART-2B-C-18 PART-2B-C-19 PART-2B-C-20 PART-2B-C-21 - COMPONENT TRAY-A TRAY-B
  TRAY-C - TRAY TABLE1 TABLE2 - TABLE GASKET-MACHINE SCREW-MACHINE-A
  OILING-MACHINE SCREW-MACHINE-C INSPECTION-MACHINE - MACHINE J2A-INSERT-GASKET
  - MACHINE-JOB J2A-ATTATCH-A - JOB J2A-SCREW-A - MACHINE-JOB J2A-OIL-CYLINDER
  - MACHINE-JOB J2A-ATTATCH-B - JOB J2A-ATTATCH-C - JOB J2A-SCREW-C -
  MACHINE-JOB J2A-INSPECT-BASE - MACHINE-JOB J2B-ATTATCH-A - JOB J2B-SCREW-A -
  MACHINE-JOB J2B-ATTATCH-B - JOB J2B-ATTATCH-C - JOB J2B-SCREW-C -
  MACHINE-JOB)
 (:INIT (= (TOTAL-COST) 0) (= (LOADING-COST) 1) (REACHABLE ARM1 GASKET-MACHINE)
  (REACHABLE ARM1 INSPECTION-MACHINE) (REACHABLE ARM1 TABLE-IN)
  (REACHABLE ARM1 TABLE-OUT) (REACHABLE ARM1 TABLE1) (REACHABLE ARM1 TABLE2)
  (REACHABLE ARM1 TRAY-A) (REACHABLE ARM2 SCREW-MACHINE-A)
  (REACHABLE ARM2 OILING-MACHINE) (REACHABLE ARM2 SCREW-MACHINE-C)
  (REACHABLE ARM2 TABLE1) (REACHABLE ARM2 TABLE2) (REACHABLE ARM2 TRAY-B)
  (REACHABLE ARM2 TRAY-C) (= (MOVE-COST GASKET-MACHINE GASKET-MACHINE) 1000)
  (= (MOVE-COST GASKET-MACHINE TABLE1) 2)
  (= (MOVE-COST GASKET-MACHINE SCREW-MACHINE-A) 3)
  (= (MOVE-COST GASKET-MACHINE TRAY-B) 4)
  (= (MOVE-COST GASKET-MACHINE OILING-MACHINE) 5)
  (= (MOVE-COST GASKET-MACHINE TRAY-C) 6)
  (= (MOVE-COST GASKET-MACHINE SCREW-MACHINE-C) 7)
  (= (MOVE-COST GASKET-MACHINE TABLE2) 6)
  (= (MOVE-COST GASKET-MACHINE INSPECTION-MACHINE) 5)
  (= (MOVE-COST GASKET-MACHINE TABLE-OUT) 4)
  (= (MOVE-COST GASKET-MACHINE TRAY-A) 3)
  (= (MOVE-COST GASKET-MACHINE TABLE-IN) 2)
  (= (MOVE-COST TABLE1 GASKET-MACHINE) 2) (= (MOVE-COST TABLE1 TABLE1) 1000)
  (= (MOVE-COST TABLE1 SCREW-MACHINE-A) 2) (= (MOVE-COST TABLE1 TRAY-B) 3)
  (= (MOVE-COST TABLE1 OILING-MACHINE) 4) (= (MOVE-COST TABLE1 TRAY-C) 5)
  (= (MOVE-COST TABLE1 SCREW-MACHINE-C) 6) (= (MOVE-COST TABLE1 TABLE2) 7)
  (= (MOVE-COST TABLE1 INSPECTION-MACHINE) 6)
  (= (MOVE-COST TABLE1 TABLE-OUT) 5) (= (MOVE-COST TABLE1 TRAY-A) 4)
  (= (MOVE-COST TABLE1 TABLE-IN) 3)
  (= (MOVE-COST SCREW-MACHINE-A GASKET-MACHINE) 3)
  (= (MOVE-COST SCREW-MACHINE-A TABLE1) 2)
  (= (MOVE-COST SCREW-MACHINE-A SCREW-MACHINE-A) 1000)
  (= (MOVE-COST SCREW-MACHINE-A TRAY-B) 2)
  (= (MOVE-COST SCREW-MACHINE-A OILING-MACHINE) 3)
  (= (MOVE-COST SCREW-MACHINE-A TRAY-C) 4)
  (= (MOVE-COST SCREW-MACHINE-A SCREW-MACHINE-C) 5)
  (= (MOVE-COST SCREW-MACHINE-A TABLE2) 6)
  (= (MOVE-COST SCREW-MACHINE-A INSPECTION-MACHINE) 7)
  (= (MOVE-COST SCREW-MACHINE-A TABLE-OUT) 6)
  (= (MOVE-COST SCREW-MACHINE-A TRAY-A) 5)
  (= (MOVE-COST SCREW-MACHINE-A TABLE-IN) 4)
  (= (MOVE-COST TRAY-B GASKET-MACHINE) 4) (= (MOVE-COST TRAY-B TABLE1) 3)
  (= (MOVE-COST TRAY-B SCREW-MACHINE-A) 2) (= (MOVE-COST TRAY-B TRAY-B) 1000)
  (= (MOVE-COST TRAY-B OILING-MACHINE) 2) (= (MOVE-COST TRAY-B TRAY-C) 3)
  (= (MOVE-COST TRAY-B SCREW-MACHINE-C) 4) (= (MOVE-COST TRAY-B TABLE2) 5)
  (= (MOVE-COST TRAY-B INSPECTION-MACHINE) 6)
  (= (MOVE-COST TRAY-B TABLE-OUT) 7) (= (MOVE-COST TRAY-B TRAY-A) 6)
  (= (MOVE-COST TRAY-B TABLE-IN) 5)
  (= (MOVE-COST OILING-MACHINE GASKET-MACHINE) 5)
  (= (MOVE-COST OILING-MACHINE TABLE1) 4)
  (= (MOVE-COST OILING-MACHINE SCREW-MACHINE-A) 3)
  (= (MOVE-COST OILING-MACHINE TRAY-B) 2)
  (= (MOVE-COST OILING-MACHINE OILING-MACHINE) 1000)
  (= (MOVE-COST OILING-MACHINE TRAY-C) 2)
  (= (MOVE-COST OILING-MACHINE SCREW-MACHINE-C) 3)
  (= (MOVE-COST OILING-MACHINE TABLE2) 4)
  (= (MOVE-COST OILING-MACHINE INSPECTION-MACHINE) 5)
  (= (MOVE-COST OILING-MACHINE TABLE-OUT) 6)
  (= (MOVE-COST OILING-MACHINE TRAY-A) 7)
  (= (MOVE-COST OILING-MACHINE TABLE-IN) 6)
  (= (MOVE-COST TRAY-C GASKET-MACHINE) 6) (= (MOVE-COST TRAY-C TABLE1) 5)
  (= (MOVE-COST TRAY-C SCREW-MACHINE-A) 4) (= (MOVE-COST TRAY-C TRAY-B) 3)
  (= (MOVE-COST TRAY-C OILING-MACHINE) 2) (= (MOVE-COST TRAY-C TRAY-C) 1000)
  (= (MOVE-COST TRAY-C SCREW-MACHINE-C) 2) (= (MOVE-COST TRAY-C TABLE2) 3)
  (= (MOVE-COST TRAY-C INSPECTION-MACHINE) 4)
  (= (MOVE-COST TRAY-C TABLE-OUT) 5) (= (MOVE-COST TRAY-C TRAY-A) 6)
  (= (MOVE-COST TRAY-C TABLE-IN) 7)
  (= (MOVE-COST SCREW-MACHINE-C GASKET-MACHINE) 7)
  (= (MOVE-COST SCREW-MACHINE-C TABLE1) 6)
  (= (MOVE-COST SCREW-MACHINE-C SCREW-MACHINE-A) 5)
  (= (MOVE-COST SCREW-MACHINE-C TRAY-B) 4)
  (= (MOVE-COST SCREW-MACHINE-C OILING-MACHINE) 3)
  (= (MOVE-COST SCREW-MACHINE-C TRAY-C) 2)
  (= (MOVE-COST SCREW-MACHINE-C SCREW-MACHINE-C) 1000)
  (= (MOVE-COST SCREW-MACHINE-C TABLE2) 2)
  (= (MOVE-COST SCREW-MACHINE-C INSPECTION-MACHINE) 3)
  (= (MOVE-COST SCREW-MACHINE-C TABLE-OUT) 4)
  (= (MOVE-COST SCREW-MACHINE-C TRAY-A) 5)
  (= (MOVE-COST SCREW-MACHINE-C TABLE-IN) 6)
  (= (MOVE-COST TABLE2 GASKET-MACHINE) 6) (= (MOVE-COST TABLE2 TABLE1) 7)
  (= (MOVE-COST TABLE2 SCREW-MACHINE-A) 6) (= (MOVE-COST TABLE2 TRAY-B) 5)
  (= (MOVE-COST TABLE2 OILING-MACHINE) 4) (= (MOVE-COST TABLE2 TRAY-C) 3)
  (= (MOVE-COST TABLE2 SCREW-MACHINE-C) 2) (= (MOVE-COST TABLE2 TABLE2) 1000)
  (= (MOVE-COST TABLE2 INSPECTION-MACHINE) 2)
  (= (MOVE-COST TABLE2 TABLE-OUT) 3) (= (MOVE-COST TABLE2 TRAY-A) 4)
  (= (MOVE-COST TABLE2 TABLE-IN) 5)
  (= (MOVE-COST INSPECTION-MACHINE GASKET-MACHINE) 5)
  (= (MOVE-COST INSPECTION-MACHINE TABLE1) 6)
  (= (MOVE-COST INSPECTION-MACHINE SCREW-MACHINE-A) 7)
  (= (MOVE-COST INSPECTION-MACHINE TRAY-B) 6)
  (= (MOVE-COST INSPECTION-MACHINE OILING-MACHINE) 5)
  (= (MOVE-COST INSPECTION-MACHINE TRAY-C) 4)
  (= (MOVE-COST INSPECTION-MACHINE SCREW-MACHINE-C) 3)
  (= (MOVE-COST INSPECTION-MACHINE TABLE2) 2)
  (= (MOVE-COST INSPECTION-MACHINE INSPECTION-MACHINE) 1000)
  (= (MOVE-COST INSPECTION-MACHINE TABLE-OUT) 2)
  (= (MOVE-COST INSPECTION-MACHINE TRAY-A) 3)
  (= (MOVE-COST INSPECTION-MACHINE TABLE-IN) 4)
  (= (MOVE-COST TABLE-OUT GASKET-MACHINE) 4) (= (MOVE-COST TABLE-OUT TABLE1) 5)
  (= (MOVE-COST TABLE-OUT SCREW-MACHINE-A) 6)
  (= (MOVE-COST TABLE-OUT TRAY-B) 7) (= (MOVE-COST TABLE-OUT OILING-MACHINE) 6)
  (= (MOVE-COST TABLE-OUT TRAY-C) 5)
  (= (MOVE-COST TABLE-OUT SCREW-MACHINE-C) 4)
  (= (MOVE-COST TABLE-OUT TABLE2) 3)
  (= (MOVE-COST TABLE-OUT INSPECTION-MACHINE) 2)
  (= (MOVE-COST TABLE-OUT TABLE-OUT) 1000) (= (MOVE-COST TABLE-OUT TRAY-A) 2)
  (= (MOVE-COST TABLE-OUT TABLE-IN) 3) (= (MOVE-COST TRAY-A GASKET-MACHINE) 3)
  (= (MOVE-COST TRAY-A TABLE1) 4) (= (MOVE-COST TRAY-A SCREW-MACHINE-A) 5)
  (= (MOVE-COST TRAY-A TRAY-B) 6) (= (MOVE-COST TRAY-A OILING-MACHINE) 7)
  (= (MOVE-COST TRAY-A TRAY-C) 6) (= (MOVE-COST TRAY-A SCREW-MACHINE-C) 5)
  (= (MOVE-COST TRAY-A TABLE2) 4) (= (MOVE-COST TRAY-A INSPECTION-MACHINE) 3)
  (= (MOVE-COST TRAY-A TABLE-OUT) 2) (= (MOVE-COST TRAY-A TRAY-A) 1000)
  (= (MOVE-COST TRAY-A TABLE-IN) 2) (= (MOVE-COST TABLE-IN GASKET-MACHINE) 2)
  (= (MOVE-COST TABLE-IN TABLE1) 3) (= (MOVE-COST TABLE-IN SCREW-MACHINE-A) 4)
  (= (MOVE-COST TABLE-IN TRAY-B) 5) (= (MOVE-COST TABLE-IN OILING-MACHINE) 6)
  (= (MOVE-COST TABLE-IN TRAY-C) 7) (= (MOVE-COST TABLE-IN SCREW-MACHINE-C) 6)
  (= (MOVE-COST TABLE-IN TABLE2) 5)
  (= (MOVE-COST TABLE-IN INSPECTION-MACHINE) 4)
  (= (MOVE-COST TABLE-IN TABLE-OUT) 3) (= (MOVE-COST TABLE-IN TRAY-A) 2)
  (= (MOVE-COST TABLE-IN TABLE-IN) 1000) (CONNECTED CARRY-IN TABLE-IN)
  (CONNECTED TABLE-OUT CARRY-OUT) (= (JOB-COST J2A-INSPECT-BASE) 2)
  (DEPENDS J2A-SCREW-C J2A-INSPECT-BASE)
  (JOB-AVAILABLE-AT J2A-INSPECT-BASE INSPECTION-MACHINE)
  (= (JOB-COST J2A-SCREW-C) 3) (DEPENDS J2A-ATTATCH-C J2A-SCREW-C)
  (JOB-AVAILABLE-AT J2A-SCREW-C SCREW-MACHINE-C) (AT PART-2A-C-21 TRAY-C)
  (USES J2A-ATTATCH-C PART-2A-C-21) (AT PART-2A-C-20 TRAY-C)
  (USES J2A-ATTATCH-C PART-2A-C-20) (AT PART-2A-C-19 TRAY-C)
  (USES J2A-ATTATCH-C PART-2A-C-19) (AT PART-2A-C-18 TRAY-C)
  (USES J2A-ATTATCH-C PART-2A-C-18) (AT PART-2A-C-17 TRAY-C)
  (USES J2A-ATTATCH-C PART-2A-C-17) (AT PART-2A-C-16 TRAY-C)
  (USES J2A-ATTATCH-C PART-2A-C-16) (AT PART-2A-C-15 TRAY-C)
  (USES J2A-ATTATCH-C PART-2A-C-15) (AT PART-2A-C-14 TRAY-C)
  (USES J2A-ATTATCH-C PART-2A-C-14) (AT PART-2A-C-13 TRAY-C)
  (USES J2A-ATTATCH-C PART-2A-C-13) (AT PART-2A-C-12 TRAY-C)
  (USES J2A-ATTATCH-C PART-2A-C-12) (AT PART-2A-C-11 TRAY-C)
  (USES J2A-ATTATCH-C PART-2A-C-11) (AT PART-2A-C-10 TRAY-C)
  (USES J2A-ATTATCH-C PART-2A-C-10) (AT PART-2A-C-9 TRAY-C)
  (USES J2A-ATTATCH-C PART-2A-C-9) (AT PART-2A-C-8 TRAY-C)
  (USES J2A-ATTATCH-C PART-2A-C-8) (AT PART-2A-C-7 TRAY-C)
  (USES J2A-ATTATCH-C PART-2A-C-7) (AT PART-2A-C-6 TRAY-C)
  (USES J2A-ATTATCH-C PART-2A-C-6) (AT PART-2A-C-5 TRAY-C)
  (USES J2A-ATTATCH-C PART-2A-C-5) (AT PART-2A-C-4 TRAY-C)
  (USES J2A-ATTATCH-C PART-2A-C-4) (AT PART-2A-C-3 TRAY-C)
  (USES J2A-ATTATCH-C PART-2A-C-3) (AT PART-2A-C-2 TRAY-C)
  (USES J2A-ATTATCH-C PART-2A-C-2) (AT PART-2A-C-1 TRAY-C)
  (USES J2A-ATTATCH-C PART-2A-C-1) (AT PART-2A-C-0 TRAY-C)
  (USES J2A-ATTATCH-C PART-2A-C-0) (= (JOB-COST J2A-ATTATCH-C) 2)
  (DEPENDS J2A-ATTATCH-B J2A-ATTATCH-C) (JOB-AVAILABLE-AT J2A-ATTATCH-C TABLE2)
  (AT PART-2A-B-21 TRAY-B) (USES J2A-ATTATCH-B PART-2A-B-21)
  (AT PART-2A-B-20 TRAY-B) (USES J2A-ATTATCH-B PART-2A-B-20)
  (AT PART-2A-B-19 TRAY-B) (USES J2A-ATTATCH-B PART-2A-B-19)
  (AT PART-2A-B-18 TRAY-B) (USES J2A-ATTATCH-B PART-2A-B-18)
  (AT PART-2A-B-17 TRAY-B) (USES J2A-ATTATCH-B PART-2A-B-17)
  (AT PART-2A-B-16 TRAY-B) (USES J2A-ATTATCH-B PART-2A-B-16)
  (AT PART-2A-B-15 TRAY-B) (USES J2A-ATTATCH-B PART-2A-B-15)
  (AT PART-2A-B-14 TRAY-B) (USES J2A-ATTATCH-B PART-2A-B-14)
  (AT PART-2A-B-13 TRAY-B) (USES J2A-ATTATCH-B PART-2A-B-13)
  (AT PART-2A-B-12 TRAY-B) (USES J2A-ATTATCH-B PART-2A-B-12)
  (AT PART-2A-B-11 TRAY-B) (USES J2A-ATTATCH-B PART-2A-B-11)
  (AT PART-2A-B-10 TRAY-B) (USES J2A-ATTATCH-B PART-2A-B-10)
  (AT PART-2A-B-9 TRAY-B) (USES J2A-ATTATCH-B PART-2A-B-9)
  (AT PART-2A-B-8 TRAY-B) (USES J2A-ATTATCH-B PART-2A-B-8)
  (AT PART-2A-B-7 TRAY-B) (USES J2A-ATTATCH-B PART-2A-B-7)
  (AT PART-2A-B-6 TRAY-B) (USES J2A-ATTATCH-B PART-2A-B-6)
  (AT PART-2A-B-5 TRAY-B) (USES J2A-ATTATCH-B PART-2A-B-5)
  (AT PART-2A-B-4 TRAY-B) (USES J2A-ATTATCH-B PART-2A-B-4)
  (AT PART-2A-B-3 TRAY-B) (USES J2A-ATTATCH-B PART-2A-B-3)
  (AT PART-2A-B-2 TRAY-B) (USES J2A-ATTATCH-B PART-2A-B-2)
  (AT PART-2A-B-1 TRAY-B) (USES J2A-ATTATCH-B PART-2A-B-1)
  (AT PART-2A-B-0 TRAY-B) (USES J2A-ATTATCH-B PART-2A-B-0)
  (= (JOB-COST J2A-ATTATCH-B) 3) (DEPENDS J2A-OIL-CYLINDER J2A-ATTATCH-B)
  (JOB-AVAILABLE-AT J2A-ATTATCH-B TABLE2) (= (JOB-COST J2A-OIL-CYLINDER) 3)
  (DEPENDS J2A-SCREW-A J2A-OIL-CYLINDER)
  (JOB-AVAILABLE-AT J2A-OIL-CYLINDER OILING-MACHINE)
  (= (JOB-COST J2A-SCREW-A) 2) (DEPENDS J2A-ATTATCH-A J2A-SCREW-A)
  (JOB-AVAILABLE-AT J2A-SCREW-A SCREW-MACHINE-A) (AT PART-2A-A-21 TRAY-A)
  (USES J2A-ATTATCH-A PART-2A-A-21) (AT PART-2A-A-20 TRAY-A)
  (USES J2A-ATTATCH-A PART-2A-A-20) (AT PART-2A-A-19 TRAY-A)
  (USES J2A-ATTATCH-A PART-2A-A-19) (AT PART-2A-A-18 TRAY-A)
  (USES J2A-ATTATCH-A PART-2A-A-18) (AT PART-2A-A-17 TRAY-A)
  (USES J2A-ATTATCH-A PART-2A-A-17) (AT PART-2A-A-16 TRAY-A)
  (USES J2A-ATTATCH-A PART-2A-A-16) (AT PART-2A-A-15 TRAY-A)
  (USES J2A-ATTATCH-A PART-2A-A-15) (AT PART-2A-A-14 TRAY-A)
  (USES J2A-ATTATCH-A PART-2A-A-14) (AT PART-2A-A-13 TRAY-A)
  (USES J2A-ATTATCH-A PART-2A-A-13) (AT PART-2A-A-12 TRAY-A)
  (USES J2A-ATTATCH-A PART-2A-A-12) (AT PART-2A-A-11 TRAY-A)
  (USES J2A-ATTATCH-A PART-2A-A-11) (AT PART-2A-A-10 TRAY-A)
  (USES J2A-ATTATCH-A PART-2A-A-10) (AT PART-2A-A-9 TRAY-A)
  (USES J2A-ATTATCH-A PART-2A-A-9) (AT PART-2A-A-8 TRAY-A)
  (USES J2A-ATTATCH-A PART-2A-A-8) (AT PART-2A-A-7 TRAY-A)
  (USES J2A-ATTATCH-A PART-2A-A-7) (AT PART-2A-A-6 TRAY-A)
  (USES J2A-ATTATCH-A PART-2A-A-6) (AT PART-2A-A-5 TRAY-A)
  (USES J2A-ATTATCH-A PART-2A-A-5) (AT PART-2A-A-4 TRAY-A)
  (USES J2A-ATTATCH-A PART-2A-A-4) (AT PART-2A-A-3 TRAY-A)
  (USES J2A-ATTATCH-A PART-2A-A-3) (AT PART-2A-A-2 TRAY-A)
  (USES J2A-ATTATCH-A PART-2A-A-2) (AT PART-2A-A-1 TRAY-A)
  (USES J2A-ATTATCH-A PART-2A-A-1) (AT PART-2A-A-0 TRAY-A)
  (USES J2A-ATTATCH-A PART-2A-A-0) (= (JOB-COST J2A-ATTATCH-A) 2)
  (DEPENDS J2A-INSERT-GASKET J2A-ATTATCH-A)
  (JOB-AVAILABLE-AT J2A-ATTATCH-A TABLE1) (= (JOB-COST J2A-INSERT-GASKET) 2)
  (DEPENDS NOTHING-DONE J2A-INSERT-GASKET)
  (JOB-AVAILABLE-AT J2A-INSERT-GASKET GASKET-MACHINE)
  (= (JOB-COST NOTHING-DONE) 0) (= (JOB-COST J2B-SCREW-C) 3)
  (DEPENDS J2B-ATTATCH-C J2B-SCREW-C)
  (JOB-AVAILABLE-AT J2B-SCREW-C SCREW-MACHINE-C) (AT PART-2B-C-21 TRAY-C)
  (USES J2B-ATTATCH-C PART-2B-C-21) (AT PART-2B-C-20 TRAY-C)
  (USES J2B-ATTATCH-C PART-2B-C-20) (AT PART-2B-C-19 TRAY-C)
  (USES J2B-ATTATCH-C PART-2B-C-19) (AT PART-2B-C-18 TRAY-C)
  (USES J2B-ATTATCH-C PART-2B-C-18) (AT PART-2B-C-17 TRAY-C)
  (USES J2B-ATTATCH-C PART-2B-C-17) (AT PART-2B-C-16 TRAY-C)
  (USES J2B-ATTATCH-C PART-2B-C-16) (AT PART-2B-C-15 TRAY-C)
  (USES J2B-ATTATCH-C PART-2B-C-15) (AT PART-2B-C-14 TRAY-C)
  (USES J2B-ATTATCH-C PART-2B-C-14) (AT PART-2B-C-13 TRAY-C)
  (USES J2B-ATTATCH-C PART-2B-C-13) (AT PART-2B-C-12 TRAY-C)
  (USES J2B-ATTATCH-C PART-2B-C-12) (AT PART-2B-C-11 TRAY-C)
  (USES J2B-ATTATCH-C PART-2B-C-11) (AT PART-2B-C-10 TRAY-C)
  (USES J2B-ATTATCH-C PART-2B-C-10) (AT PART-2B-C-9 TRAY-C)
  (USES J2B-ATTATCH-C PART-2B-C-9) (AT PART-2B-C-8 TRAY-C)
  (USES J2B-ATTATCH-C PART-2B-C-8) (AT PART-2B-C-7 TRAY-C)
  (USES J2B-ATTATCH-C PART-2B-C-7) (AT PART-2B-C-6 TRAY-C)
  (USES J2B-ATTATCH-C PART-2B-C-6) (AT PART-2B-C-5 TRAY-C)
  (USES J2B-ATTATCH-C PART-2B-C-5) (AT PART-2B-C-4 TRAY-C)
  (USES J2B-ATTATCH-C PART-2B-C-4) (AT PART-2B-C-3 TRAY-C)
  (USES J2B-ATTATCH-C PART-2B-C-3) (AT PART-2B-C-2 TRAY-C)
  (USES J2B-ATTATCH-C PART-2B-C-2) (AT PART-2B-C-1 TRAY-C)
  (USES J2B-ATTATCH-C PART-2B-C-1) (AT PART-2B-C-0 TRAY-C)
  (USES J2B-ATTATCH-C PART-2B-C-0) (= (JOB-COST J2B-ATTATCH-C) 2)
  (DEPENDS J2B-ATTATCH-B J2B-ATTATCH-C) (JOB-AVAILABLE-AT J2B-ATTATCH-C TABLE1)
  (AT PART-2B-B-21 TRAY-B) (USES J2B-ATTATCH-B PART-2B-B-21)
  (AT PART-2B-B-20 TRAY-B) (USES J2B-ATTATCH-B PART-2B-B-20)
  (AT PART-2B-B-19 TRAY-B) (USES J2B-ATTATCH-B PART-2B-B-19)
  (AT PART-2B-B-18 TRAY-B) (USES J2B-ATTATCH-B PART-2B-B-18)
  (AT PART-2B-B-17 TRAY-B) (USES J2B-ATTATCH-B PART-2B-B-17)
  (AT PART-2B-B-16 TRAY-B) (USES J2B-ATTATCH-B PART-2B-B-16)
  (AT PART-2B-B-15 TRAY-B) (USES J2B-ATTATCH-B PART-2B-B-15)
  (AT PART-2B-B-14 TRAY-B) (USES J2B-ATTATCH-B PART-2B-B-14)
  (AT PART-2B-B-13 TRAY-B) (USES J2B-ATTATCH-B PART-2B-B-13)
  (AT PART-2B-B-12 TRAY-B) (USES J2B-ATTATCH-B PART-2B-B-12)
  (AT PART-2B-B-11 TRAY-B) (USES J2B-ATTATCH-B PART-2B-B-11)
  (AT PART-2B-B-10 TRAY-B) (USES J2B-ATTATCH-B PART-2B-B-10)
  (AT PART-2B-B-9 TRAY-B) (USES J2B-ATTATCH-B PART-2B-B-9)
  (AT PART-2B-B-8 TRAY-B) (USES J2B-ATTATCH-B PART-2B-B-8)
  (AT PART-2B-B-7 TRAY-B) (USES J2B-ATTATCH-B PART-2B-B-7)
  (AT PART-2B-B-6 TRAY-B) (USES J2B-ATTATCH-B PART-2B-B-6)
  (AT PART-2B-B-5 TRAY-B) (USES J2B-ATTATCH-B PART-2B-B-5)
  (AT PART-2B-B-4 TRAY-B) (USES J2B-ATTATCH-B PART-2B-B-4)
  (AT PART-2B-B-3 TRAY-B) (USES J2B-ATTATCH-B PART-2B-B-3)
  (AT PART-2B-B-2 TRAY-B) (USES J2B-ATTATCH-B PART-2B-B-2)
  (AT PART-2B-B-1 TRAY-B) (USES J2B-ATTATCH-B PART-2B-B-1)
  (AT PART-2B-B-0 TRAY-B) (USES J2B-ATTATCH-B PART-2B-B-0)
  (= (JOB-COST J2B-ATTATCH-B) 2) (DEPENDS J2B-SCREW-A J2B-ATTATCH-B)
  (JOB-AVAILABLE-AT J2B-ATTATCH-B TABLE1) (= (JOB-COST J2B-SCREW-A) 2)
  (DEPENDS J2B-ATTATCH-A J2B-SCREW-A)
  (JOB-AVAILABLE-AT J2B-SCREW-A SCREW-MACHINE-A) (AT PART-2B-A-21 TRAY-A)
  (USES J2B-ATTATCH-A PART-2B-A-21) (AT PART-2B-A-20 TRAY-A)
  (USES J2B-ATTATCH-A PART-2B-A-20) (AT PART-2B-A-19 TRAY-A)
  (USES J2B-ATTATCH-A PART-2B-A-19) (AT PART-2B-A-18 TRAY-A)
  (USES J2B-ATTATCH-A PART-2B-A-18) (AT PART-2B-A-17 TRAY-A)
  (USES J2B-ATTATCH-A PART-2B-A-17) (AT PART-2B-A-16 TRAY-A)
  (USES J2B-ATTATCH-A PART-2B-A-16) (AT PART-2B-A-15 TRAY-A)
  (USES J2B-ATTATCH-A PART-2B-A-15) (AT PART-2B-A-14 TRAY-A)
  (USES J2B-ATTATCH-A PART-2B-A-14) (AT PART-2B-A-13 TRAY-A)
  (USES J2B-ATTATCH-A PART-2B-A-13) (AT PART-2B-A-12 TRAY-A)
  (USES J2B-ATTATCH-A PART-2B-A-12) (AT PART-2B-A-11 TRAY-A)
  (USES J2B-ATTATCH-A PART-2B-A-11) (AT PART-2B-A-10 TRAY-A)
  (USES J2B-ATTATCH-A PART-2B-A-10) (AT PART-2B-A-9 TRAY-A)
  (USES J2B-ATTATCH-A PART-2B-A-9) (AT PART-2B-A-8 TRAY-A)
  (USES J2B-ATTATCH-A PART-2B-A-8) (AT PART-2B-A-7 TRAY-A)
  (USES J2B-ATTATCH-A PART-2B-A-7) (AT PART-2B-A-6 TRAY-A)
  (USES J2B-ATTATCH-A PART-2B-A-6) (AT PART-2B-A-5 TRAY-A)
  (USES J2B-ATTATCH-A PART-2B-A-5) (AT PART-2B-A-4 TRAY-A)
  (USES J2B-ATTATCH-A PART-2B-A-4) (AT PART-2B-A-3 TRAY-A)
  (USES J2B-ATTATCH-A PART-2B-A-3) (AT PART-2B-A-2 TRAY-A)
  (USES J2B-ATTATCH-A PART-2B-A-2) (AT PART-2B-A-1 TRAY-A)
  (USES J2B-ATTATCH-A PART-2B-A-1) (AT PART-2B-A-0 TRAY-A)
  (USES J2B-ATTATCH-A PART-2B-A-0) (= (JOB-COST J2B-ATTATCH-A) 3)
  (DEPENDS NOTHING-DONE J2B-ATTATCH-A)
  (JOB-AVAILABLE-AT J2B-ATTATCH-A TABLE-IN) (= (JOB-COST NOTHING-DONE) 0)
  (COMPONENT-BASE PART-2A-A-0 BASE-2A-0) (COMPONENT-BASE PART-2A-A-1 BASE-2A-1)
  (COMPONENT-BASE PART-2A-A-2 BASE-2A-2) (COMPONENT-BASE PART-2A-A-3 BASE-2A-3)
  (COMPONENT-BASE PART-2A-A-4 BASE-2A-4) (COMPONENT-BASE PART-2A-A-5 BASE-2A-5)
  (COMPONENT-BASE PART-2A-A-6 BASE-2A-6) (COMPONENT-BASE PART-2A-A-7 BASE-2A-7)
  (COMPONENT-BASE PART-2A-A-8 BASE-2A-8) (COMPONENT-BASE PART-2A-A-9 BASE-2A-9)
  (COMPONENT-BASE PART-2A-A-10 BASE-2A-10)
  (COMPONENT-BASE PART-2A-A-11 BASE-2A-11)
  (COMPONENT-BASE PART-2A-A-12 BASE-2A-12)
  (COMPONENT-BASE PART-2A-A-13 BASE-2A-13)
  (COMPONENT-BASE PART-2A-A-14 BASE-2A-14)
  (COMPONENT-BASE PART-2A-A-15 BASE-2A-15)
  (COMPONENT-BASE PART-2A-A-16 BASE-2A-16)
  (COMPONENT-BASE PART-2A-A-17 BASE-2A-17)
  (COMPONENT-BASE PART-2A-A-18 BASE-2A-18)
  (COMPONENT-BASE PART-2A-A-19 BASE-2A-19)
  (COMPONENT-BASE PART-2A-A-20 BASE-2A-20)
  (COMPONENT-BASE PART-2A-A-21 BASE-2A-21)
  (COMPONENT-BASE PART-2A-B-0 BASE-2A-0) (COMPONENT-BASE PART-2A-B-1 BASE-2A-1)
  (COMPONENT-BASE PART-2A-B-2 BASE-2A-2) (COMPONENT-BASE PART-2A-B-3 BASE-2A-3)
  (COMPONENT-BASE PART-2A-B-4 BASE-2A-4) (COMPONENT-BASE PART-2A-B-5 BASE-2A-5)
  (COMPONENT-BASE PART-2A-B-6 BASE-2A-6) (COMPONENT-BASE PART-2A-B-7 BASE-2A-7)
  (COMPONENT-BASE PART-2A-B-8 BASE-2A-8) (COMPONENT-BASE PART-2A-B-9 BASE-2A-9)
  (COMPONENT-BASE PART-2A-B-10 BASE-2A-10)
  (COMPONENT-BASE PART-2A-B-11 BASE-2A-11)
  (COMPONENT-BASE PART-2A-B-12 BASE-2A-12)
  (COMPONENT-BASE PART-2A-B-13 BASE-2A-13)
  (COMPONENT-BASE PART-2A-B-14 BASE-2A-14)
  (COMPONENT-BASE PART-2A-B-15 BASE-2A-15)
  (COMPONENT-BASE PART-2A-B-16 BASE-2A-16)
  (COMPONENT-BASE PART-2A-B-17 BASE-2A-17)
  (COMPONENT-BASE PART-2A-B-18 BASE-2A-18)
  (COMPONENT-BASE PART-2A-B-19 BASE-2A-19)
  (COMPONENT-BASE PART-2A-B-20 BASE-2A-20)
  (COMPONENT-BASE PART-2A-B-21 BASE-2A-21)
  (COMPONENT-BASE PART-2A-C-0 BASE-2A-0) (COMPONENT-BASE PART-2A-C-1 BASE-2A-1)
  (COMPONENT-BASE PART-2A-C-2 BASE-2A-2) (COMPONENT-BASE PART-2A-C-3 BASE-2A-3)
  (COMPONENT-BASE PART-2A-C-4 BASE-2A-4) (COMPONENT-BASE PART-2A-C-5 BASE-2A-5)
  (COMPONENT-BASE PART-2A-C-6 BASE-2A-6) (COMPONENT-BASE PART-2A-C-7 BASE-2A-7)
  (COMPONENT-BASE PART-2A-C-8 BASE-2A-8) (COMPONENT-BASE PART-2A-C-9 BASE-2A-9)
  (COMPONENT-BASE PART-2A-C-10 BASE-2A-10)
  (COMPONENT-BASE PART-2A-C-11 BASE-2A-11)
  (COMPONENT-BASE PART-2A-C-12 BASE-2A-12)
  (COMPONENT-BASE PART-2A-C-13 BASE-2A-13)
  (COMPONENT-BASE PART-2A-C-14 BASE-2A-14)
  (COMPONENT-BASE PART-2A-C-15 BASE-2A-15)
  (COMPONENT-BASE PART-2A-C-16 BASE-2A-16)
  (COMPONENT-BASE PART-2A-C-17 BASE-2A-17)
  (COMPONENT-BASE PART-2A-C-18 BASE-2A-18)
  (COMPONENT-BASE PART-2A-C-19 BASE-2A-19)
  (COMPONENT-BASE PART-2A-C-20 BASE-2A-20)
  (COMPONENT-BASE PART-2A-C-21 BASE-2A-21)
  (COMPONENT-BASE PART-2B-A-0 BASE-2B-0) (COMPONENT-BASE PART-2B-A-1 BASE-2B-1)
  (COMPONENT-BASE PART-2B-A-2 BASE-2B-2) (COMPONENT-BASE PART-2B-A-3 BASE-2B-3)
  (COMPONENT-BASE PART-2B-A-4 BASE-2B-4) (COMPONENT-BASE PART-2B-A-5 BASE-2B-5)
  (COMPONENT-BASE PART-2B-A-6 BASE-2B-6) (COMPONENT-BASE PART-2B-A-7 BASE-2B-7)
  (COMPONENT-BASE PART-2B-A-8 BASE-2B-8) (COMPONENT-BASE PART-2B-A-9 BASE-2B-9)
  (COMPONENT-BASE PART-2B-A-10 BASE-2B-10)
  (COMPONENT-BASE PART-2B-A-11 BASE-2B-11)
  (COMPONENT-BASE PART-2B-A-12 BASE-2B-12)
  (COMPONENT-BASE PART-2B-A-13 BASE-2B-13)
  (COMPONENT-BASE PART-2B-A-14 BASE-2B-14)
  (COMPONENT-BASE PART-2B-A-15 BASE-2B-15)
  (COMPONENT-BASE PART-2B-A-16 BASE-2B-16)
  (COMPONENT-BASE PART-2B-A-17 BASE-2B-17)
  (COMPONENT-BASE PART-2B-A-18 BASE-2B-18)
  (COMPONENT-BASE PART-2B-A-19 BASE-2B-19)
  (COMPONENT-BASE PART-2B-A-20 BASE-2B-20)
  (COMPONENT-BASE PART-2B-A-21 BASE-2B-21)
  (COMPONENT-BASE PART-2B-B-0 BASE-2B-0) (COMPONENT-BASE PART-2B-B-1 BASE-2B-1)
  (COMPONENT-BASE PART-2B-B-2 BASE-2B-2) (COMPONENT-BASE PART-2B-B-3 BASE-2B-3)
  (COMPONENT-BASE PART-2B-B-4 BASE-2B-4) (COMPONENT-BASE PART-2B-B-5 BASE-2B-5)
  (COMPONENT-BASE PART-2B-B-6 BASE-2B-6) (COMPONENT-BASE PART-2B-B-7 BASE-2B-7)
  (COMPONENT-BASE PART-2B-B-8 BASE-2B-8) (COMPONENT-BASE PART-2B-B-9 BASE-2B-9)
  (COMPONENT-BASE PART-2B-B-10 BASE-2B-10)
  (COMPONENT-BASE PART-2B-B-11 BASE-2B-11)
  (COMPONENT-BASE PART-2B-B-12 BASE-2B-12)
  (COMPONENT-BASE PART-2B-B-13 BASE-2B-13)
  (COMPONENT-BASE PART-2B-B-14 BASE-2B-14)
  (COMPONENT-BASE PART-2B-B-15 BASE-2B-15)
  (COMPONENT-BASE PART-2B-B-16 BASE-2B-16)
  (COMPONENT-BASE PART-2B-B-17 BASE-2B-17)
  (COMPONENT-BASE PART-2B-B-18 BASE-2B-18)
  (COMPONENT-BASE PART-2B-B-19 BASE-2B-19)
  (COMPONENT-BASE PART-2B-B-20 BASE-2B-20)
  (COMPONENT-BASE PART-2B-B-21 BASE-2B-21)
  (COMPONENT-BASE PART-2B-C-0 BASE-2B-0) (COMPONENT-BASE PART-2B-C-1 BASE-2B-1)
  (COMPONENT-BASE PART-2B-C-2 BASE-2B-2) (COMPONENT-BASE PART-2B-C-3 BASE-2B-3)
  (COMPONENT-BASE PART-2B-C-4 BASE-2B-4) (COMPONENT-BASE PART-2B-C-5 BASE-2B-5)
  (COMPONENT-BASE PART-2B-C-6 BASE-2B-6) (COMPONENT-BASE PART-2B-C-7 BASE-2B-7)
  (COMPONENT-BASE PART-2B-C-8 BASE-2B-8) (COMPONENT-BASE PART-2B-C-9 BASE-2B-9)
  (COMPONENT-BASE PART-2B-C-10 BASE-2B-10)
  (COMPONENT-BASE PART-2B-C-11 BASE-2B-11)
  (COMPONENT-BASE PART-2B-C-12 BASE-2B-12)
  (COMPONENT-BASE PART-2B-C-13 BASE-2B-13)
  (COMPONENT-BASE PART-2B-C-14 BASE-2B-14)
  (COMPONENT-BASE PART-2B-C-15 BASE-2B-15)
  (COMPONENT-BASE PART-2B-C-16 BASE-2B-16)
  (COMPONENT-BASE PART-2B-C-17 BASE-2B-17)
  (COMPONENT-BASE PART-2B-C-18 BASE-2B-18)
  (COMPONENT-BASE PART-2B-C-19 BASE-2B-19)
  (COMPONENT-BASE PART-2B-C-20 BASE-2B-20)
  (COMPONENT-BASE PART-2B-C-21 BASE-2B-21) (AT BASE-2A-0 CARRY-IN)
  (FINISHED NOTHING-DONE BASE-2A-0) (AT BASE-2A-1 CARRY-IN)
  (FINISHED NOTHING-DONE BASE-2A-1) (AT BASE-2A-2 CARRY-IN)
  (FINISHED NOTHING-DONE BASE-2A-2) (AT BASE-2A-3 CARRY-IN)
  (FINISHED NOTHING-DONE BASE-2A-3) (AT BASE-2A-4 CARRY-IN)
  (FINISHED NOTHING-DONE BASE-2A-4) (AT BASE-2A-5 CARRY-IN)
  (FINISHED NOTHING-DONE BASE-2A-5) (AT BASE-2A-6 CARRY-IN)
  (FINISHED NOTHING-DONE BASE-2A-6) (AT BASE-2A-7 CARRY-IN)
  (FINISHED NOTHING-DONE BASE-2A-7) (AT BASE-2A-8 CARRY-IN)
  (FINISHED NOTHING-DONE BASE-2A-8) (AT BASE-2A-9 CARRY-IN)
  (FINISHED NOTHING-DONE BASE-2A-9) (AT BASE-2A-10 CARRY-IN)
  (FINISHED NOTHING-DONE BASE-2A-10) (AT BASE-2A-11 CARRY-IN)
  (FINISHED NOTHING-DONE BASE-2A-11) (AT BASE-2A-12 CARRY-IN)
  (FINISHED NOTHING-DONE BASE-2A-12) (AT BASE-2A-13 CARRY-IN)
  (FINISHED NOTHING-DONE BASE-2A-13) (AT BASE-2A-14 CARRY-IN)
  (FINISHED NOTHING-DONE BASE-2A-14) (AT BASE-2A-15 CARRY-IN)
  (FINISHED NOTHING-DONE BASE-2A-15) (AT BASE-2A-16 CARRY-IN)
  (FINISHED NOTHING-DONE BASE-2A-16) (AT BASE-2A-17 CARRY-IN)
  (FINISHED NOTHING-DONE BASE-2A-17) (AT BASE-2A-18 CARRY-IN)
  (FINISHED NOTHING-DONE BASE-2A-18) (AT BASE-2A-19 CARRY-IN)
  (FINISHED NOTHING-DONE BASE-2A-19) (AT BASE-2A-20 CARRY-IN)
  (FINISHED NOTHING-DONE BASE-2A-20) (AT BASE-2A-21 CARRY-IN)
  (FINISHED NOTHING-DONE BASE-2A-21) (AT BASE-2B-0 CARRY-IN)
  (FINISHED NOTHING-DONE BASE-2B-0) (AT BASE-2B-1 CARRY-IN)
  (FINISHED NOTHING-DONE BASE-2B-1) (AT BASE-2B-2 CARRY-IN)
  (FINISHED NOTHING-DONE BASE-2B-2) (AT BASE-2B-3 CARRY-IN)
  (FINISHED NOTHING-DONE BASE-2B-3) (AT BASE-2B-4 CARRY-IN)
  (FINISHED NOTHING-DONE BASE-2B-4) (AT BASE-2B-5 CARRY-IN)
  (FINISHED NOTHING-DONE BASE-2B-5) (AT BASE-2B-6 CARRY-IN)
  (FINISHED NOTHING-DONE BASE-2B-6) (AT BASE-2B-7 CARRY-IN)
  (FINISHED NOTHING-DONE BASE-2B-7) (AT BASE-2B-8 CARRY-IN)
  (FINISHED NOTHING-DONE BASE-2B-8) (AT BASE-2B-9 CARRY-IN)
  (FINISHED NOTHING-DONE BASE-2B-9) (AT BASE-2B-10 CARRY-IN)
  (FINISHED NOTHING-DONE BASE-2B-10) (AT BASE-2B-11 CARRY-IN)
  (FINISHED NOTHING-DONE BASE-2B-11) (AT BASE-2B-12 CARRY-IN)
  (FINISHED NOTHING-DONE BASE-2B-12) (AT BASE-2B-13 CARRY-IN)
  (FINISHED NOTHING-DONE BASE-2B-13) (AT BASE-2B-14 CARRY-IN)
  (FINISHED NOTHING-DONE BASE-2B-14) (AT BASE-2B-15 CARRY-IN)
  (FINISHED NOTHING-DONE BASE-2B-15) (AT BASE-2B-16 CARRY-IN)
  (FINISHED NOTHING-DONE BASE-2B-16) (AT BASE-2B-17 CARRY-IN)
  (FINISHED NOTHING-DONE BASE-2B-17) (AT BASE-2B-18 CARRY-IN)
  (FINISHED NOTHING-DONE BASE-2B-18) (AT BASE-2B-19 CARRY-IN)
  (FINISHED NOTHING-DONE BASE-2B-19) (AT BASE-2B-20 CARRY-IN)
  (FINISHED NOTHING-DONE BASE-2B-20) (AT BASE-2B-21 CARRY-IN)
  (FINISHED NOTHING-DONE BASE-2B-21) (FREE ARM1) (AT ARM1 TRAY-A)
  (ARM-PRESENT TRAY-A) (FREE ARM2) (AT ARM2 OILING-MACHINE)
  (ARM-PRESENT OILING-MACHINE))
 (:GOAL
  (AND (AT BASE-2A-0 CARRY-OUT) (FINISHED J2A-INSPECT-BASE BASE-2A-0)
       (AT BASE-2A-1 CARRY-OUT) (FINISHED J2A-INSPECT-BASE BASE-2A-1)
       (AT BASE-2A-2 CARRY-OUT) (FINISHED J2A-INSPECT-BASE BASE-2A-2)
       (AT BASE-2A-3 CARRY-OUT) (FINISHED J2A-INSPECT-BASE BASE-2A-3)
       (AT BASE-2A-4 CARRY-OUT) (FINISHED J2A-INSPECT-BASE BASE-2A-4)
       (AT BASE-2A-5 CARRY-OUT) (FINISHED J2A-INSPECT-BASE BASE-2A-5)
       (AT BASE-2A-6 CARRY-OUT) (FINISHED J2A-INSPECT-BASE BASE-2A-6)
       (AT BASE-2A-7 CARRY-OUT) (FINISHED J2A-INSPECT-BASE BASE-2A-7)
       (AT BASE-2A-8 CARRY-OUT) (FINISHED J2A-INSPECT-BASE BASE-2A-8)
       (AT BASE-2A-9 CARRY-OUT) (FINISHED J2A-INSPECT-BASE BASE-2A-9)
       (AT BASE-2A-10 CARRY-OUT) (FINISHED J2A-INSPECT-BASE BASE-2A-10)
       (AT BASE-2A-11 CARRY-OUT) (FINISHED J2A-INSPECT-BASE BASE-2A-11)
       (AT BASE-2A-12 CARRY-OUT) (FINISHED J2A-INSPECT-BASE BASE-2A-12)
       (AT BASE-2A-13 CARRY-OUT) (FINISHED J2A-INSPECT-BASE BASE-2A-13)
       (AT BASE-2A-14 CARRY-OUT) (FINISHED J2A-INSPECT-BASE BASE-2A-14)
       (AT BASE-2A-15 CARRY-OUT) (FINISHED J2A-INSPECT-BASE BASE-2A-15)
       (AT BASE-2A-16 CARRY-OUT) (FINISHED J2A-INSPECT-BASE BASE-2A-16)
       (AT BASE-2A-17 CARRY-OUT) (FINISHED J2A-INSPECT-BASE BASE-2A-17)
       (AT BASE-2A-18 CARRY-OUT) (FINISHED J2A-INSPECT-BASE BASE-2A-18)
       (AT BASE-2A-19 CARRY-OUT) (FINISHED J2A-INSPECT-BASE BASE-2A-19)
       (AT BASE-2A-20 CARRY-OUT) (FINISHED J2A-INSPECT-BASE BASE-2A-20)
       (AT BASE-2A-21 CARRY-OUT) (FINISHED J2A-INSPECT-BASE BASE-2A-21)
       (AT BASE-2B-0 CARRY-OUT) (FINISHED J2B-SCREW-C BASE-2B-0)
       (AT BASE-2B-1 CARRY-OUT) (FINISHED J2B-SCREW-C BASE-2B-1)
       (AT BASE-2B-2 CARRY-OUT) (FINISHED J2B-SCREW-C BASE-2B-2)
       (AT BASE-2B-3 CARRY-OUT) (FINISHED J2B-SCREW-C BASE-2B-3)
       (AT BASE-2B-4 CARRY-OUT) (FINISHED J2B-SCREW-C BASE-2B-4)
       (AT BASE-2B-5 CARRY-OUT) (FINISHED J2B-SCREW-C BASE-2B-5)
       (AT BASE-2B-6 CARRY-OUT) (FINISHED J2B-SCREW-C BASE-2B-6)
       (AT BASE-2B-7 CARRY-OUT) (FINISHED J2B-SCREW-C BASE-2B-7)
       (AT BASE-2B-8 CARRY-OUT) (FINISHED J2B-SCREW-C BASE-2B-8)
       (AT BASE-2B-9 CARRY-OUT) (FINISHED J2B-SCREW-C BASE-2B-9)
       (AT BASE-2B-10 CARRY-OUT) (FINISHED J2B-SCREW-C BASE-2B-10)
       (AT BASE-2B-11 CARRY-OUT) (FINISHED J2B-SCREW-C BASE-2B-11)
       (AT BASE-2B-12 CARRY-OUT) (FINISHED J2B-SCREW-C BASE-2B-12)
       (AT BASE-2B-13 CARRY-OUT) (FINISHED J2B-SCREW-C BASE-2B-13)
       (AT BASE-2B-14 CARRY-OUT) (FINISHED J2B-SCREW-C BASE-2B-14)
       (AT BASE-2B-15 CARRY-OUT) (FINISHED J2B-SCREW-C BASE-2B-15)
       (AT BASE-2B-16 CARRY-OUT) (FINISHED J2B-SCREW-C BASE-2B-16)
       (AT BASE-2B-17 CARRY-OUT) (FINISHED J2B-SCREW-C BASE-2B-17)
       (AT BASE-2B-18 CARRY-OUT) (FINISHED J2B-SCREW-C BASE-2B-18)
       (AT BASE-2B-19 CARRY-OUT) (FINISHED J2B-SCREW-C BASE-2B-19)
       (AT BASE-2B-20 CARRY-OUT) (FINISHED J2B-SCREW-C BASE-2B-20)
       (AT BASE-2B-21 CARRY-OUT) (FINISHED J2B-SCREW-C BASE-2B-21)))
 (:METRIC MINIMIZE (TOTAL-COST)))