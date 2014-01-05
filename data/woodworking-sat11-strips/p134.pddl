; woodworking task with 89 parts and 140% wood
; Machines:
;   3 grinder
;   3 glazer
;   3 immersion-varnisher
;   3 planer
;   3 highspeed-saw
;   3 spray-varnisher
;   3 saw
; random seed: 970446

(define (problem wood-prob-sat-134)
  (:domain woodworking)
  (:objects
    grinder0 grinder1 grinder2 - grinder
    glazer0 glazer1 glazer2 - glazer
    immersion-varnisher0 immersion-varnisher1 immersion-varnisher2 - immersion-varnisher
    planer0 planer1 planer2 - planer
    highspeed-saw0 highspeed-saw1 highspeed-saw2 - highspeed-saw
    spray-varnisher0 spray-varnisher1 spray-varnisher2 - spray-varnisher
    saw0 saw1 saw2 - saw
    mauve blue green white red black - acolour
    mahogany pine beech cherry walnut teak oak - awood
    p0 p1 p2 p3 p4 p5 p6 p7 p8 p9 p10 p11 p12 p13 p14 p15 p16 p17 p18 p19 p20 p21 p22 p23 p24 p25 p26 p27 p28 p29 p30 p31 p32 p33 p34 p35 p36 p37 p38 p39 p40 p41 p42 p43 p44 p45 p46 p47 p48 p49 p50 p51 p52 p53 p54 p55 p56 p57 p58 p59 p60 p61 p62 p63 p64 p65 p66 p67 p68 p69 p70 p71 p72 p73 p74 p75 p76 p77 p78 p79 p80 p81 p82 p83 p84 p85 p86 p87 p88 - part
    b0 b1 b2 b3 b4 b5 b6 b7 b8 b9 b10 b11 b12 b13 b14 b15 b16 b17 b18 b19 b20 b21 b22 b23 b24 b25 - board
    s0 s1 s2 s3 s4 s5 s6 s7 s8 s9 s10 s11 - aboardsize
  )
  (:init
    (grind-treatment-change varnished colourfragments)
    (grind-treatment-change glazed untreated)
    (grind-treatment-change untreated untreated)
    (grind-treatment-change colourfragments untreated)
    (is-smooth smooth)
    (is-smooth verysmooth)
    (= (total-cost) 0)
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
    (has-colour glazer0 blue)
    (has-colour glazer0 natural)
    (has-colour glazer0 mauve)
    (has-colour glazer0 green)
    (has-colour glazer0 black)
    (has-colour glazer0 white)
    (has-colour glazer0 red)
    (has-colour glazer1 black)
    (has-colour glazer1 white)
    (has-colour glazer1 natural)
    (has-colour glazer1 mauve)
    (has-colour glazer2 blue)
    (has-colour glazer2 natural)
    (has-colour glazer2 mauve)
    (has-colour glazer2 green)
    (has-colour glazer2 black)
    (has-colour glazer2 white)
    (has-colour glazer2 red)
    (has-colour immersion-varnisher0 blue)
    (has-colour immersion-varnisher0 black)
    (has-colour immersion-varnisher0 natural)
    (has-colour immersion-varnisher0 mauve)
    (has-colour immersion-varnisher1 blue)
    (has-colour immersion-varnisher1 mauve)
    (has-colour immersion-varnisher1 green)
    (has-colour immersion-varnisher1 black)
    (has-colour immersion-varnisher1 white)
    (has-colour immersion-varnisher1 red)
    (has-colour immersion-varnisher2 natural)
    (has-colour immersion-varnisher2 mauve)
    (has-colour immersion-varnisher2 green)
    (has-colour immersion-varnisher2 black)
    (has-colour immersion-varnisher2 white)
    (has-colour immersion-varnisher2 red)
    (empty highspeed-saw0)
    (empty highspeed-saw1)
    (empty highspeed-saw2)
    (has-colour spray-varnisher0 blue)
    (has-colour spray-varnisher0 green)
    (has-colour spray-varnisher0 white)
    (has-colour spray-varnisher0 natural)
    (has-colour spray-varnisher0 mauve)
    (has-colour spray-varnisher1 blue)
    (has-colour spray-varnisher1 natural)
    (has-colour spray-varnisher1 mauve)
    (has-colour spray-varnisher1 green)
    (has-colour spray-varnisher1 black)
    (has-colour spray-varnisher1 white)
    (has-colour spray-varnisher1 red)
    (has-colour spray-varnisher2 blue)
    (has-colour spray-varnisher2 mauve)
    (has-colour spray-varnisher2 white)
    (has-colour spray-varnisher2 black)
    (has-colour spray-varnisher2 red)
    (available p0)
    (colour p0 blue)
    (wood p0 cherry)
    (surface-condition p0 verysmooth)
    (treatment p0 glazed)
    (goalsize p0 small)
    (= (spray-varnish-cost p0) 5)
    (= (glaze-cost p0) 10)
    (= (grind-cost p0) 15)
    (= (plane-cost p0) 10)
    (unused p1)
    (goalsize p1 small)
    (= (spray-varnish-cost p1) 5)
    (= (glaze-cost p1) 10)
    (= (grind-cost p1) 15)
    (= (plane-cost p1) 10)
    (unused p2)
    (goalsize p2 small)
    (= (spray-varnish-cost p2) 5)
    (= (glaze-cost p2) 10)
    (= (grind-cost p2) 15)
    (= (plane-cost p2) 10)
    (unused p3)
    (goalsize p3 large)
    (= (spray-varnish-cost p3) 15)
    (= (glaze-cost p3) 20)
    (= (grind-cost p3) 45)
    (= (plane-cost p3) 30)
    (available p4)
    (colour p4 blue)
    (wood p4 pine)
    (surface-condition p4 rough)
    (treatment p4 glazed)
    (goalsize p4 small)
    (= (spray-varnish-cost p4) 5)
    (= (glaze-cost p4) 10)
    (= (grind-cost p4) 15)
    (= (plane-cost p4) 10)
    (unused p5)
    (goalsize p5 small)
    (= (spray-varnish-cost p5) 5)
    (= (glaze-cost p5) 10)
    (= (grind-cost p5) 15)
    (= (plane-cost p5) 10)
    (unused p6)
    (goalsize p6 medium)
    (= (spray-varnish-cost p6) 10)
    (= (glaze-cost p6) 15)
    (= (grind-cost p6) 30)
    (= (plane-cost p6) 20)
    (available p7)
    (colour p7 green)
    (wood p7 beech)
    (surface-condition p7 smooth)
    (treatment p7 glazed)
    (goalsize p7 large)
    (= (spray-varnish-cost p7) 15)
    (= (glaze-cost p7) 20)
    (= (grind-cost p7) 45)
    (= (plane-cost p7) 30)
    (unused p8)
    (goalsize p8 small)
    (= (spray-varnish-cost p8) 5)
    (= (glaze-cost p8) 10)
    (= (grind-cost p8) 15)
    (= (plane-cost p8) 10)
    (unused p9)
    (goalsize p9 large)
    (= (spray-varnish-cost p9) 15)
    (= (glaze-cost p9) 20)
    (= (grind-cost p9) 45)
    (= (plane-cost p9) 30)
    (unused p10)
    (goalsize p10 large)
    (= (spray-varnish-cost p10) 15)
    (= (glaze-cost p10) 20)
    (= (grind-cost p10) 45)
    (= (plane-cost p10) 30)
    (unused p11)
    (goalsize p11 medium)
    (= (spray-varnish-cost p11) 10)
    (= (glaze-cost p11) 15)
    (= (grind-cost p11) 30)
    (= (plane-cost p11) 20)
    (unused p12)
    (goalsize p12 medium)
    (= (spray-varnish-cost p12) 10)
    (= (glaze-cost p12) 15)
    (= (grind-cost p12) 30)
    (= (plane-cost p12) 20)
    (unused p13)
    (goalsize p13 small)
    (= (spray-varnish-cost p13) 5)
    (= (glaze-cost p13) 10)
    (= (grind-cost p13) 15)
    (= (plane-cost p13) 10)
    (unused p14)
    (goalsize p14 small)
    (= (spray-varnish-cost p14) 5)
    (= (glaze-cost p14) 10)
    (= (grind-cost p14) 15)
    (= (plane-cost p14) 10)
    (unused p15)
    (goalsize p15 medium)
    (= (spray-varnish-cost p15) 10)
    (= (glaze-cost p15) 15)
    (= (grind-cost p15) 30)
    (= (plane-cost p15) 20)
    (available p16)
    (colour p16 green)
    (wood p16 walnut)
    (surface-condition p16 rough)
    (treatment p16 glazed)
    (goalsize p16 medium)
    (= (spray-varnish-cost p16) 10)
    (= (glaze-cost p16) 15)
    (= (grind-cost p16) 30)
    (= (plane-cost p16) 20)
    (unused p17)
    (goalsize p17 large)
    (= (spray-varnish-cost p17) 15)
    (= (glaze-cost p17) 20)
    (= (grind-cost p17) 45)
    (= (plane-cost p17) 30)
    (available p18)
    (colour p18 natural)
    (wood p18 oak)
    (surface-condition p18 smooth)
    (treatment p18 varnished)
    (goalsize p18 medium)
    (= (spray-varnish-cost p18) 10)
    (= (glaze-cost p18) 15)
    (= (grind-cost p18) 30)
    (= (plane-cost p18) 20)
    (unused p19)
    (goalsize p19 small)
    (= (spray-varnish-cost p19) 5)
    (= (glaze-cost p19) 10)
    (= (grind-cost p19) 15)
    (= (plane-cost p19) 10)
    (unused p20)
    (goalsize p20 small)
    (= (spray-varnish-cost p20) 5)
    (= (glaze-cost p20) 10)
    (= (grind-cost p20) 15)
    (= (plane-cost p20) 10)
    (unused p21)
    (goalsize p21 small)
    (= (spray-varnish-cost p21) 5)
    (= (glaze-cost p21) 10)
    (= (grind-cost p21) 15)
    (= (plane-cost p21) 10)
    (unused p22)
    (goalsize p22 small)
    (= (spray-varnish-cost p22) 5)
    (= (glaze-cost p22) 10)
    (= (grind-cost p22) 15)
    (= (plane-cost p22) 10)
    (unused p23)
    (goalsize p23 small)
    (= (spray-varnish-cost p23) 5)
    (= (glaze-cost p23) 10)
    (= (grind-cost p23) 15)
    (= (plane-cost p23) 10)
    (unused p24)
    (goalsize p24 small)
    (= (spray-varnish-cost p24) 5)
    (= (glaze-cost p24) 10)
    (= (grind-cost p24) 15)
    (= (plane-cost p24) 10)
    (unused p25)
    (goalsize p25 medium)
    (= (spray-varnish-cost p25) 10)
    (= (glaze-cost p25) 15)
    (= (grind-cost p25) 30)
    (= (plane-cost p25) 20)
    (unused p26)
    (goalsize p26 large)
    (= (spray-varnish-cost p26) 15)
    (= (glaze-cost p26) 20)
    (= (grind-cost p26) 45)
    (= (plane-cost p26) 30)
    (unused p27)
    (goalsize p27 large)
    (= (spray-varnish-cost p27) 15)
    (= (glaze-cost p27) 20)
    (= (grind-cost p27) 45)
    (= (plane-cost p27) 30)
    (unused p28)
    (goalsize p28 small)
    (= (spray-varnish-cost p28) 5)
    (= (glaze-cost p28) 10)
    (= (grind-cost p28) 15)
    (= (plane-cost p28) 10)
    (available p29)
    (colour p29 green)
    (wood p29 pine)
    (surface-condition p29 verysmooth)
    (treatment p29 glazed)
    (goalsize p29 large)
    (= (spray-varnish-cost p29) 15)
    (= (glaze-cost p29) 20)
    (= (grind-cost p29) 45)
    (= (plane-cost p29) 30)
    (unused p30)
    (goalsize p30 small)
    (= (spray-varnish-cost p30) 5)
    (= (glaze-cost p30) 10)
    (= (grind-cost p30) 15)
    (= (plane-cost p30) 10)
    (unused p31)
    (goalsize p31 medium)
    (= (spray-varnish-cost p31) 10)
    (= (glaze-cost p31) 15)
    (= (grind-cost p31) 30)
    (= (plane-cost p31) 20)
    (unused p32)
    (goalsize p32 large)
    (= (spray-varnish-cost p32) 15)
    (= (glaze-cost p32) 20)
    (= (grind-cost p32) 45)
    (= (plane-cost p32) 30)
    (available p33)
    (colour p33 mauve)
    (wood p33 oak)
    (surface-condition p33 smooth)
    (treatment p33 colourfragments)
    (goalsize p33 large)
    (= (spray-varnish-cost p33) 15)
    (= (glaze-cost p33) 20)
    (= (grind-cost p33) 45)
    (= (plane-cost p33) 30)
    (unused p34)
    (goalsize p34 small)
    (= (spray-varnish-cost p34) 5)
    (= (glaze-cost p34) 10)
    (= (grind-cost p34) 15)
    (= (plane-cost p34) 10)
    (unused p35)
    (goalsize p35 medium)
    (= (spray-varnish-cost p35) 10)
    (= (glaze-cost p35) 15)
    (= (grind-cost p35) 30)
    (= (plane-cost p35) 20)
    (unused p36)
    (goalsize p36 small)
    (= (spray-varnish-cost p36) 5)
    (= (glaze-cost p36) 10)
    (= (grind-cost p36) 15)
    (= (plane-cost p36) 10)
    (unused p37)
    (goalsize p37 small)
    (= (spray-varnish-cost p37) 5)
    (= (glaze-cost p37) 10)
    (= (grind-cost p37) 15)
    (= (plane-cost p37) 10)
    (available p38)
    (colour p38 red)
    (wood p38 teak)
    (surface-condition p38 smooth)
    (treatment p38 glazed)
    (goalsize p38 large)
    (= (spray-varnish-cost p38) 15)
    (= (glaze-cost p38) 20)
    (= (grind-cost p38) 45)
    (= (plane-cost p38) 30)
    (unused p39)
    (goalsize p39 large)
    (= (spray-varnish-cost p39) 15)
    (= (glaze-cost p39) 20)
    (= (grind-cost p39) 45)
    (= (plane-cost p39) 30)
    (unused p40)
    (goalsize p40 small)
    (= (spray-varnish-cost p40) 5)
    (= (glaze-cost p40) 10)
    (= (grind-cost p40) 15)
    (= (plane-cost p40) 10)
    (unused p41)
    (goalsize p41 large)
    (= (spray-varnish-cost p41) 15)
    (= (glaze-cost p41) 20)
    (= (grind-cost p41) 45)
    (= (plane-cost p41) 30)
    (unused p42)
    (goalsize p42 small)
    (= (spray-varnish-cost p42) 5)
    (= (glaze-cost p42) 10)
    (= (grind-cost p42) 15)
    (= (plane-cost p42) 10)
    (available p43)
    (colour p43 blue)
    (wood p43 teak)
    (surface-condition p43 smooth)
    (treatment p43 glazed)
    (goalsize p43 medium)
    (= (spray-varnish-cost p43) 10)
    (= (glaze-cost p43) 15)
    (= (grind-cost p43) 30)
    (= (plane-cost p43) 20)
    (unused p44)
    (goalsize p44 medium)
    (= (spray-varnish-cost p44) 10)
    (= (glaze-cost p44) 15)
    (= (grind-cost p44) 30)
    (= (plane-cost p44) 20)
    (available p45)
    (colour p45 black)
    (wood p45 oak)
    (surface-condition p45 rough)
    (treatment p45 varnished)
    (goalsize p45 large)
    (= (spray-varnish-cost p45) 15)
    (= (glaze-cost p45) 20)
    (= (grind-cost p45) 45)
    (= (plane-cost p45) 30)
    (unused p46)
    (goalsize p46 large)
    (= (spray-varnish-cost p46) 15)
    (= (glaze-cost p46) 20)
    (= (grind-cost p46) 45)
    (= (plane-cost p46) 30)
    (available p47)
    (colour p47 white)
    (wood p47 beech)
    (surface-condition p47 verysmooth)
    (treatment p47 colourfragments)
    (goalsize p47 large)
    (= (spray-varnish-cost p47) 15)
    (= (glaze-cost p47) 20)
    (= (grind-cost p47) 45)
    (= (plane-cost p47) 30)
    (unused p48)
    (goalsize p48 small)
    (= (spray-varnish-cost p48) 5)
    (= (glaze-cost p48) 10)
    (= (grind-cost p48) 15)
    (= (plane-cost p48) 10)
    (available p49)
    (colour p49 white)
    (wood p49 pine)
    (surface-condition p49 verysmooth)
    (treatment p49 colourfragments)
    (goalsize p49 medium)
    (= (spray-varnish-cost p49) 10)
    (= (glaze-cost p49) 15)
    (= (grind-cost p49) 30)
    (= (plane-cost p49) 20)
    (unused p50)
    (goalsize p50 medium)
    (= (spray-varnish-cost p50) 10)
    (= (glaze-cost p50) 15)
    (= (grind-cost p50) 30)
    (= (plane-cost p50) 20)
    (unused p51)
    (goalsize p51 medium)
    (= (spray-varnish-cost p51) 10)
    (= (glaze-cost p51) 15)
    (= (grind-cost p51) 30)
    (= (plane-cost p51) 20)
    (unused p52)
    (goalsize p52 medium)
    (= (spray-varnish-cost p52) 10)
    (= (glaze-cost p52) 15)
    (= (grind-cost p52) 30)
    (= (plane-cost p52) 20)
    (unused p53)
    (goalsize p53 medium)
    (= (spray-varnish-cost p53) 10)
    (= (glaze-cost p53) 15)
    (= (grind-cost p53) 30)
    (= (plane-cost p53) 20)
    (unused p54)
    (goalsize p54 large)
    (= (spray-varnish-cost p54) 15)
    (= (glaze-cost p54) 20)
    (= (grind-cost p54) 45)
    (= (plane-cost p54) 30)
    (unused p55)
    (goalsize p55 large)
    (= (spray-varnish-cost p55) 15)
    (= (glaze-cost p55) 20)
    (= (grind-cost p55) 45)
    (= (plane-cost p55) 30)
    (unused p56)
    (goalsize p56 medium)
    (= (spray-varnish-cost p56) 10)
    (= (glaze-cost p56) 15)
    (= (grind-cost p56) 30)
    (= (plane-cost p56) 20)
    (unused p57)
    (goalsize p57 small)
    (= (spray-varnish-cost p57) 5)
    (= (glaze-cost p57) 10)
    (= (grind-cost p57) 15)
    (= (plane-cost p57) 10)
    (available p58)
    (colour p58 green)
    (wood p58 oak)
    (surface-condition p58 verysmooth)
    (treatment p58 glazed)
    (goalsize p58 medium)
    (= (spray-varnish-cost p58) 10)
    (= (glaze-cost p58) 15)
    (= (grind-cost p58) 30)
    (= (plane-cost p58) 20)
    (unused p59)
    (goalsize p59 small)
    (= (spray-varnish-cost p59) 5)
    (= (glaze-cost p59) 10)
    (= (grind-cost p59) 15)
    (= (plane-cost p59) 10)
    (unused p60)
    (goalsize p60 small)
    (= (spray-varnish-cost p60) 5)
    (= (glaze-cost p60) 10)
    (= (grind-cost p60) 15)
    (= (plane-cost p60) 10)
    (unused p61)
    (goalsize p61 small)
    (= (spray-varnish-cost p61) 5)
    (= (glaze-cost p61) 10)
    (= (grind-cost p61) 15)
    (= (plane-cost p61) 10)
    (available p62)
    (colour p62 black)
    (wood p62 teak)
    (surface-condition p62 smooth)
    (treatment p62 varnished)
    (goalsize p62 large)
    (= (spray-varnish-cost p62) 15)
    (= (glaze-cost p62) 20)
    (= (grind-cost p62) 45)
    (= (plane-cost p62) 30)
    (unused p63)
    (goalsize p63 medium)
    (= (spray-varnish-cost p63) 10)
    (= (glaze-cost p63) 15)
    (= (grind-cost p63) 30)
    (= (plane-cost p63) 20)
    (available p64)
    (colour p64 blue)
    (wood p64 cherry)
    (surface-condition p64 smooth)
    (treatment p64 glazed)
    (goalsize p64 large)
    (= (spray-varnish-cost p64) 15)
    (= (glaze-cost p64) 20)
    (= (grind-cost p64) 45)
    (= (plane-cost p64) 30)
    (available p65)
    (colour p65 mauve)
    (wood p65 teak)
    (surface-condition p65 verysmooth)
    (treatment p65 colourfragments)
    (goalsize p65 medium)
    (= (spray-varnish-cost p65) 10)
    (= (glaze-cost p65) 15)
    (= (grind-cost p65) 30)
    (= (plane-cost p65) 20)
    (unused p66)
    (goalsize p66 medium)
    (= (spray-varnish-cost p66) 10)
    (= (glaze-cost p66) 15)
    (= (grind-cost p66) 30)
    (= (plane-cost p66) 20)
    (available p67)
    (colour p67 white)
    (wood p67 cherry)
    (surface-condition p67 smooth)
    (treatment p67 glazed)
    (goalsize p67 large)
    (= (spray-varnish-cost p67) 15)
    (= (glaze-cost p67) 20)
    (= (grind-cost p67) 45)
    (= (plane-cost p67) 30)
    (unused p68)
    (goalsize p68 large)
    (= (spray-varnish-cost p68) 15)
    (= (glaze-cost p68) 20)
    (= (grind-cost p68) 45)
    (= (plane-cost p68) 30)
    (unused p69)
    (goalsize p69 small)
    (= (spray-varnish-cost p69) 5)
    (= (glaze-cost p69) 10)
    (= (grind-cost p69) 15)
    (= (plane-cost p69) 10)
    (available p70)
    (colour p70 red)
    (wood p70 mahogany)
    (surface-condition p70 rough)
    (treatment p70 varnished)
    (goalsize p70 medium)
    (= (spray-varnish-cost p70) 10)
    (= (glaze-cost p70) 15)
    (= (grind-cost p70) 30)
    (= (plane-cost p70) 20)
    (unused p71)
    (goalsize p71 large)
    (= (spray-varnish-cost p71) 15)
    (= (glaze-cost p71) 20)
    (= (grind-cost p71) 45)
    (= (plane-cost p71) 30)
    (unused p72)
    (goalsize p72 large)
    (= (spray-varnish-cost p72) 15)
    (= (glaze-cost p72) 20)
    (= (grind-cost p72) 45)
    (= (plane-cost p72) 30)
    (unused p73)
    (goalsize p73 small)
    (= (spray-varnish-cost p73) 5)
    (= (glaze-cost p73) 10)
    (= (grind-cost p73) 15)
    (= (plane-cost p73) 10)
    (unused p74)
    (goalsize p74 large)
    (= (spray-varnish-cost p74) 15)
    (= (glaze-cost p74) 20)
    (= (grind-cost p74) 45)
    (= (plane-cost p74) 30)
    (unused p75)
    (goalsize p75 small)
    (= (spray-varnish-cost p75) 5)
    (= (glaze-cost p75) 10)
    (= (grind-cost p75) 15)
    (= (plane-cost p75) 10)
    (unused p76)
    (goalsize p76 large)
    (= (spray-varnish-cost p76) 15)
    (= (glaze-cost p76) 20)
    (= (grind-cost p76) 45)
    (= (plane-cost p76) 30)
    (available p77)
    (colour p77 green)
    (wood p77 walnut)
    (surface-condition p77 rough)
    (treatment p77 glazed)
    (goalsize p77 medium)
    (= (spray-varnish-cost p77) 10)
    (= (glaze-cost p77) 15)
    (= (grind-cost p77) 30)
    (= (plane-cost p77) 20)
    (unused p78)
    (goalsize p78 medium)
    (= (spray-varnish-cost p78) 10)
    (= (glaze-cost p78) 15)
    (= (grind-cost p78) 30)
    (= (plane-cost p78) 20)
    (available p79)
    (colour p79 blue)
    (wood p79 walnut)
    (surface-condition p79 rough)
    (treatment p79 glazed)
    (goalsize p79 small)
    (= (spray-varnish-cost p79) 5)
    (= (glaze-cost p79) 10)
    (= (grind-cost p79) 15)
    (= (plane-cost p79) 10)
    (unused p80)
    (goalsize p80 large)
    (= (spray-varnish-cost p80) 15)
    (= (glaze-cost p80) 20)
    (= (grind-cost p80) 45)
    (= (plane-cost p80) 30)
    (unused p81)
    (goalsize p81 medium)
    (= (spray-varnish-cost p81) 10)
    (= (glaze-cost p81) 15)
    (= (grind-cost p81) 30)
    (= (plane-cost p81) 20)
    (unused p82)
    (goalsize p82 large)
    (= (spray-varnish-cost p82) 15)
    (= (glaze-cost p82) 20)
    (= (grind-cost p82) 45)
    (= (plane-cost p82) 30)
    (unused p83)
    (goalsize p83 large)
    (= (spray-varnish-cost p83) 15)
    (= (glaze-cost p83) 20)
    (= (grind-cost p83) 45)
    (= (plane-cost p83) 30)
    (unused p84)
    (goalsize p84 small)
    (= (spray-varnish-cost p84) 5)
    (= (glaze-cost p84) 10)
    (= (grind-cost p84) 15)
    (= (plane-cost p84) 10)
    (unused p85)
    (goalsize p85 large)
    (= (spray-varnish-cost p85) 15)
    (= (glaze-cost p85) 20)
    (= (grind-cost p85) 45)
    (= (plane-cost p85) 30)
    (unused p86)
    (goalsize p86 large)
    (= (spray-varnish-cost p86) 15)
    (= (glaze-cost p86) 20)
    (= (grind-cost p86) 45)
    (= (plane-cost p86) 30)
    (available p87)
    (colour p87 blue)
    (wood p87 beech)
    (surface-condition p87 smooth)
    (treatment p87 glazed)
    (goalsize p87 small)
    (= (spray-varnish-cost p87) 5)
    (= (glaze-cost p87) 10)
    (= (grind-cost p87) 15)
    (= (plane-cost p87) 10)
    (available p88)
    (colour p88 green)
    (wood p88 walnut)
    (surface-condition p88 verysmooth)
    (treatment p88 colourfragments)
    (goalsize p88 medium)
    (= (spray-varnish-cost p88) 10)
    (= (glaze-cost p88) 15)
    (= (grind-cost p88) 30)
    (= (plane-cost p88) 20)
    (boardsize b0 s6)
    (wood b0 cherry)
    (surface-condition b0 smooth)
    (available b0)
    (boardsize b1 s3)
    (wood b1 cherry)
    (surface-condition b1 rough)
    (available b1)
    (boardsize b2 s10)
    (wood b2 mahogany)
    (surface-condition b2 smooth)
    (available b2)
    (boardsize b3 s8)
    (wood b3 mahogany)
    (surface-condition b3 smooth)
    (available b3)
    (boardsize b4 s7)
    (wood b4 mahogany)
    (surface-condition b4 rough)
    (available b4)
    (boardsize b5 s5)
    (wood b5 mahogany)
    (surface-condition b5 smooth)
    (available b5)
    (boardsize b6 s8)
    (wood b6 oak)
    (surface-condition b6 rough)
    (available b6)
    (boardsize b7 s9)
    (wood b7 oak)
    (surface-condition b7 rough)
    (available b7)
    (boardsize b8 s6)
    (wood b8 oak)
    (surface-condition b8 rough)
    (available b8)
    (boardsize b9 s4)
    (wood b9 oak)
    (surface-condition b9 rough)
    (available b9)
    (boardsize b10 s7)
    (wood b10 pine)
    (surface-condition b10 rough)
    (available b10)
    (boardsize b11 s8)
    (wood b11 pine)
    (surface-condition b11 rough)
    (available b11)
    (boardsize b12 s7)
    (wood b12 pine)
    (surface-condition b12 rough)
    (available b12)
    (boardsize b13 s1)
    (wood b13 pine)
    (surface-condition b13 rough)
    (available b13)
    (boardsize b14 s8)
    (wood b14 walnut)
    (surface-condition b14 rough)
    (available b14)
    (boardsize b15 s6)
    (wood b15 walnut)
    (surface-condition b15 rough)
    (available b15)
    (boardsize b16 s8)
    (wood b16 walnut)
    (surface-condition b16 rough)
    (available b16)
    (boardsize b17 s10)
    (wood b17 walnut)
    (surface-condition b17 rough)
    (available b17)
    (boardsize b18 s9)
    (wood b18 walnut)
    (surface-condition b18 rough)
    (available b18)
    (boardsize b19 s10)
    (wood b19 teak)
    (surface-condition b19 rough)
    (available b19)
    (boardsize b20 s8)
    (wood b20 teak)
    (surface-condition b20 smooth)
    (available b20)
    (boardsize b21 s9)
    (wood b21 teak)
    (surface-condition b21 rough)
    (available b21)
    (boardsize b22 s5)
    (wood b22 beech)
    (surface-condition b22 rough)
    (available b22)
    (boardsize b23 s11)
    (wood b23 beech)
    (surface-condition b23 rough)
    (available b23)
    (boardsize b24 s7)
    (wood b24 beech)
    (surface-condition b24 rough)
    (available b24)
    (boardsize b25 s3)
    (wood b25 beech)
    (surface-condition b25 rough)
    (available b25)
  )
  (:goal
    (and
      (available p0)
      (wood p0 cherry)
      (treatment p0 varnished)
      (available p1)
      (colour p1 red)
      (wood p1 beech)
      (surface-condition p1 verysmooth)
      (treatment p1 varnished)
      (available p2)
      (colour p2 green)
      (surface-condition p2 verysmooth)
      (treatment p2 glazed)
      (available p3)
      (surface-condition p3 verysmooth)
      (treatment p3 varnished)
      (available p4)
      (colour p4 natural)
      (wood p4 pine)
      (surface-condition p4 smooth)
      (treatment p4 glazed)
      (available p5)
      (colour p5 black)
      (surface-condition p5 smooth)
      (available p6)
      (colour p6 black)
      (wood p6 walnut)
      (surface-condition p6 smooth)
      (treatment p6 glazed)
      (available p7)
      (colour p7 black)
      (treatment p7 varnished)
      (available p8)
      (wood p8 mahogany)
      (surface-condition p8 verysmooth)
      (treatment p8 varnished)
      (available p9)
      (wood p9 walnut)
      (surface-condition p9 verysmooth)
      (available p10)
      (colour p10 blue)
      (wood p10 walnut)
      (surface-condition p10 verysmooth)
      (treatment p10 varnished)
      (available p11)
      (colour p11 red)
      (wood p11 teak)
      (treatment p11 varnished)
      (available p12)
      (colour p12 mauve)
      (treatment p12 varnished)
      (available p13)
      (colour p13 mauve)
      (wood p13 beech)
      (surface-condition p13 smooth)
      (treatment p13 glazed)
      (available p14)
      (wood p14 mahogany)
      (treatment p14 glazed)
      (available p15)
      (colour p15 green)
      (surface-condition p15 smooth)
      (available p16)
      (colour p16 mauve)
      (wood p16 walnut)
      (available p17)
      (colour p17 green)
      (wood p17 beech)
      (available p18)
      (colour p18 blue)
      (wood p18 oak)
      (available p19)
      (wood p19 oak)
      (treatment p19 varnished)
      (available p20)
      (colour p20 green)
      (wood p20 beech)
      (surface-condition p20 verysmooth)
      (treatment p20 varnished)
      (available p21)
      (wood p21 pine)
      (surface-condition p21 smooth)
      (available p22)
      (colour p22 red)
      (surface-condition p22 smooth)
      (available p23)
      (wood p23 cherry)
      (surface-condition p23 smooth)
      (treatment p23 glazed)
      (available p24)
      (colour p24 natural)
      (wood p24 beech)
      (surface-condition p24 smooth)
      (treatment p24 glazed)
      (available p25)
      (colour p25 mauve)
      (wood p25 oak)
      (available p26)
      (colour p26 mauve)
      (wood p26 pine)
      (surface-condition p26 verysmooth)
      (treatment p26 varnished)
      (available p27)
      (wood p27 oak)
      (surface-condition p27 smooth)
      (available p28)
      (colour p28 white)
      (treatment p28 varnished)
      (available p29)
      (colour p29 red)
      (wood p29 pine)
      (available p30)
      (wood p30 walnut)
      (treatment p30 glazed)
      (available p31)
      (wood p31 pine)
      (treatment p31 glazed)
      (available p32)
      (colour p32 red)
      (wood p32 walnut)
      (available p33)
      (colour p33 green)
      (treatment p33 glazed)
      (available p34)
      (colour p34 mauve)
      (treatment p34 glazed)
      (available p35)
      (colour p35 black)
      (wood p35 beech)
      (surface-condition p35 smooth)
      (treatment p35 glazed)
      (available p36)
      (colour p36 red)
      (wood p36 oak)
      (surface-condition p36 smooth)
      (treatment p36 glazed)
      (available p37)
      (colour p37 black)
      (treatment p37 glazed)
      (available p38)
      (surface-condition p38 smooth)
      (treatment p38 varnished)
      (available p39)
      (colour p39 natural)
      (surface-condition p39 verysmooth)
      (available p40)
      (colour p40 natural)
      (surface-condition p40 smooth)
      (available p41)
      (colour p41 white)
      (surface-condition p41 smooth)
      (treatment p41 varnished)
      (available p42)
      (colour p42 blue)
      (treatment p42 glazed)
      (available p43)
      (colour p43 black)
      (wood p43 teak)
      (surface-condition p43 verysmooth)
      (treatment p43 glazed)
      (available p44)
      (colour p44 green)
      (wood p44 walnut)
      (surface-condition p44 verysmooth)
      (treatment p44 varnished)
      (available p45)
      (colour p45 white)
      (wood p45 oak)
      (available p46)
      (colour p46 white)
      (treatment p46 glazed)
      (available p47)
      (surface-condition p47 verysmooth)
      (treatment p47 varnished)
      (available p48)
      (colour p48 green)
      (surface-condition p48 verysmooth)
      (treatment p48 varnished)
      (available p49)
      (wood p49 pine)
      (treatment p49 varnished)
      (available p50)
      (colour p50 black)
      (treatment p50 varnished)
      (available p51)
      (surface-condition p51 verysmooth)
      (treatment p51 varnished)
      (available p52)
      (colour p52 mauve)
      (surface-condition p52 smooth)
      (available p53)
      (colour p53 natural)
      (treatment p53 glazed)
      (available p54)
      (colour p54 natural)
      (wood p54 beech)
      (available p55)
      (surface-condition p55 smooth)
      (treatment p55 varnished)
      (available p56)
      (colour p56 green)
      (wood p56 walnut)
      (available p57)
      (wood p57 cherry)
      (surface-condition p57 verysmooth)
      (available p58)
      (colour p58 blue)
      (surface-condition p58 smooth)
      (available p59)
      (colour p59 red)
      (wood p59 pine)
      (available p60)
      (colour p60 red)
      (treatment p60 varnished)
      (available p61)
      (wood p61 pine)
      (surface-condition p61 verysmooth)
      (available p62)
      (colour p62 natural)
      (wood p62 teak)
      (surface-condition p62 smooth)
      (treatment p62 glazed)
      (available p63)
      (wood p63 mahogany)
      (surface-condition p63 smooth)
      (available p64)
      (colour p64 white)
      (surface-condition p64 verysmooth)
      (available p65)
      (wood p65 teak)
      (surface-condition p65 verysmooth)
      (treatment p65 varnished)
      (available p66)
      (wood p66 beech)
      (surface-condition p66 smooth)
      (available p67)
      (colour p67 red)
      (wood p67 cherry)
      (treatment p67 varnished)
      (available p68)
      (colour p68 white)
      (surface-condition p68 verysmooth)
      (treatment p68 glazed)
      (available p69)
      (colour p69 white)
      (wood p69 walnut)
      (surface-condition p69 smooth)
      (treatment p69 glazed)
      (available p70)
      (wood p70 mahogany)
      (surface-condition p70 verysmooth)
      (available p71)
      (colour p71 white)
      (wood p71 pine)
      (available p72)
      (colour p72 natural)
      (wood p72 walnut)
      (surface-condition p72 verysmooth)
      (treatment p72 varnished)
      (available p73)
      (colour p73 red)
      (wood p73 beech)
      (surface-condition p73 smooth)
      (treatment p73 varnished)
      (available p74)
      (wood p74 teak)
      (surface-condition p74 verysmooth)
      (available p75)
      (surface-condition p75 verysmooth)
      (treatment p75 glazed)
      (available p76)
      (surface-condition p76 smooth)
      (treatment p76 varnished)
      (available p77)
      (surface-condition p77 verysmooth)
      (treatment p77 varnished)
      (available p78)
      (colour p78 blue)
      (surface-condition p78 smooth)
      (available p79)
      (colour p79 natural)
      (wood p79 walnut)
      (surface-condition p79 verysmooth)
      (available p80)
      (wood p80 oak)
      (treatment p80 varnished)
      (available p81)
      (colour p81 natural)
      (treatment p81 glazed)
      (available p82)
      (wood p82 teak)
      (surface-condition p82 smooth)
      (available p83)
      (colour p83 black)
      (wood p83 mahogany)
      (surface-condition p83 smooth)
      (treatment p83 varnished)
      (available p84)
      (wood p84 oak)
      (surface-condition p84 smooth)
      (available p85)
      (colour p85 mauve)
      (surface-condition p85 verysmooth)
      (available p86)
      (surface-condition p86 verysmooth)
      (treatment p86 glazed)
      (available p87)
      (surface-condition p87 smooth)
      (treatment p87 varnished)
      (available p88)
      (colour p88 black)
      (wood p88 walnut)
    )
  )
  (:metric minimize (total-cost))
)
