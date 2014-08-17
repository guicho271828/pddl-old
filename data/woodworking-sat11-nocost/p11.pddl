; woodworking task with 33 parts and 120% wood
; Machines:
;   1 grinder
;   1 glazer
;   1 immersion-varnisher
;   1 planer
;   1 highspeed-saw
;   1 spray-varnisher
;   1 saw
; random seed: 479181

(define (problem wood-prob-sat-11)
  (:domain woodworking)
  (:objects
    grinder0 - grinder
    glazer0 - glazer
    immersion-varnisher0 - immersion-varnisher
    planer0 - planer
    highspeed-saw0 - highspeed-saw
    spray-varnisher0 - spray-varnisher
    saw0 - saw
    blue white black mauve red green - acolour
    cherry pine teak mahogany beech walnut oak - awood
    p0 p1 p2 p3 p4 p5 p6 p7 p8 p9 p10 p11 p12 p13 p14 p15 p16 p17 p18 p19 p20 p21 p22 p23 p24 p25 p26 p27 p28 p29 p30 p31 p32 - part
    b0 b1 b2 b3 b4 b5 b6 b7 b8 b9 b10 - board
    s0 s1 s2 s3 s4 s5 s6 s7 s8 s9 - aboardsize
  )
  (:init
    (grind-treatment-change varnished colourfragments)
    (grind-treatment-change glazed untreated)
    (grind-treatment-change untreated untreated)
    (grind-treatment-change colourfragments untreated)
    (is-smooth smooth)
    (is-smooth verysmooth)
    
    (boardsize-successor s0 s1)
    (boardsize-successor s1 s2)
    (boardsize-successor s2 s3)
    (boardsize-successor s3 s4)
    (boardsize-successor s4 s5)
    (boardsize-successor s5 s6)
    (boardsize-successor s6 s7)
    (boardsize-successor s7 s8)
    (boardsize-successor s8 s9)
    (has-colour glazer0 blue)
    (has-colour glazer0 natural)
    (has-colour glazer0 mauve)
    (has-colour glazer0 black)
    (has-colour glazer0 green)
    (has-colour glazer0 white)
    (has-colour glazer0 red)
    (has-colour immersion-varnisher0 blue)
    (has-colour immersion-varnisher0 natural)
    (has-colour immersion-varnisher0 mauve)
    (has-colour immersion-varnisher0 black)
    (has-colour immersion-varnisher0 green)
    (has-colour immersion-varnisher0 white)
    (has-colour immersion-varnisher0 red)
    (empty highspeed-saw0)
    (has-colour spray-varnisher0 blue)
    (has-colour spray-varnisher0 natural)
    (has-colour spray-varnisher0 mauve)
    (has-colour spray-varnisher0 black)
    (has-colour spray-varnisher0 green)
    (has-colour spray-varnisher0 white)
    (has-colour spray-varnisher0 red)
    (unused p0)
    (goalsize p0 small)
    
    
    
    
    (unused p1)
    (goalsize p1 small)
    
    
    
    
    (available p2)
    (colour p2 red)
    (wood p2 pine)
    (surface-condition p2 verysmooth)
    (treatment p2 varnished)
    (goalsize p2 medium)
    
    
    
    
    (unused p3)
    (goalsize p3 large)
    
    
    
    
    (unused p4)
    (goalsize p4 medium)
    
    
    
    
    (unused p5)
    (goalsize p5 small)
    
    
    
    
    (unused p6)
    (goalsize p6 medium)
    
    
    
    
    (available p7)
    (colour p7 mauve)
    (wood p7 oak)
    (surface-condition p7 rough)
    (treatment p7 colourfragments)
    (goalsize p7 large)
    
    
    
    
    (unused p8)
    (goalsize p8 medium)
    
    
    
    
    (available p9)
    (colour p9 green)
    (wood p9 walnut)
    (surface-condition p9 smooth)
    (treatment p9 glazed)
    (goalsize p9 small)
    
    
    
    
    (unused p10)
    (goalsize p10 medium)
    
    
    
    
    (unused p11)
    (goalsize p11 medium)
    
    
    
    
    (available p12)
    (colour p12 black)
    (wood p12 walnut)
    (surface-condition p12 verysmooth)
    (treatment p12 colourfragments)
    (goalsize p12 small)
    
    
    
    
    (unused p13)
    (goalsize p13 small)
    
    
    
    
    (available p14)
    (colour p14 natural)
    (wood p14 oak)
    (surface-condition p14 rough)
    (treatment p14 colourfragments)
    (goalsize p14 small)
    
    
    
    
    (available p15)
    (colour p15 mauve)
    (wood p15 pine)
    (surface-condition p15 rough)
    (treatment p15 varnished)
    (goalsize p15 small)
    
    
    
    
    (unused p16)
    (goalsize p16 large)
    
    
    
    
    (unused p17)
    (goalsize p17 medium)
    
    
    
    
    (unused p18)
    (goalsize p18 small)
    
    
    
    
    (unused p19)
    (goalsize p19 small)
    
    
    
    
    (available p20)
    (colour p20 black)
    (wood p20 walnut)
    (surface-condition p20 smooth)
    (treatment p20 varnished)
    (goalsize p20 medium)
    
    
    
    
    (unused p21)
    (goalsize p21 small)
    
    
    
    
    (unused p22)
    (goalsize p22 large)
    
    
    
    
    (unused p23)
    (goalsize p23 large)
    
    
    
    
    (available p24)
    (colour p24 mauve)
    (wood p24 oak)
    (surface-condition p24 smooth)
    (treatment p24 colourfragments)
    (goalsize p24 medium)
    
    
    
    
    (unused p25)
    (goalsize p25 large)
    
    
    
    
    (unused p26)
    (goalsize p26 medium)
    
    
    
    
    (unused p27)
    (goalsize p27 large)
    
    
    
    
    (available p28)
    (colour p28 red)
    (wood p28 pine)
    (surface-condition p28 rough)
    (treatment p28 colourfragments)
    (goalsize p28 large)
    
    
    
    
    (unused p29)
    (goalsize p29 medium)
    
    
    
    
    (unused p30)
    (goalsize p30 medium)
    
    
    
    
    (unused p31)
    (goalsize p31 small)
    
    
    
    
    (unused p32)
    (goalsize p32 medium)
    
    
    
    
    (boardsize b0 s8)
    (wood b0 cherry)
    (surface-condition b0 rough)
    (available b0)
    (boardsize b1 s1)
    (wood b1 cherry)
    (surface-condition b1 rough)
    (available b1)
    (boardsize b2 s4)
    (wood b2 mahogany)
    (surface-condition b2 rough)
    (available b2)
    (boardsize b3 s7)
    (wood b3 oak)
    (surface-condition b3 rough)
    (available b3)
    (boardsize b4 s2)
    (wood b4 oak)
    (surface-condition b4 smooth)
    (available b4)
    (boardsize b5 s9)
    (wood b5 pine)
    (surface-condition b5 rough)
    (available b5)
    (boardsize b6 s8)
    (wood b6 walnut)
    (surface-condition b6 rough)
    (available b6)
    (boardsize b7 s1)
    (wood b7 walnut)
    (surface-condition b7 rough)
    (available b7)
    (boardsize b8 s4)
    (wood b8 teak)
    (surface-condition b8 smooth)
    (available b8)
    (boardsize b9 s8)
    (wood b9 beech)
    (surface-condition b9 smooth)
    (available b9)
    (boardsize b10 s7)
    (wood b10 beech)
    (surface-condition b10 rough)
    (available b10)
  )
  (:goal
    (and
      (available p0)
      (colour p0 red)
      (wood p0 beech)
      (surface-condition p0 verysmooth)
      (treatment p0 glazed)
      (available p1)
      (wood p1 cherry)
      (surface-condition p1 verysmooth)
      (available p2)
      (colour p2 black)
      (wood p2 pine)
      (surface-condition p2 verysmooth)
      (treatment p2 varnished)
      (available p3)
      (wood p3 beech)
      (surface-condition p3 smooth)
      (treatment p3 glazed)
      (available p4)
      (colour p4 natural)
      (wood p4 pine)
      (surface-condition p4 verysmooth)
      (available p5)
      (wood p5 walnut)
      (treatment p5 varnished)
      (available p6)
      (colour p6 black)
      (wood p6 cherry)
      (treatment p6 glazed)
      (available p7)
      (colour p7 red)
      (surface-condition p7 verysmooth)
      (available p8)
      (surface-condition p8 verysmooth)
      (treatment p8 glazed)
      (available p9)
      (colour p9 white)
      (surface-condition p9 verysmooth)
      (treatment p9 glazed)
      (available p10)
      (colour p10 green)
      (wood p10 beech)
      (surface-condition p10 verysmooth)
      (treatment p10 varnished)
      (available p11)
      (colour p11 blue)
      (wood p11 beech)
      (surface-condition p11 smooth)
      (treatment p11 varnished)
      (available p12)
      (surface-condition p12 verysmooth)
      (treatment p12 varnished)
      (available p13)
      (wood p13 cherry)
      (treatment p13 varnished)
      (available p14)
      (colour p14 green)
      (wood p14 oak)
      (surface-condition p14 smooth)
      (treatment p14 varnished)
      (available p15)
      (wood p15 pine)
      (treatment p15 glazed)
      (available p16)
      (wood p16 mahogany)
      (surface-condition p16 smooth)
      (available p17)
      (colour p17 mauve)
      (surface-condition p17 smooth)
      (available p18)
      (colour p18 natural)
      (wood p18 walnut)
      (surface-condition p18 verysmooth)
      (treatment p18 glazed)
      (available p19)
      (colour p19 white)
      (wood p19 teak)
      (surface-condition p19 verysmooth)
      (treatment p19 glazed)
      (available p20)
      (colour p20 white)
      (surface-condition p20 smooth)
      (available p21)
      (surface-condition p21 verysmooth)
      (treatment p21 glazed)
      (available p22)
      (colour p22 blue)
      (surface-condition p22 smooth)
      (available p23)
      (wood p23 pine)
      (surface-condition p23 verysmooth)
      (available p24)
      (wood p24 oak)
      (treatment p24 varnished)
      (available p25)
      (wood p25 walnut)
      (treatment p25 varnished)
      (available p26)
      (wood p26 walnut)
      (surface-condition p26 verysmooth)
      (available p27)
      (colour p27 black)
      (surface-condition p27 verysmooth)
      (available p28)
      (colour p28 green)
      (wood p28 pine)
      (surface-condition p28 smooth)
      (treatment p28 glazed)
      (available p29)
      (colour p29 black)
      (treatment p29 varnished)
      (available p30)
      (wood p30 beech)
      (surface-condition p30 verysmooth)
      (available p31)
      (surface-condition p31 verysmooth)
      (treatment p31 varnished)
      (available p32)
      (wood p32 beech)
      (treatment p32 glazed)
    )
  )
  
)