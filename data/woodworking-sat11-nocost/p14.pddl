; woodworking task with 36 parts and 140% wood
; Machines:
;   1 grinder
;   1 glazer
;   1 immersion-varnisher
;   1 planer
;   1 highspeed-saw
;   1 spray-varnisher
;   1 saw
; random seed: 592015

(define (problem wood-prob-sat-14)
  (:domain woodworking)
  (:objects
    grinder0 - grinder
    glazer0 - glazer
    immersion-varnisher0 - immersion-varnisher
    planer0 - planer
    highspeed-saw0 - highspeed-saw
    spray-varnisher0 - spray-varnisher
    saw0 - saw
    white black red green mauve blue - acolour
    cherry mahogany beech teak oak pine walnut - awood
    p0 p1 p2 p3 p4 p5 p6 p7 p8 p9 p10 p11 p12 p13 p14 p15 p16 p17 p18 p19 p20 p21 p22 p23 p24 p25 p26 p27 p28 p29 p30 p31 p32 p33 p34 p35 - part
    b0 b1 b2 b3 b4 b5 b6 b7 b8 b9 - board
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
    (has-colour glazer0 natural)
    (has-colour glazer0 mauve)
    (has-colour glazer0 black)
    (has-colour glazer0 green)
    (has-colour glazer0 white)
    (has-colour glazer0 red)
    (has-colour immersion-varnisher0 blue)
    (has-colour immersion-varnisher0 natural)
    (has-colour immersion-varnisher0 mauve)
    (has-colour immersion-varnisher0 green)
    (has-colour immersion-varnisher0 black)
    (has-colour immersion-varnisher0 white)
    (has-colour immersion-varnisher0 red)
    (empty highspeed-saw0)
    (has-colour spray-varnisher0 blue)
    (has-colour spray-varnisher0 natural)
    (has-colour spray-varnisher0 mauve)
    (has-colour spray-varnisher0 green)
    (has-colour spray-varnisher0 black)
    (has-colour spray-varnisher0 white)
    (has-colour spray-varnisher0 red)
    (unused p0)
    (goalsize p0 small)
    
    
    
    
    (unused p1)
    (goalsize p1 medium)
    
    
    
    
    (unused p2)
    (goalsize p2 large)
    
    
    
    
    (available p3)
    (colour p3 green)
    (wood p3 beech)
    (surface-condition p3 verysmooth)
    (treatment p3 glazed)
    (goalsize p3 small)
    
    
    
    
    (unused p4)
    (goalsize p4 large)
    
    
    
    
    (available p5)
    (colour p5 white)
    (wood p5 beech)
    (surface-condition p5 smooth)
    (treatment p5 glazed)
    (goalsize p5 small)
    
    
    
    
    (unused p6)
    (goalsize p6 small)
    
    
    
    
    (available p7)
    (colour p7 blue)
    (wood p7 oak)
    (surface-condition p7 verysmooth)
    (treatment p7 glazed)
    (goalsize p7 medium)
    
    
    
    
    (unused p8)
    (goalsize p8 medium)
    
    
    
    
    (available p9)
    (colour p9 black)
    (wood p9 teak)
    (surface-condition p9 verysmooth)
    (treatment p9 glazed)
    (goalsize p9 small)
    
    
    
    
    (unused p10)
    (goalsize p10 large)
    
    
    
    
    (unused p11)
    (goalsize p11 medium)
    
    
    
    
    (available p12)
    (colour p12 natural)
    (wood p12 oak)
    (surface-condition p12 rough)
    (treatment p12 colourfragments)
    (goalsize p12 medium)
    
    
    
    
    (unused p13)
    (goalsize p13 small)
    
    
    
    
    (unused p14)
    (goalsize p14 small)
    
    
    
    
    (unused p15)
    (goalsize p15 small)
    
    
    
    
    (unused p16)
    (goalsize p16 large)
    
    
    
    
    (unused p17)
    (goalsize p17 medium)
    
    
    
    
    (unused p18)
    (goalsize p18 small)
    
    
    
    
    (available p19)
    (colour p19 mauve)
    (wood p19 oak)
    (surface-condition p19 smooth)
    (treatment p19 colourfragments)
    (goalsize p19 small)
    
    
    
    
    (available p20)
    (colour p20 red)
    (wood p20 walnut)
    (surface-condition p20 smooth)
    (treatment p20 colourfragments)
    (goalsize p20 small)
    
    
    
    
    (unused p21)
    (goalsize p21 medium)
    
    
    
    
    (unused p22)
    (goalsize p22 medium)
    
    
    
    
    (available p23)
    (colour p23 black)
    (wood p23 cherry)
    (surface-condition p23 verysmooth)
    (treatment p23 glazed)
    (goalsize p23 large)
    
    
    
    
    (available p24)
    (colour p24 red)
    (wood p24 beech)
    (surface-condition p24 verysmooth)
    (treatment p24 glazed)
    (goalsize p24 large)
    
    
    
    
    (unused p25)
    (goalsize p25 small)
    
    
    
    
    (available p26)
    (colour p26 green)
    (wood p26 oak)
    (surface-condition p26 rough)
    (treatment p26 varnished)
    (goalsize p26 small)
    
    
    
    
    (available p27)
    (colour p27 mauve)
    (wood p27 mahogany)
    (surface-condition p27 verysmooth)
    (treatment p27 colourfragments)
    (goalsize p27 large)
    
    
    
    
    (unused p28)
    (goalsize p28 small)
    
    
    
    
    (unused p29)
    (goalsize p29 large)
    
    
    
    
    (unused p30)
    (goalsize p30 small)
    
    
    
    
    (available p31)
    (colour p31 mauve)
    (wood p31 mahogany)
    (surface-condition p31 verysmooth)
    (treatment p31 varnished)
    (goalsize p31 small)
    
    
    
    
    (unused p32)
    (goalsize p32 small)
    
    
    
    
    (unused p33)
    (goalsize p33 medium)
    
    
    
    
    (available p34)
    (colour p34 green)
    (wood p34 oak)
    (surface-condition p34 verysmooth)
    (treatment p34 colourfragments)
    (goalsize p34 small)
    
    
    
    
    (available p35)
    (colour p35 red)
    (wood p35 oak)
    (surface-condition p35 smooth)
    (treatment p35 varnished)
    (goalsize p35 small)
    
    
    
    
    (boardsize b0 s9)
    (wood b0 cherry)
    (surface-condition b0 rough)
    (available b0)
    (boardsize b1 s7)
    (wood b1 cherry)
    (surface-condition b1 rough)
    (available b1)
    (boardsize b2 s2)
    (wood b2 mahogany)
    (surface-condition b2 rough)
    (available b2)
    (boardsize b3 s5)
    (wood b3 oak)
    (surface-condition b3 smooth)
    (available b3)
    (boardsize b4 s5)
    (wood b4 pine)
    (surface-condition b4 rough)
    (available b4)
    (boardsize b5 s7)
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
    (boardsize b8 s6)
    (wood b8 teak)
    (surface-condition b8 rough)
    (available b8)
    (boardsize b9 s9)
    (wood b9 beech)
    (surface-condition b9 smooth)
    (available b9)
  )
  (:goal
    (and
      (available p0)
      (wood p0 cherry)
      (surface-condition p0 smooth)
      (treatment p0 varnished)
      (available p1)
      (colour p1 mauve)
      (treatment p1 varnished)
      (available p2)
      (surface-condition p2 verysmooth)
      (treatment p2 glazed)
      (available p3)
      (wood p3 beech)
      (surface-condition p3 smooth)
      (treatment p3 glazed)
      (available p4)
      (colour p4 black)
      (surface-condition p4 smooth)
      (treatment p4 glazed)
      (available p5)
      (colour p5 mauve)
      (treatment p5 varnished)
      (available p6)
      (wood p6 pine)
      (treatment p6 glazed)
      (available p7)
      (colour p7 green)
      (surface-condition p7 verysmooth)
      (available p8)
      (colour p8 natural)
      (wood p8 walnut)
      (surface-condition p8 smooth)
      (treatment p8 varnished)
      (available p9)
      (colour p9 natural)
      (wood p9 teak)
      (available p10)
      (colour p10 blue)
      (treatment p10 varnished)
      (available p11)
      (colour p11 natural)
      (wood p11 cherry)
      (available p12)
      (colour p12 mauve)
      (wood p12 oak)
      (available p13)
      (colour p13 green)
      (wood p13 beech)
      (surface-condition p13 smooth)
      (treatment p13 varnished)
      (available p14)
      (colour p14 black)
      (wood p14 mahogany)
      (surface-condition p14 smooth)
      (treatment p14 glazed)
      (available p15)
      (colour p15 red)
      (treatment p15 glazed)
      (available p16)
      (surface-condition p16 smooth)
      (treatment p16 varnished)
      (available p17)
      (wood p17 pine)
      (treatment p17 glazed)
      (available p18)
      (colour p18 white)
      (wood p18 walnut)
      (surface-condition p18 smooth)
      (treatment p18 glazed)
      (available p19)
      (colour p19 black)
      (wood p19 oak)
      (surface-condition p19 verysmooth)
      (available p20)
      (colour p20 mauve)
      (wood p20 walnut)
      (surface-condition p20 verysmooth)
      (treatment p20 varnished)
      (available p21)
      (colour p21 mauve)
      (surface-condition p21 verysmooth)
      (available p22)
      (colour p22 mauve)
      (treatment p22 varnished)
      (available p23)
      (colour p23 red)
      (wood p23 cherry)
      (available p24)
      (wood p24 beech)
      (surface-condition p24 smooth)
      (available p25)
      (wood p25 pine)
      (surface-condition p25 smooth)
      (available p26)
      (wood p26 oak)
      (treatment p26 glazed)
      (available p27)
      (colour p27 black)
      (wood p27 mahogany)
      (surface-condition p27 verysmooth)
      (treatment p27 glazed)
      (available p28)
      (colour p28 natural)
      (wood p28 teak)
      (available p29)
      (colour p29 white)
      (surface-condition p29 smooth)
      (available p30)
      (colour p30 natural)
      (surface-condition p30 smooth)
      (available p31)
      (colour p31 white)
      (treatment p31 varnished)
      (available p32)
      (wood p32 oak)
      (treatment p32 varnished)
      (available p33)
      (wood p33 beech)
      (treatment p33 varnished)
      (available p34)
      (colour p34 white)
      (wood p34 oak)
      (surface-condition p34 verysmooth)
      (available p35)
      (wood p35 oak)
      (surface-condition p35 verysmooth)
    )
  )
  
)