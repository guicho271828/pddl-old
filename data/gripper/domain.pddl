(DEFINE (DOMAIN GRIPPER-STRIPS)
 (:TYPES ROOM - OBJECT BALL - OBJECT GRIPPER - OBJECT)
 (:PREDICATES
  (CARRY ?O - OBJECT ?G - GRIPPER)
  (FREE ?G - GRIPPER)
  (AT ?B - BALL ?R - ROOM)
  (AT-ROBBY ?R - ROOM))

 (:ACTION MOVE
  :PARAMETERS (?FROM - ROOM ?TO - ROOM)
  :PRECONDITION (AND (AT-ROBBY ?FROM))
  :EFFECT (AND (AT-ROBBY ?TO)
               (NOT (AT-ROBBY ?FROM))))

 (:ACTION PICK
  :PARAMETERS (?OBJ - BALL ?ROOM - ROOM ?GRIPPER - GRIPPER)
  :PRECONDITION (AND (AT ?OBJ ?ROOM)
                     (AT-ROBBY ?ROOM)
                     (FREE ?GRIPPER))
  :EFFECT (AND (CARRY ?OBJ ?GRIPPER)
               (NOT (AT ?OBJ ?ROOM))
               (NOT (FREE ?GRIPPER))))

 (:ACTION DROP
  :PARAMETERS (?OBJ - BALL ?ROOM - ROOM ?GRIPPER - GRIPPER)
  :PRECONDITION (AND (CARRY ?OBJ ?GRIPPER)
                     (AT-ROBBY ?ROOM))
  :EFFECT (AND (AT ?OBJ ?ROOM)
               (FREE ?GRIPPER)
               (NOT (CARRY ?OBJ ?GRIPPER)))))