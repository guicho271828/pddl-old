(DEFINE (PROBLEM CELL-ASSEMBLY-2A2B-MIXED-EACH-1)
 (:DOMAIN CELL-ASSEMBLY-EACHPARTS)
 (:OBJECTS ARM1 ARM2 - ARM BASE-2A-0 BASE-2B-0 - BASE PART-2A-A-0 PART-2A-B-0
  PART-2A-C-0 PART-2B-A-0 PART-2B-B-0 PART-2B-C-0 - COMPONENT TRAY-A TRAY-B
  TRAY-C - TRAY TABLE1 TABLE2 - TABLE GASKET-MACHINE SCREW-MACHINE-A
  OILING-MACHINE SCREW-MACHINE-C INSPECTION-MACHINE - MACHINE 2A-INSERT-GASKET
  - MACHINE-JOB 2A-ATTATCH-A - JOB 2A-SCREW-A - MACHINE-JOB 2A-OIL-CYLINDER -
  MACHINE-JOB 2A-ATTATCH-B - JOB 2A-ATTATCH-C - JOB 2A-SCREW-C - MACHINE-JOB
  2A-INSPECT-BASE - MACHINE-JOB 2B-ATTATCH-A - JOB 2B-SCREW-A - MACHINE-JOB
  2B-ATTATCH-B - JOB 2B-ATTATCH-C - JOB 2B-SCREW-C - MACHINE-JOB)
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
  (CONNECTED TABLE-OUT CARRY-OUT) (= (JOB-COST 2A-INSPECT-BASE) 2)
  (DEPENDS 2A-SCREW-C 2A-INSPECT-BASE)
  (JOB-AVAILABLE-AT 2A-INSPECT-BASE INSPECTION-MACHINE)
  (= (JOB-COST 2A-SCREW-C) 3) (DEPENDS 2A-ATTATCH-C 2A-SCREW-C)
  (JOB-AVAILABLE-AT 2A-SCREW-C SCREW-MACHINE-C) (AT PART-2A-C-0 TRAY-C)
  (USES 2A-ATTATCH-C PART-2A-C-0) (= (JOB-COST 2A-ATTATCH-C) 3)
  (DEPENDS 2A-ATTATCH-B 2A-ATTATCH-C) (JOB-AVAILABLE-AT 2A-ATTATCH-C TABLE2)
  (AT PART-2A-B-0 TRAY-B) (USES 2A-ATTATCH-B PART-2A-B-0)
  (= (JOB-COST 2A-ATTATCH-B) 3) (DEPENDS 2A-OIL-CYLINDER 2A-ATTATCH-B)
  (JOB-AVAILABLE-AT 2A-ATTATCH-B TABLE2) (= (JOB-COST 2A-OIL-CYLINDER) 2)
  (DEPENDS 2A-SCREW-A 2A-OIL-CYLINDER)
  (JOB-AVAILABLE-AT 2A-OIL-CYLINDER OILING-MACHINE) (= (JOB-COST 2A-SCREW-A) 2)
  (DEPENDS 2A-ATTATCH-A 2A-SCREW-A)
  (JOB-AVAILABLE-AT 2A-SCREW-A SCREW-MACHINE-A) (AT PART-2A-A-0 TRAY-A)
  (USES 2A-ATTATCH-A PART-2A-A-0) (= (JOB-COST 2A-ATTATCH-A) 2)
  (DEPENDS 2A-INSERT-GASKET 2A-ATTATCH-A)
  (JOB-AVAILABLE-AT 2A-ATTATCH-A TABLE1) (= (JOB-COST 2A-INSERT-GASKET) 2)
  (DEPENDS NOTHING-DONE 2A-INSERT-GASKET)
  (JOB-AVAILABLE-AT 2A-INSERT-GASKET GASKET-MACHINE)
  (= (JOB-COST NOTHING-DONE) 0) (= (JOB-COST 2B-SCREW-C) 3)
  (DEPENDS 2B-ATTATCH-C 2B-SCREW-C)
  (JOB-AVAILABLE-AT 2B-SCREW-C SCREW-MACHINE-C) (AT PART-2B-C-0 TRAY-C)
  (USES 2B-ATTATCH-C PART-2B-C-0) (= (JOB-COST 2B-ATTATCH-C) 2)
  (DEPENDS 2B-ATTATCH-B 2B-ATTATCH-C) (JOB-AVAILABLE-AT 2B-ATTATCH-C TABLE1)
  (AT PART-2B-B-0 TRAY-B) (USES 2B-ATTATCH-B PART-2B-B-0)
  (= (JOB-COST 2B-ATTATCH-B) 3) (DEPENDS 2B-SCREW-A 2B-ATTATCH-B)
  (JOB-AVAILABLE-AT 2B-ATTATCH-B TABLE1) (= (JOB-COST 2B-SCREW-A) 3)
  (DEPENDS 2B-ATTATCH-A 2B-SCREW-A)
  (JOB-AVAILABLE-AT 2B-SCREW-A SCREW-MACHINE-A) (AT PART-2B-A-0 TRAY-A)
  (USES 2B-ATTATCH-A PART-2B-A-0) (= (JOB-COST 2B-ATTATCH-A) 3)
  (DEPENDS NOTHING-DONE 2B-ATTATCH-A) (JOB-AVAILABLE-AT 2B-ATTATCH-A TABLE-IN)
  (= (JOB-COST NOTHING-DONE) 0) (COMPONENT-BASE PART-2A-A-0 BASE-2A-0)
  (COMPONENT-BASE PART-2A-B-0 BASE-2A-0) (COMPONENT-BASE PART-2A-C-0 BASE-2A-0)
  (COMPONENT-BASE PART-2B-A-0 BASE-2B-0) (COMPONENT-BASE PART-2B-B-0 BASE-2B-0)
  (COMPONENT-BASE PART-2B-C-0 BASE-2B-0) (AT BASE-2A-0 CARRY-IN)
  (FINISHED NOTHING-DONE BASE-2A-0) (AT BASE-2B-0 CARRY-IN)
  (FINISHED NOTHING-DONE BASE-2B-0) (FREE ARM1) (AT ARM1 TRAY-A)
  (ARM-PRESENT TRAY-A) (FREE ARM2) (AT ARM2 OILING-MACHINE)
  (ARM-PRESENT OILING-MACHINE))
 (:GOAL
  (AND (AT BASE-2A-0 CARRY-OUT) (FINISHED 2A-INSPECT-BASE BASE-2A-0)
       (AT BASE-2B-0 CARRY-OUT) (FINISHED 2B-SCREW-C BASE-2B-0)))
 (:METRIC MINIMIZE (TOTAL-COST)))