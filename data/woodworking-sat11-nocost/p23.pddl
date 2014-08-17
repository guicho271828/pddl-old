; woodworking task with 38 parts and 120% wood
; Machines:
;   3 grinder
;   3 glazer
;   3 immersion-varnisher
;   3 planer
;   3 highspeed-saw
;   3 spray-varnisher
;   3 saw
; random seed: 663177

(define (problem wood-prob-sat-23)
  (:domain woodworking)
  (:objects
    grinder0 grinder1 grinder2 - grinder
    glazer0 glazer1 glazer2 - glazer
    immersion-varnisher0 immersion-varnisher1 immersion-varnisher2 - immersion-varnisher
    planer0 planer1 planer2 - planer
    highspeed-saw0 highspeed-saw1 highspeed-saw2 - highspeed-saw
    spray-varnisher0 spray-varnisher1 spray-varnisher2 - spray-varnisher
    saw0 saw1 saw2 - saw
    mauve white black red blue green - acolour
    beech walnut pine oak cherry teak mahogany - awood
    p0 p1 p2 p3 p4 p5 p6 p7 p8 p9 p10 p11 p12 p13 p14 p15 p16 p17 p18 p19 p20 p21 p22 p23 p24 p25 p26 p27 p28 p29 p30 p31 p32 p33 p34 p35 p36 p37 - part
    b0 b1 b2 b3 b4 b5 b6 b7 b8 b9 b10 b11 b12 - board
    s0 s1 s2 s3 s4 s5 s6 s7 s8 s9 s10 s11 - aboardsize
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
    (boardsize-successor s9 s10)
    (boardsize-successor s10 s11)
    (has-colour glazer0 natural)
    (has-colour glazer0 green)
    (has-colour glazer0 red)
    (has-colour glazer1 blue)
    (has-colour glazer1 green)
    (has-colour glazer1 black)
    (has-colour glazer2 blue)
    (has-colour glazer2 natural)
    (has-colour glazer2 green)
    (has-colour glazer2 red)
    (has-colour glazer2 black)
    (has-colour immersion-varnisher0 blue)
    (has-colour immersion-varnisher0 natural)
    (has-colour immersion-varnisher0 green)
    (has-colour immersion-varnisher0 black)
    (has-colour immersion-varnisher0 white)
    (has-colour immersion-varnisher0 red)
    (has-colour immersion-varnisher1 blue)
    (has-colour immersion-varnisher1 black)
    (has-colour immersion-varnisher2 blue)
    (has-colour immersion-varnisher2 white)
    (has-colour immersion-varnisher2 black)
    (has-colour immersion-varnisher2 red)
    (empty highspeed-saw0)
    (empty highspeed-saw1)
    (empty highspeed-saw2)
    (has-colour spray-varnisher0 blue)
    (has-colour spray-varnisher0 white)
    (has-colour spray-varnisher1 black)
    (has-colour spray-varnisher1 red)
    (has-colour spray-varnisher2 blue)
    (has-colour spray-varnisher2 natural)
    (has-colour spray-varnisher2 green)
    (has-colour spray-varnisher2 black)
    (has-colour spray-varnisher2 white)
    (has-colour spray-varnisher2 red)
    (unused p0)
    (goalsize p0 large)
    
    
    
    
    (unused p1)
    (goalsize p1 small)
    
    
    
    
    (unused p2)
    (goalsize p2 medium)
    
    
    
    
    (unused p3)
    (goalsize p3 small)
    
    
    
    
    (unused p4)
    (goalsize p4 small)
    
    
    
    
    (unused p5)
    (goalsize p5 large)
    
    
    
    
    (unused p6)
    (goalsize p6 large)
    
    
    
    
    (available p7)
    (colour p7 blue)
    (wood p7 walnut)
    (surface-condition p7 rough)
    (treatment p7 glazed)
    (goalsize p7 large)
    
    
    
    
    (unused p8)
    (goalsize p8 medium)
    
    
    
    
    (unused p9)
    (goalsize p9 large)
    
    
    
    
    (available p10)
    (colour p10 white)
    (wood p10 oak)
    (surface-condition p10 smooth)
    (treatment p10 colourfragments)
    (goalsize p10 medium)
    
    
    
    
    (unused p11)
    (goalsize p11 small)
    
    
    
    
    (unused p12)
    (goalsize p12 small)
    
    
    
    
    (unused p13)
    (goalsize p13 small)
    
    
    
    
    (unused p14)
    (goalsize p14 small)
    
    
    
    
    (unused p15)
    (goalsize p15 medium)
    
    
    
    
    (available p16)
    (colour p16 blue)
    (wood p16 pine)
    (surface-condition p16 rough)
    (treatment p16 glazed)
    (goalsize p16 large)
    
    
    
    
    (unused p17)
    (goalsize p17 large)
    
    
    
    
    (available p18)
    (colour p18 red)
    (wood p18 teak)
    (surface-condition p18 smooth)
    (treatment p18 varnished)
    (goalsize p18 large)
    
    
    
    
    (unused p19)
    (goalsize p19 small)
    
    
    
    
    (unused p20)
    (goalsize p20 large)
    
    
    
    
    (unused p21)
    (goalsize p21 medium)
    
    
    
    
    (unused p22)
    (goalsize p22 medium)
    
    
    
    
    (available p23)
    (colour p23 red)
    (wood p23 mahogany)
    (surface-condition p23 rough)
    (treatment p23 glazed)
    (goalsize p23 medium)
    
    
    
    
    (unused p24)
    (goalsize p24 medium)
    
    
    
    
    (unused p25)
    (goalsize p25 large)
    
    
    
    
    (unused p26)
    (goalsize p26 small)
    
    
    
    
    (available p27)
    (colour p27 natural)
    (wood p27 pine)
    (surface-condition p27 smooth)
    (treatment p27 colourfragments)
    (goalsize p27 small)
    
    
    
    
    (unused p28)
    (goalsize p28 large)
    
    
    
    
    (unused p29)
    (goalsize p29 large)
    
    
    
    
    (unused p30)
    (goalsize p30 medium)
    
    
    
    
    (unused p31)
    (goalsize p31 large)
    
    
    
    
    (unused p32)
    (goalsize p32 large)
    
    
    
    
    (unused p33)
    (goalsize p33 large)
    
    
    
    
    (unused p34)
    (goalsize p34 medium)
    
    
    
    
    (unused p35)
    (goalsize p35 medium)
    
    
    
    
    (unused p36)
    (goalsize p36 large)
    
    
    
    
    (unused p37)
    (goalsize p37 medium)
    
    
    
    
    (boardsize b0 s8)
    (wood b0 cherry)
    (surface-condition b0 smooth)
    (available b0)
    (boardsize b1 s6)
    (wood b1 cherry)
    (surface-condition b1 rough)
    (available b1)
    (boardsize b2 s6)
    (wood b2 mahogany)
    (surface-condition b2 smooth)
    (available b2)
    (boardsize b3 s5)
    (wood b3 mahogany)
    (surface-condition b3 smooth)
    (available b3)
    (boardsize b4 s7)
    (wood b4 oak)
    (surface-condition b4 rough)
    (available b4)
    (boardsize b5 s9)
    (wood b5 oak)
    (surface-condition b5 rough)
    (available b5)
    (boardsize b6 s1)
    (wood b6 oak)
    (surface-condition b6 rough)
    (available b6)
    (boardsize b7 s9)
    (wood b7 pine)
    (surface-condition b7 rough)
    (available b7)
    (boardsize b8 s2)
    (wood b8 pine)
    (surface-condition b8 smooth)
    (available b8)
    (boardsize b9 s5)
    (wood b9 walnut)
    (surface-condition b9 smooth)
    (available b9)
    (boardsize b10 s11)
    (wood b10 teak)
    (surface-condition b10 rough)
    (available b10)
    (boardsize b11 s9)
    (wood b11 beech)
    (surface-condition b11 rough)
    (available b11)
    (boardsize b12 s6)
    (wood b12 beech)
    (surface-condition b12 smooth)
    (available b12)
  )
  (:goal
    (and
      (available p0)
      (surface-condition p0 verysmooth)
      (treatment p0 varnished)
      (available p1)
      (colour p1 blue)
      (wood p1 oak)
      (treatment p1 glazed)
      (available p2)
      (colour p2 red)
      (surface-condition p2 smooth)
      (treatment p2 varnished)
      (available p3)
      (wood p3 mahogany)
      (surface-condition p3 smooth)
      (treatment p3 varnished)
      (available p4)
      (wood p4 cherry)
      (treatment p4 glazed)
      (available p5)
      (surface-condition p5 smooth)
      (treatment p5 glazed)
      (available p6)
      (colour p6 red)
      (surface-condition p6 smooth)
      (available p7)
      (wood p7 walnut)
      (surface-condition p7 smooth)
      (treatment p7 glazed)
      (available p8)
      (colour p8 natural)
      (wood p8 pine)
      (treatment p8 glazed)
      (available p9)
      (colour p9 green)
      (wood p9 beech)
      (treatment p9 glazed)
      (available p10)
      (surface-condition p10 smooth)
      (treatment p10 glazed)
      (available p11)
      (colour p11 red)
      (surface-condition p11 verysmooth)
      (treatment p11 glazed)
      (available p12)
      (wood p12 beech)
      (surface-condition p12 smooth)
      (available p13)
      (colour p13 white)
      (wood p13 oak)
      (surface-condition p13 smooth)
      (treatment p13 varnished)
      (available p14)
      (wood p14 oak)
      (surface-condition p14 smooth)
      (available p15)
      (surface-condition p15 smooth)
      (treatment p15 varnished)
      (available p16)
      (colour p16 white)
      (wood p16 pine)
      (surface-condition p16 verysmooth)
      (treatment p16 varnished)
      (available p17)
      (colour p17 green)
      (wood p17 pine)
      (surface-condition p17 smooth)
      (treatment p17 glazed)
      (available p18)
      (colour p18 black)
      (wood p18 teak)
      (treatment p18 glazed)
      (available p19)
      (wood p19 walnut)
      (surface-condition p19 verysmooth)
      (available p20)
      (surface-condition p20 smooth)
      (treatment p20 varnished)
      (available p21)
      (colour p21 red)
      (wood p21 oak)
      (treatment p21 glazed)
      (available p22)
      (colour p22 green)
      (wood p22 cherry)
      (available p23)
      (colour p23 blue)
      (wood p23 mahogany)
      (surface-condition p23 verysmooth)
      (treatment p23 varnished)
      (available p24)
      (wood p24 oak)
      (treatment p24 glazed)
      (available p25)
      (colour p25 black)
      (wood p25 teak)
      (surface-condition p25 verysmooth)
      (available p26)
      (wood p26 oak)
      (surface-condition p26 smooth)
      (available p27)
      (surface-condition p27 smooth)
      (treatment p27 glazed)
      (available p28)
      (colour p28 natural)
      (treatment p28 glazed)
      (available p29)
      (colour p29 natural)
      (wood p29 teak)
      (surface-condition p29 verysmooth)
      (available p30)
      (colour p30 red)
      (wood p30 cherry)
      (surface-condition p30 verysmooth)
      (treatment p30 varnished)
      (available p31)
      (colour p31 white)
      (treatment p31 varnished)
      (available p32)
      (colour p32 blue)
      (wood p32 cherry)
      (surface-condition p32 verysmooth)
      (available p33)
      (colour p33 green)
      (surface-condition p33 verysmooth)
      (available p34)
      (surface-condition p34 verysmooth)
      (treatment p34 varnished)
      (available p35)
      (colour p35 green)
      (treatment p35 glazed)
      (available p36)
      (colour p36 black)
      (wood p36 beech)
      (surface-condition p36 verysmooth)
      (treatment p36 varnished)
      (available p37)
      (colour p37 red)
      (wood p37 pine)
      (surface-condition p37 smooth)
      (treatment p37 varnished)
    )
  )
  
)