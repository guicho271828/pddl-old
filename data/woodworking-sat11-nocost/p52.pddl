; woodworking task with 23 parts and 140% wood
; Machines:
;   3 grinder
;   3 glazer
;   3 immersion-varnisher
;   3 planer
;   3 highspeed-saw
;   3 spray-varnisher
;   3 saw
; random seed: 340255

(define (problem wood-prob-sat-52)
  (:domain woodworking)
  (:objects
    grinder0 grinder1 grinder2 - grinder
    glazer0 glazer1 glazer2 - glazer
    immersion-varnisher0 immersion-varnisher1 immersion-varnisher2 - immersion-varnisher
    planer0 planer1 planer2 - planer
    highspeed-saw0 highspeed-saw1 highspeed-saw2 - highspeed-saw
    spray-varnisher0 spray-varnisher1 spray-varnisher2 - spray-varnisher
    saw0 saw1 saw2 - saw
    mauve green red white black blue - acolour
    cherry mahogany pine walnut beech teak - awood
    p0 p1 p2 p3 p4 p5 p6 p7 p8 p9 p10 p11 p12 p13 p14 p15 p16 p17 p18 p19 p20 p21 p22 - part
    b0 b1 b2 b3 b4 b5 b6 b7 b8 - board
    s0 s1 s2 s3 s4 s5 s6 s7 s8 s9 s10 - aboardsize
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
    (has-colour glazer0 green)
    (has-colour glazer0 white)
    (has-colour glazer0 black)
    (has-colour glazer0 mauve)
    (has-colour glazer1 black)
    (has-colour glazer1 natural)
    (has-colour glazer1 green)
    (has-colour glazer1 red)
    (has-colour glazer2 mauve)
    (has-colour glazer2 natural)
    (has-colour glazer2 black)
    (has-colour immersion-varnisher0 mauve)
    (has-colour immersion-varnisher0 black)
    (has-colour immersion-varnisher0 red)
    (has-colour immersion-varnisher1 mauve)
    (has-colour immersion-varnisher1 white)
    (has-colour immersion-varnisher1 natural)
    (has-colour immersion-varnisher2 mauve)
    (has-colour immersion-varnisher2 black)
    (empty highspeed-saw0)
    (empty highspeed-saw1)
    (empty highspeed-saw2)
    (has-colour spray-varnisher0 black)
    (has-colour spray-varnisher0 red)
    (has-colour spray-varnisher1 mauve)
    (has-colour spray-varnisher1 white)
    (has-colour spray-varnisher1 natural)
    (has-colour spray-varnisher2 mauve)
    (has-colour spray-varnisher2 black)
    (unused p0)
    (goalsize p0 medium)
    
    
    
    
    (available p1)
    (colour p1 black)
    (wood p1 pine)
    (surface-condition p1 verysmooth)
    (treatment p1 colourfragments)
    (goalsize p1 medium)
    
    
    
    
    (available p2)
    (colour p2 natural)
    (wood p2 cherry)
    (surface-condition p2 smooth)
    (treatment p2 glazed)
    (goalsize p2 large)
    
    
    
    
    (unused p3)
    (goalsize p3 small)
    
    
    
    
    (unused p4)
    (goalsize p4 small)
    
    
    
    
    (available p5)
    (colour p5 red)
    (wood p5 beech)
    (surface-condition p5 verysmooth)
    (treatment p5 colourfragments)
    (goalsize p5 large)
    
    
    
    
    (unused p6)
    (goalsize p6 small)
    
    
    
    
    (unused p7)
    (goalsize p7 large)
    
    
    
    
    (unused p8)
    (goalsize p8 small)
    
    
    
    
    (unused p9)
    (goalsize p9 small)
    
    
    
    
    (unused p10)
    (goalsize p10 small)
    
    
    
    
    (unused p11)
    (goalsize p11 small)
    
    
    
    
    (unused p12)
    (goalsize p12 small)
    
    
    
    
    (unused p13)
    (goalsize p13 medium)
    
    
    
    
    (available p14)
    (colour p14 mauve)
    (wood p14 teak)
    (surface-condition p14 rough)
    (treatment p14 colourfragments)
    (goalsize p14 large)
    
    
    
    
    (unused p15)
    (goalsize p15 small)
    
    
    
    
    (available p16)
    (colour p16 natural)
    (wood p16 teak)
    (surface-condition p16 smooth)
    (treatment p16 glazed)
    (goalsize p16 medium)
    
    
    
    
    (unused p17)
    (goalsize p17 large)
    
    
    
    
    (unused p18)
    (goalsize p18 large)
    
    
    
    
    (unused p19)
    (goalsize p19 large)
    
    
    
    
    (unused p20)
    (goalsize p20 small)
    
    
    
    
    (unused p21)
    (goalsize p21 large)
    
    
    
    
    (unused p22)
    (goalsize p22 large)
    
    
    
    
    (boardsize b0 s7)
    (wood b0 cherry)
    (surface-condition b0 smooth)
    (available b0)
    (boardsize b1 s5)
    (wood b1 mahogany)
    (surface-condition b1 rough)
    (available b1)
    (boardsize b2 s10)
    (wood b2 mahogany)
    (surface-condition b2 rough)
    (available b2)
    (boardsize b3 s5)
    (wood b3 mahogany)
    (surface-condition b3 rough)
    (available b3)
    (boardsize b4 s2)
    (wood b4 pine)
    (surface-condition b4 rough)
    (available b4)
    (boardsize b5 s9)
    (wood b5 walnut)
    (surface-condition b5 rough)
    (available b5)
    (boardsize b6 s3)
    (wood b6 walnut)
    (surface-condition b6 rough)
    (available b6)
    (boardsize b7 s3)
    (wood b7 teak)
    (surface-condition b7 rough)
    (available b7)
    (boardsize b8 s3)
    (wood b8 beech)
    (surface-condition b8 rough)
    (available b8)
  )
  (:goal
    (and
      (available p0)
      (surface-condition p0 smooth)
      (treatment p0 varnished)
      (available p1)
      (colour p1 green)
      (wood p1 pine)
      (surface-condition p1 smooth)
      (treatment p1 glazed)
      (available p2)
      (colour p2 white)
      (surface-condition p2 verysmooth)
      (available p3)
      (colour p3 mauve)
      (surface-condition p3 verysmooth)
      (treatment p3 varnished)
      (available p4)
      (colour p4 natural)
      (wood p4 beech)
      (surface-condition p4 smooth)
      (treatment p4 glazed)
      (available p5)
      (colour p5 black)
      (surface-condition p5 smooth)
      (available p6)
      (colour p6 mauve)
      (wood p6 cherry)
      (surface-condition p6 verysmooth)
      (treatment p6 glazed)
      (available p7)
      (wood p7 walnut)
      (surface-condition p7 verysmooth)
      (treatment p7 glazed)
      (available p8)
      (colour p8 natural)
      (wood p8 mahogany)
      (surface-condition p8 verysmooth)
      (treatment p8 glazed)
      (available p9)
      (wood p9 cherry)
      (treatment p9 varnished)
      (available p10)
      (colour p10 black)
      (surface-condition p10 verysmooth)
      (available p11)
      (colour p11 natural)
      (surface-condition p11 verysmooth)
      (available p12)
      (colour p12 black)
      (wood p12 mahogany)
      (surface-condition p12 verysmooth)
      (treatment p12 glazed)
      (available p13)
      (wood p13 mahogany)
      (treatment p13 glazed)
      (available p14)
      (surface-condition p14 smooth)
      (treatment p14 varnished)
      (available p15)
      (wood p15 pine)
      (surface-condition p15 smooth)
      (available p16)
      (colour p16 green)
      (wood p16 teak)
      (surface-condition p16 smooth)
      (treatment p16 glazed)
      (available p17)
      (wood p17 mahogany)
      (treatment p17 varnished)
      (available p18)
      (colour p18 red)
      (surface-condition p18 verysmooth)
      (available p19)
      (colour p19 black)
      (wood p19 mahogany)
      (surface-condition p19 verysmooth)
      (treatment p19 varnished)
      (available p20)
      (wood p20 walnut)
      (treatment p20 varnished)
      (available p21)
      (colour p21 mauve)
      (wood p21 mahogany)
      (available p22)
      (colour p22 natural)
      (surface-condition p22 smooth)
      (treatment p22 glazed)
    )
  )
  
)