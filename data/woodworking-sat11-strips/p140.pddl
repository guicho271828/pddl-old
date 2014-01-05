; woodworking task with 107 parts and 140% wood
; Machines:
;   3 grinder
;   3 glazer
;   3 immersion-varnisher
;   3 planer
;   3 highspeed-saw
;   3 spray-varnisher
;   3 saw
; random seed: 619217

(define (problem wood-prob-sat-140)
  (:domain woodworking)
  (:objects
    grinder0 grinder1 grinder2 - grinder
    glazer0 glazer1 glazer2 - glazer
    immersion-varnisher0 immersion-varnisher1 immersion-varnisher2 - immersion-varnisher
    planer0 planer1 planer2 - planer
    highspeed-saw0 highspeed-saw1 highspeed-saw2 - highspeed-saw
    spray-varnisher0 spray-varnisher1 spray-varnisher2 - spray-varnisher
    saw0 saw1 saw2 - saw
    white blue black mauve green red - acolour
    cherry oak beech teak mahogany walnut pine - awood
    p0 p1 p2 p3 p4 p5 p6 p7 p8 p9 p10 p11 p12 p13 p14 p15 p16 p17 p18 p19 p20 p21 p22 p23 p24 p25 p26 p27 p28 p29 p30 p31 p32 p33 p34 p35 p36 p37 p38 p39 p40 p41 p42 p43 p44 p45 p46 p47 p48 p49 p50 p51 p52 p53 p54 p55 p56 p57 p58 p59 p60 p61 p62 p63 p64 p65 p66 p67 p68 p69 p70 p71 p72 p73 p74 p75 p76 p77 p78 p79 p80 p81 p82 p83 p84 p85 p86 p87 p88 p89 p90 p91 p92 p93 p94 p95 p96 p97 p98 p99 p100 p101 p102 p103 p104 p105 p106 - part
    b0 b1 b2 b3 b4 b5 b6 b7 b8 b9 b10 b11 b12 b13 b14 b15 b16 b17 b18 b19 b20 b21 b22 b23 b24 b25 b26 b27 b28 b29 b30 b31 - board
    s0 s1 s2 s3 s4 s5 s6 s7 s8 s9 s10 s11 s12 - aboardsize
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
    (boardsize-successor s11 s12)
    (has-colour glazer0 blue)
    (has-colour glazer0 natural)
    (has-colour glazer0 mauve)
    (has-colour glazer0 green)
    (has-colour glazer0 white)
    (has-colour glazer0 red)
    (has-colour glazer1 blue)
    (has-colour glazer1 mauve)
    (has-colour glazer1 white)
    (has-colour glazer1 natural)
    (has-colour glazer1 red)
    (has-colour glazer2 green)
    (has-colour glazer2 white)
    (has-colour glazer2 natural)
    (has-colour glazer2 black)
    (has-colour immersion-varnisher0 blue)
    (has-colour immersion-varnisher0 black)
    (has-colour immersion-varnisher0 natural)
    (has-colour immersion-varnisher0 red)
    (has-colour immersion-varnisher1 blue)
    (has-colour immersion-varnisher1 natural)
    (has-colour immersion-varnisher1 mauve)
    (has-colour immersion-varnisher1 green)
    (has-colour immersion-varnisher1 black)
    (has-colour immersion-varnisher1 white)
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
    (has-colour spray-varnisher0 natural)
    (has-colour spray-varnisher0 mauve)
    (has-colour spray-varnisher0 green)
    (has-colour spray-varnisher0 black)
    (has-colour spray-varnisher0 red)
    (has-colour spray-varnisher1 blue)
    (has-colour spray-varnisher1 green)
    (has-colour spray-varnisher1 white)
    (has-colour spray-varnisher1 natural)
    (has-colour spray-varnisher1 red)
    (has-colour spray-varnisher2 natural)
    (has-colour spray-varnisher2 mauve)
    (has-colour spray-varnisher2 green)
    (has-colour spray-varnisher2 black)
    (has-colour spray-varnisher2 white)
    (has-colour spray-varnisher2 red)
    (unused p0)
    (goalsize p0 medium)
    (= (spray-varnish-cost p0) 10)
    (= (glaze-cost p0) 15)
    (= (grind-cost p0) 30)
    (= (plane-cost p0) 20)
    (unused p1)
    (goalsize p1 medium)
    (= (spray-varnish-cost p1) 10)
    (= (glaze-cost p1) 15)
    (= (grind-cost p1) 30)
    (= (plane-cost p1) 20)
    (unused p2)
    (goalsize p2 medium)
    (= (spray-varnish-cost p2) 10)
    (= (glaze-cost p2) 15)
    (= (grind-cost p2) 30)
    (= (plane-cost p2) 20)
    (unused p3)
    (goalsize p3 small)
    (= (spray-varnish-cost p3) 5)
    (= (glaze-cost p3) 10)
    (= (grind-cost p3) 15)
    (= (plane-cost p3) 10)
    (unused p4)
    (goalsize p4 medium)
    (= (spray-varnish-cost p4) 10)
    (= (glaze-cost p4) 15)
    (= (grind-cost p4) 30)
    (= (plane-cost p4) 20)
    (unused p5)
    (goalsize p5 large)
    (= (spray-varnish-cost p5) 15)
    (= (glaze-cost p5) 20)
    (= (grind-cost p5) 45)
    (= (plane-cost p5) 30)
    (unused p6)
    (goalsize p6 large)
    (= (spray-varnish-cost p6) 15)
    (= (glaze-cost p6) 20)
    (= (grind-cost p6) 45)
    (= (plane-cost p6) 30)
    (unused p7)
    (goalsize p7 medium)
    (= (spray-varnish-cost p7) 10)
    (= (glaze-cost p7) 15)
    (= (grind-cost p7) 30)
    (= (plane-cost p7) 20)
    (available p8)
    (colour p8 blue)
    (wood p8 oak)
    (surface-condition p8 rough)
    (treatment p8 colourfragments)
    (goalsize p8 large)
    (= (spray-varnish-cost p8) 15)
    (= (glaze-cost p8) 20)
    (= (grind-cost p8) 45)
    (= (plane-cost p8) 30)
    (unused p9)
    (goalsize p9 small)
    (= (spray-varnish-cost p9) 5)
    (= (glaze-cost p9) 10)
    (= (grind-cost p9) 15)
    (= (plane-cost p9) 10)
    (available p10)
    (colour p10 mauve)
    (wood p10 mahogany)
    (surface-condition p10 rough)
    (treatment p10 varnished)
    (goalsize p10 medium)
    (= (spray-varnish-cost p10) 10)
    (= (glaze-cost p10) 15)
    (= (grind-cost p10) 30)
    (= (plane-cost p10) 20)
    (unused p11)
    (goalsize p11 large)
    (= (spray-varnish-cost p11) 15)
    (= (glaze-cost p11) 20)
    (= (grind-cost p11) 45)
    (= (plane-cost p11) 30)
    (available p12)
    (colour p12 red)
    (wood p12 pine)
    (surface-condition p12 verysmooth)
    (treatment p12 varnished)
    (goalsize p12 small)
    (= (spray-varnish-cost p12) 5)
    (= (glaze-cost p12) 10)
    (= (grind-cost p12) 15)
    (= (plane-cost p12) 10)
    (available p13)
    (colour p13 blue)
    (wood p13 mahogany)
    (surface-condition p13 rough)
    (treatment p13 glazed)
    (goalsize p13 small)
    (= (spray-varnish-cost p13) 5)
    (= (glaze-cost p13) 10)
    (= (grind-cost p13) 15)
    (= (plane-cost p13) 10)
    (unused p14)
    (goalsize p14 medium)
    (= (spray-varnish-cost p14) 10)
    (= (glaze-cost p14) 15)
    (= (grind-cost p14) 30)
    (= (plane-cost p14) 20)
    (available p15)
    (colour p15 black)
    (wood p15 beech)
    (surface-condition p15 smooth)
    (treatment p15 varnished)
    (goalsize p15 large)
    (= (spray-varnish-cost p15) 15)
    (= (glaze-cost p15) 20)
    (= (grind-cost p15) 45)
    (= (plane-cost p15) 30)
    (unused p16)
    (goalsize p16 small)
    (= (spray-varnish-cost p16) 5)
    (= (glaze-cost p16) 10)
    (= (grind-cost p16) 15)
    (= (plane-cost p16) 10)
    (unused p17)
    (goalsize p17 large)
    (= (spray-varnish-cost p17) 15)
    (= (glaze-cost p17) 20)
    (= (grind-cost p17) 45)
    (= (plane-cost p17) 30)
    (unused p18)
    (goalsize p18 medium)
    (= (spray-varnish-cost p18) 10)
    (= (glaze-cost p18) 15)
    (= (grind-cost p18) 30)
    (= (plane-cost p18) 20)
    (unused p19)
    (goalsize p19 large)
    (= (spray-varnish-cost p19) 15)
    (= (glaze-cost p19) 20)
    (= (grind-cost p19) 45)
    (= (plane-cost p19) 30)
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
    (available p25)
    (colour p25 natural)
    (wood p25 cherry)
    (surface-condition p25 verysmooth)
    (treatment p25 varnished)
    (goalsize p25 small)
    (= (spray-varnish-cost p25) 5)
    (= (glaze-cost p25) 10)
    (= (grind-cost p25) 15)
    (= (plane-cost p25) 10)
    (available p26)
    (colour p26 natural)
    (wood p26 beech)
    (surface-condition p26 rough)
    (treatment p26 glazed)
    (goalsize p26 medium)
    (= (spray-varnish-cost p26) 10)
    (= (glaze-cost p26) 15)
    (= (grind-cost p26) 30)
    (= (plane-cost p26) 20)
    (unused p27)
    (goalsize p27 medium)
    (= (spray-varnish-cost p27) 10)
    (= (glaze-cost p27) 15)
    (= (grind-cost p27) 30)
    (= (plane-cost p27) 20)
    (unused p28)
    (goalsize p28 medium)
    (= (spray-varnish-cost p28) 10)
    (= (glaze-cost p28) 15)
    (= (grind-cost p28) 30)
    (= (plane-cost p28) 20)
    (unused p29)
    (goalsize p29 large)
    (= (spray-varnish-cost p29) 15)
    (= (glaze-cost p29) 20)
    (= (grind-cost p29) 45)
    (= (plane-cost p29) 30)
    (available p30)
    (colour p30 black)
    (wood p30 beech)
    (surface-condition p30 rough)
    (treatment p30 colourfragments)
    (goalsize p30 medium)
    (= (spray-varnish-cost p30) 10)
    (= (glaze-cost p30) 15)
    (= (grind-cost p30) 30)
    (= (plane-cost p30) 20)
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
    (unused p33)
    (goalsize p33 large)
    (= (spray-varnish-cost p33) 15)
    (= (glaze-cost p33) 20)
    (= (grind-cost p33) 45)
    (= (plane-cost p33) 30)
    (unused p34)
    (goalsize p34 large)
    (= (spray-varnish-cost p34) 15)
    (= (glaze-cost p34) 20)
    (= (grind-cost p34) 45)
    (= (plane-cost p34) 30)
    (unused p35)
    (goalsize p35 small)
    (= (spray-varnish-cost p35) 5)
    (= (glaze-cost p35) 10)
    (= (grind-cost p35) 15)
    (= (plane-cost p35) 10)
    (available p36)
    (colour p36 red)
    (wood p36 beech)
    (surface-condition p36 rough)
    (treatment p36 varnished)
    (goalsize p36 large)
    (= (spray-varnish-cost p36) 15)
    (= (glaze-cost p36) 20)
    (= (grind-cost p36) 45)
    (= (plane-cost p36) 30)
    (unused p37)
    (goalsize p37 large)
    (= (spray-varnish-cost p37) 15)
    (= (glaze-cost p37) 20)
    (= (grind-cost p37) 45)
    (= (plane-cost p37) 30)
    (unused p38)
    (goalsize p38 medium)
    (= (spray-varnish-cost p38) 10)
    (= (glaze-cost p38) 15)
    (= (grind-cost p38) 30)
    (= (plane-cost p38) 20)
    (available p39)
    (colour p39 white)
    (wood p39 cherry)
    (surface-condition p39 rough)
    (treatment p39 glazed)
    (goalsize p39 medium)
    (= (spray-varnish-cost p39) 10)
    (= (glaze-cost p39) 15)
    (= (grind-cost p39) 30)
    (= (plane-cost p39) 20)
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
    (goalsize p42 medium)
    (= (spray-varnish-cost p42) 10)
    (= (glaze-cost p42) 15)
    (= (grind-cost p42) 30)
    (= (plane-cost p42) 20)
    (unused p43)
    (goalsize p43 small)
    (= (spray-varnish-cost p43) 5)
    (= (glaze-cost p43) 10)
    (= (grind-cost p43) 15)
    (= (plane-cost p43) 10)
    (available p44)
    (colour p44 white)
    (wood p44 cherry)
    (surface-condition p44 rough)
    (treatment p44 colourfragments)
    (goalsize p44 small)
    (= (spray-varnish-cost p44) 5)
    (= (glaze-cost p44) 10)
    (= (grind-cost p44) 15)
    (= (plane-cost p44) 10)
    (unused p45)
    (goalsize p45 medium)
    (= (spray-varnish-cost p45) 10)
    (= (glaze-cost p45) 15)
    (= (grind-cost p45) 30)
    (= (plane-cost p45) 20)
    (available p46)
    (colour p46 white)
    (wood p46 walnut)
    (surface-condition p46 verysmooth)
    (treatment p46 colourfragments)
    (goalsize p46 medium)
    (= (spray-varnish-cost p46) 10)
    (= (glaze-cost p46) 15)
    (= (grind-cost p46) 30)
    (= (plane-cost p46) 20)
    (unused p47)
    (goalsize p47 medium)
    (= (spray-varnish-cost p47) 10)
    (= (glaze-cost p47) 15)
    (= (grind-cost p47) 30)
    (= (plane-cost p47) 20)
    (unused p48)
    (goalsize p48 large)
    (= (spray-varnish-cost p48) 15)
    (= (glaze-cost p48) 20)
    (= (grind-cost p48) 45)
    (= (plane-cost p48) 30)
    (available p49)
    (colour p49 white)
    (wood p49 teak)
    (surface-condition p49 smooth)
    (treatment p49 glazed)
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
    (goalsize p51 large)
    (= (spray-varnish-cost p51) 15)
    (= (glaze-cost p51) 20)
    (= (grind-cost p51) 45)
    (= (plane-cost p51) 30)
    (available p52)
    (colour p52 red)
    (wood p52 cherry)
    (surface-condition p52 rough)
    (treatment p52 colourfragments)
    (goalsize p52 large)
    (= (spray-varnish-cost p52) 15)
    (= (glaze-cost p52) 20)
    (= (grind-cost p52) 45)
    (= (plane-cost p52) 30)
    (unused p53)
    (goalsize p53 medium)
    (= (spray-varnish-cost p53) 10)
    (= (glaze-cost p53) 15)
    (= (grind-cost p53) 30)
    (= (plane-cost p53) 20)
    (unused p54)
    (goalsize p54 small)
    (= (spray-varnish-cost p54) 5)
    (= (glaze-cost p54) 10)
    (= (grind-cost p54) 15)
    (= (plane-cost p54) 10)
    (unused p55)
    (goalsize p55 large)
    (= (spray-varnish-cost p55) 15)
    (= (glaze-cost p55) 20)
    (= (grind-cost p55) 45)
    (= (plane-cost p55) 30)
    (unused p56)
    (goalsize p56 small)
    (= (spray-varnish-cost p56) 5)
    (= (glaze-cost p56) 10)
    (= (grind-cost p56) 15)
    (= (plane-cost p56) 10)
    (unused p57)
    (goalsize p57 small)
    (= (spray-varnish-cost p57) 5)
    (= (glaze-cost p57) 10)
    (= (grind-cost p57) 15)
    (= (plane-cost p57) 10)
    (unused p58)
    (goalsize p58 medium)
    (= (spray-varnish-cost p58) 10)
    (= (glaze-cost p58) 15)
    (= (grind-cost p58) 30)
    (= (plane-cost p58) 20)
    (unused p59)
    (goalsize p59 medium)
    (= (spray-varnish-cost p59) 10)
    (= (glaze-cost p59) 15)
    (= (grind-cost p59) 30)
    (= (plane-cost p59) 20)
    (available p60)
    (colour p60 black)
    (wood p60 mahogany)
    (surface-condition p60 rough)
    (treatment p60 colourfragments)
    (goalsize p60 large)
    (= (spray-varnish-cost p60) 15)
    (= (glaze-cost p60) 20)
    (= (grind-cost p60) 45)
    (= (plane-cost p60) 30)
    (unused p61)
    (goalsize p61 large)
    (= (spray-varnish-cost p61) 15)
    (= (glaze-cost p61) 20)
    (= (grind-cost p61) 45)
    (= (plane-cost p61) 30)
    (unused p62)
    (goalsize p62 small)
    (= (spray-varnish-cost p62) 5)
    (= (glaze-cost p62) 10)
    (= (grind-cost p62) 15)
    (= (plane-cost p62) 10)
    (available p63)
    (colour p63 mauve)
    (wood p63 oak)
    (surface-condition p63 verysmooth)
    (treatment p63 varnished)
    (goalsize p63 small)
    (= (spray-varnish-cost p63) 5)
    (= (glaze-cost p63) 10)
    (= (grind-cost p63) 15)
    (= (plane-cost p63) 10)
    (unused p64)
    (goalsize p64 medium)
    (= (spray-varnish-cost p64) 10)
    (= (glaze-cost p64) 15)
    (= (grind-cost p64) 30)
    (= (plane-cost p64) 20)
    (unused p65)
    (goalsize p65 medium)
    (= (spray-varnish-cost p65) 10)
    (= (glaze-cost p65) 15)
    (= (grind-cost p65) 30)
    (= (plane-cost p65) 20)
    (unused p66)
    (goalsize p66 small)
    (= (spray-varnish-cost p66) 5)
    (= (glaze-cost p66) 10)
    (= (grind-cost p66) 15)
    (= (plane-cost p66) 10)
    (unused p67)
    (goalsize p67 large)
    (= (spray-varnish-cost p67) 15)
    (= (glaze-cost p67) 20)
    (= (grind-cost p67) 45)
    (= (plane-cost p67) 30)
    (unused p68)
    (goalsize p68 medium)
    (= (spray-varnish-cost p68) 10)
    (= (glaze-cost p68) 15)
    (= (grind-cost p68) 30)
    (= (plane-cost p68) 20)
    (available p69)
    (colour p69 mauve)
    (wood p69 walnut)
    (surface-condition p69 verysmooth)
    (treatment p69 varnished)
    (goalsize p69 large)
    (= (spray-varnish-cost p69) 15)
    (= (glaze-cost p69) 20)
    (= (grind-cost p69) 45)
    (= (plane-cost p69) 30)
    (available p70)
    (colour p70 green)
    (wood p70 oak)
    (surface-condition p70 verysmooth)
    (treatment p70 glazed)
    (goalsize p70 large)
    (= (spray-varnish-cost p70) 15)
    (= (glaze-cost p70) 20)
    (= (grind-cost p70) 45)
    (= (plane-cost p70) 30)
    (unused p71)
    (goalsize p71 medium)
    (= (spray-varnish-cost p71) 10)
    (= (glaze-cost p71) 15)
    (= (grind-cost p71) 30)
    (= (plane-cost p71) 20)
    (unused p72)
    (goalsize p72 large)
    (= (spray-varnish-cost p72) 15)
    (= (glaze-cost p72) 20)
    (= (grind-cost p72) 45)
    (= (plane-cost p72) 30)
    (available p73)
    (colour p73 green)
    (wood p73 walnut)
    (surface-condition p73 smooth)
    (treatment p73 glazed)
    (goalsize p73 large)
    (= (spray-varnish-cost p73) 15)
    (= (glaze-cost p73) 20)
    (= (grind-cost p73) 45)
    (= (plane-cost p73) 30)
    (unused p74)
    (goalsize p74 medium)
    (= (spray-varnish-cost p74) 10)
    (= (glaze-cost p74) 15)
    (= (grind-cost p74) 30)
    (= (plane-cost p74) 20)
    (unused p75)
    (goalsize p75 medium)
    (= (spray-varnish-cost p75) 10)
    (= (glaze-cost p75) 15)
    (= (grind-cost p75) 30)
    (= (plane-cost p75) 20)
    (available p76)
    (colour p76 mauve)
    (wood p76 cherry)
    (surface-condition p76 smooth)
    (treatment p76 glazed)
    (goalsize p76 medium)
    (= (spray-varnish-cost p76) 10)
    (= (glaze-cost p76) 15)
    (= (grind-cost p76) 30)
    (= (plane-cost p76) 20)
    (unused p77)
    (goalsize p77 large)
    (= (spray-varnish-cost p77) 15)
    (= (glaze-cost p77) 20)
    (= (grind-cost p77) 45)
    (= (plane-cost p77) 30)
    (unused p78)
    (goalsize p78 large)
    (= (spray-varnish-cost p78) 15)
    (= (glaze-cost p78) 20)
    (= (grind-cost p78) 45)
    (= (plane-cost p78) 30)
    (unused p79)
    (goalsize p79 large)
    (= (spray-varnish-cost p79) 15)
    (= (glaze-cost p79) 20)
    (= (grind-cost p79) 45)
    (= (plane-cost p79) 30)
    (unused p80)
    (goalsize p80 large)
    (= (spray-varnish-cost p80) 15)
    (= (glaze-cost p80) 20)
    (= (grind-cost p80) 45)
    (= (plane-cost p80) 30)
    (unused p81)
    (goalsize p81 small)
    (= (spray-varnish-cost p81) 5)
    (= (glaze-cost p81) 10)
    (= (grind-cost p81) 15)
    (= (plane-cost p81) 10)
    (available p82)
    (colour p82 blue)
    (wood p82 beech)
    (surface-condition p82 verysmooth)
    (treatment p82 colourfragments)
    (goalsize p82 medium)
    (= (spray-varnish-cost p82) 10)
    (= (glaze-cost p82) 15)
    (= (grind-cost p82) 30)
    (= (plane-cost p82) 20)
    (unused p83)
    (goalsize p83 small)
    (= (spray-varnish-cost p83) 5)
    (= (glaze-cost p83) 10)
    (= (grind-cost p83) 15)
    (= (plane-cost p83) 10)
    (unused p84)
    (goalsize p84 small)
    (= (spray-varnish-cost p84) 5)
    (= (glaze-cost p84) 10)
    (= (grind-cost p84) 15)
    (= (plane-cost p84) 10)
    (unused p85)
    (goalsize p85 small)
    (= (spray-varnish-cost p85) 5)
    (= (glaze-cost p85) 10)
    (= (grind-cost p85) 15)
    (= (plane-cost p85) 10)
    (unused p86)
    (goalsize p86 small)
    (= (spray-varnish-cost p86) 5)
    (= (glaze-cost p86) 10)
    (= (grind-cost p86) 15)
    (= (plane-cost p86) 10)
    (unused p87)
    (goalsize p87 medium)
    (= (spray-varnish-cost p87) 10)
    (= (glaze-cost p87) 15)
    (= (grind-cost p87) 30)
    (= (plane-cost p87) 20)
    (available p88)
    (colour p88 white)
    (wood p88 beech)
    (surface-condition p88 rough)
    (treatment p88 varnished)
    (goalsize p88 small)
    (= (spray-varnish-cost p88) 5)
    (= (glaze-cost p88) 10)
    (= (grind-cost p88) 15)
    (= (plane-cost p88) 10)
    (unused p89)
    (goalsize p89 medium)
    (= (spray-varnish-cost p89) 10)
    (= (glaze-cost p89) 15)
    (= (grind-cost p89) 30)
    (= (plane-cost p89) 20)
    (unused p90)
    (goalsize p90 medium)
    (= (spray-varnish-cost p90) 10)
    (= (glaze-cost p90) 15)
    (= (grind-cost p90) 30)
    (= (plane-cost p90) 20)
    (available p91)
    (colour p91 black)
    (wood p91 oak)
    (surface-condition p91 smooth)
    (treatment p91 colourfragments)
    (goalsize p91 large)
    (= (spray-varnish-cost p91) 15)
    (= (glaze-cost p91) 20)
    (= (grind-cost p91) 45)
    (= (plane-cost p91) 30)
    (unused p92)
    (goalsize p92 small)
    (= (spray-varnish-cost p92) 5)
    (= (glaze-cost p92) 10)
    (= (grind-cost p92) 15)
    (= (plane-cost p92) 10)
    (unused p93)
    (goalsize p93 medium)
    (= (spray-varnish-cost p93) 10)
    (= (glaze-cost p93) 15)
    (= (grind-cost p93) 30)
    (= (plane-cost p93) 20)
    (unused p94)
    (goalsize p94 medium)
    (= (spray-varnish-cost p94) 10)
    (= (glaze-cost p94) 15)
    (= (grind-cost p94) 30)
    (= (plane-cost p94) 20)
    (unused p95)
    (goalsize p95 large)
    (= (spray-varnish-cost p95) 15)
    (= (glaze-cost p95) 20)
    (= (grind-cost p95) 45)
    (= (plane-cost p95) 30)
    (available p96)
    (colour p96 mauve)
    (wood p96 oak)
    (surface-condition p96 smooth)
    (treatment p96 varnished)
    (goalsize p96 small)
    (= (spray-varnish-cost p96) 5)
    (= (glaze-cost p96) 10)
    (= (grind-cost p96) 15)
    (= (plane-cost p96) 10)
    (unused p97)
    (goalsize p97 small)
    (= (spray-varnish-cost p97) 5)
    (= (glaze-cost p97) 10)
    (= (grind-cost p97) 15)
    (= (plane-cost p97) 10)
    (unused p98)
    (goalsize p98 small)
    (= (spray-varnish-cost p98) 5)
    (= (glaze-cost p98) 10)
    (= (grind-cost p98) 15)
    (= (plane-cost p98) 10)
    (unused p99)
    (goalsize p99 medium)
    (= (spray-varnish-cost p99) 10)
    (= (glaze-cost p99) 15)
    (= (grind-cost p99) 30)
    (= (plane-cost p99) 20)
    (unused p100)
    (goalsize p100 large)
    (= (spray-varnish-cost p100) 15)
    (= (glaze-cost p100) 20)
    (= (grind-cost p100) 45)
    (= (plane-cost p100) 30)
    (unused p101)
    (goalsize p101 small)
    (= (spray-varnish-cost p101) 5)
    (= (glaze-cost p101) 10)
    (= (grind-cost p101) 15)
    (= (plane-cost p101) 10)
    (unused p102)
    (goalsize p102 medium)
    (= (spray-varnish-cost p102) 10)
    (= (glaze-cost p102) 15)
    (= (grind-cost p102) 30)
    (= (plane-cost p102) 20)
    (unused p103)
    (goalsize p103 medium)
    (= (spray-varnish-cost p103) 10)
    (= (glaze-cost p103) 15)
    (= (grind-cost p103) 30)
    (= (plane-cost p103) 20)
    (unused p104)
    (goalsize p104 small)
    (= (spray-varnish-cost p104) 5)
    (= (glaze-cost p104) 10)
    (= (grind-cost p104) 15)
    (= (plane-cost p104) 10)
    (unused p105)
    (goalsize p105 small)
    (= (spray-varnish-cost p105) 5)
    (= (glaze-cost p105) 10)
    (= (grind-cost p105) 15)
    (= (plane-cost p105) 10)
    (unused p106)
    (goalsize p106 small)
    (= (spray-varnish-cost p106) 5)
    (= (glaze-cost p106) 10)
    (= (grind-cost p106) 15)
    (= (plane-cost p106) 10)
    (boardsize b0 s8)
    (wood b0 cherry)
    (surface-condition b0 rough)
    (available b0)
    (boardsize b1 s8)
    (wood b1 cherry)
    (surface-condition b1 rough)
    (available b1)
    (boardsize b2 s7)
    (wood b2 mahogany)
    (surface-condition b2 rough)
    (available b2)
    (boardsize b3 s10)
    (wood b3 mahogany)
    (surface-condition b3 rough)
    (available b3)
    (boardsize b4 s8)
    (wood b4 mahogany)
    (surface-condition b4 rough)
    (available b4)
    (boardsize b5 s7)
    (wood b5 mahogany)
    (surface-condition b5 rough)
    (available b5)
    (boardsize b6 s7)
    (wood b6 mahogany)
    (surface-condition b6 rough)
    (available b6)
    (boardsize b7 s5)
    (wood b7 mahogany)
    (surface-condition b7 rough)
    (available b7)
    (boardsize b8 s8)
    (wood b8 oak)
    (surface-condition b8 rough)
    (available b8)
    (boardsize b9 s6)
    (wood b9 oak)
    (surface-condition b9 rough)
    (available b9)
    (boardsize b10 s9)
    (wood b10 oak)
    (surface-condition b10 rough)
    (available b10)
    (boardsize b11 s1)
    (wood b11 oak)
    (surface-condition b11 rough)
    (available b11)
    (boardsize b12 s7)
    (wood b12 pine)
    (surface-condition b12 rough)
    (available b12)
    (boardsize b13 s5)
    (wood b13 pine)
    (surface-condition b13 rough)
    (available b13)
    (boardsize b14 s10)
    (wood b14 pine)
    (surface-condition b14 smooth)
    (available b14)
    (boardsize b15 s9)
    (wood b15 pine)
    (surface-condition b15 rough)
    (available b15)
    (boardsize b16 s11)
    (wood b16 pine)
    (surface-condition b16 smooth)
    (available b16)
    (boardsize b17 s6)
    (wood b17 pine)
    (surface-condition b17 smooth)
    (available b17)
    (boardsize b18 s3)
    (wood b18 pine)
    (surface-condition b18 rough)
    (available b18)
    (boardsize b19 s8)
    (wood b19 walnut)
    (surface-condition b19 rough)
    (available b19)
    (boardsize b20 s7)
    (wood b20 walnut)
    (surface-condition b20 smooth)
    (available b20)
    (boardsize b21 s12)
    (wood b21 walnut)
    (surface-condition b21 rough)
    (available b21)
    (boardsize b22 s7)
    (wood b22 walnut)
    (surface-condition b22 smooth)
    (available b22)
    (boardsize b23 s8)
    (wood b23 teak)
    (surface-condition b23 smooth)
    (available b23)
    (boardsize b24 s7)
    (wood b24 teak)
    (surface-condition b24 rough)
    (available b24)
    (boardsize b25 s5)
    (wood b25 teak)
    (surface-condition b25 rough)
    (available b25)
    (boardsize b26 s7)
    (wood b26 teak)
    (surface-condition b26 rough)
    (available b26)
    (boardsize b27 s8)
    (wood b27 teak)
    (surface-condition b27 rough)
    (available b27)
    (boardsize b28 s3)
    (wood b28 teak)
    (surface-condition b28 rough)
    (available b28)
    (boardsize b29 s10)
    (wood b29 beech)
    (surface-condition b29 rough)
    (available b29)
    (boardsize b30 s9)
    (wood b30 beech)
    (surface-condition b30 rough)
    (available b30)
    (boardsize b31 s2)
    (wood b31 beech)
    (surface-condition b31 rough)
    (available b31)
  )
  (:goal
    (and
      (available p0)
      (wood p0 oak)
      (treatment p0 glazed)
      (available p1)
      (colour p1 black)
      (wood p1 beech)
      (surface-condition p1 verysmooth)
      (treatment p1 varnished)
      (available p2)
      (colour p2 mauve)
      (wood p2 mahogany)
      (surface-condition p2 verysmooth)
      (treatment p2 varnished)
      (available p3)
      (colour p3 white)
      (wood p3 pine)
      (surface-condition p3 verysmooth)
      (treatment p3 glazed)
      (available p4)
      (colour p4 mauve)
      (wood p4 teak)
      (surface-condition p4 verysmooth)
      (treatment p4 varnished)
      (available p5)
      (wood p5 beech)
      (treatment p5 varnished)
      (available p6)
      (surface-condition p6 verysmooth)
      (treatment p6 glazed)
      (available p7)
      (wood p7 oak)
      (surface-condition p7 smooth)
      (treatment p7 glazed)
      (available p8)
      (colour p8 natural)
      (wood p8 oak)
      (treatment p8 varnished)
      (available p9)
      (colour p9 white)
      (wood p9 teak)
      (available p10)
      (colour p10 black)
      (surface-condition p10 verysmooth)
      (treatment p10 varnished)
      (available p11)
      (colour p11 white)
      (surface-condition p11 verysmooth)
      (available p12)
      (colour p12 green)
      (wood p12 pine)
      (surface-condition p12 verysmooth)
      (treatment p12 varnished)
      (available p13)
      (colour p13 green)
      (treatment p13 glazed)
      (available p14)
      (colour p14 red)
      (wood p14 walnut)
      (available p15)
      (colour p15 blue)
      (wood p15 beech)
      (surface-condition p15 verysmooth)
      (available p16)
      (colour p16 red)
      (wood p16 cherry)
      (surface-condition p16 smooth)
      (treatment p16 varnished)
      (available p17)
      (colour p17 white)
      (surface-condition p17 smooth)
      (available p18)
      (surface-condition p18 smooth)
      (treatment p18 varnished)
      (available p19)
      (colour p19 blue)
      (wood p19 beech)
      (surface-condition p19 smooth)
      (treatment p19 glazed)
      (available p20)
      (colour p20 red)
      (wood p20 teak)
      (surface-condition p20 smooth)
      (treatment p20 glazed)
      (available p21)
      (wood p21 mahogany)
      (treatment p21 varnished)
      (available p22)
      (wood p22 cherry)
      (surface-condition p22 verysmooth)
      (available p23)
      (colour p23 blue)
      (wood p23 teak)
      (treatment p23 glazed)
      (available p24)
      (colour p24 red)
      (wood p24 pine)
      (surface-condition p24 verysmooth)
      (treatment p24 glazed)
      (available p25)
      (surface-condition p25 smooth)
      (treatment p25 varnished)
      (available p26)
      (colour p26 black)
      (surface-condition p26 smooth)
      (available p27)
      (surface-condition p27 smooth)
      (treatment p27 varnished)
      (available p28)
      (surface-condition p28 verysmooth)
      (treatment p28 glazed)
      (available p29)
      (colour p29 white)
      (wood p29 pine)
      (surface-condition p29 verysmooth)
      (available p30)
      (colour p30 natural)
      (surface-condition p30 smooth)
      (treatment p30 glazed)
      (available p31)
      (colour p31 white)
      (surface-condition p31 verysmooth)
      (treatment p31 glazed)
      (available p32)
      (wood p32 teak)
      (surface-condition p32 smooth)
      (available p33)
      (colour p33 natural)
      (wood p33 beech)
      (surface-condition p33 verysmooth)
      (treatment p33 varnished)
      (available p34)
      (colour p34 red)
      (wood p34 pine)
      (available p35)
      (colour p35 green)
      (wood p35 beech)
      (treatment p35 glazed)
      (available p36)
      (colour p36 blue)
      (wood p36 beech)
      (surface-condition p36 verysmooth)
      (available p37)
      (colour p37 green)
      (treatment p37 varnished)
      (available p38)
      (colour p38 green)
      (wood p38 teak)
      (treatment p38 glazed)
      (available p39)
      (colour p39 mauve)
      (wood p39 cherry)
      (available p40)
      (wood p40 teak)
      (surface-condition p40 smooth)
      (available p41)
      (colour p41 white)
      (surface-condition p41 smooth)
      (available p42)
      (colour p42 black)
      (wood p42 teak)
      (surface-condition p42 verysmooth)
      (treatment p42 varnished)
      (available p43)
      (colour p43 blue)
      (surface-condition p43 smooth)
      (treatment p43 glazed)
      (available p44)
      (colour p44 green)
      (treatment p44 glazed)
      (available p45)
      (colour p45 red)
      (treatment p45 varnished)
      (available p46)
      (colour p46 natural)
      (wood p46 walnut)
      (available p47)
      (colour p47 blue)
      (wood p47 pine)
      (surface-condition p47 smooth)
      (available p48)
      (wood p48 teak)
      (surface-condition p48 smooth)
      (available p49)
      (colour p49 blue)
      (wood p49 teak)
      (surface-condition p49 verysmooth)
      (treatment p49 varnished)
      (available p50)
      (colour p50 natural)
      (wood p50 mahogany)
      (surface-condition p50 verysmooth)
      (available p51)
      (colour p51 blue)
      (wood p51 cherry)
      (surface-condition p51 verysmooth)
      (treatment p51 varnished)
      (available p52)
      (colour p52 mauve)
      (treatment p52 glazed)
      (available p53)
      (surface-condition p53 smooth)
      (treatment p53 varnished)
      (available p54)
      (wood p54 mahogany)
      (treatment p54 varnished)
      (available p55)
      (colour p55 natural)
      (surface-condition p55 smooth)
      (treatment p55 glazed)
      (available p56)
      (colour p56 blue)
      (wood p56 beech)
      (surface-condition p56 verysmooth)
      (treatment p56 glazed)
      (available p57)
      (colour p57 mauve)
      (wood p57 beech)
      (surface-condition p57 verysmooth)
      (treatment p57 glazed)
      (available p58)
      (colour p58 white)
      (treatment p58 glazed)
      (available p59)
      (wood p59 mahogany)
      (treatment p59 varnished)
      (available p60)
      (wood p60 mahogany)
      (treatment p60 varnished)
      (available p61)
      (colour p61 red)
      (treatment p61 glazed)
      (available p62)
      (wood p62 mahogany)
      (surface-condition p62 smooth)
      (treatment p62 glazed)
      (available p63)
      (surface-condition p63 smooth)
      (treatment p63 varnished)
      (available p64)
      (colour p64 red)
      (wood p64 mahogany)
      (surface-condition p64 verysmooth)
      (treatment p64 glazed)
      (available p65)
      (colour p65 green)
      (wood p65 pine)
      (treatment p65 varnished)
      (available p66)
      (colour p66 white)
      (wood p66 walnut)
      (surface-condition p66 smooth)
      (treatment p66 varnished)
      (available p67)
      (colour p67 white)
      (surface-condition p67 verysmooth)
      (treatment p67 glazed)
      (available p68)
      (wood p68 teak)
      (surface-condition p68 smooth)
      (treatment p68 varnished)
      (available p69)
      (surface-condition p69 verysmooth)
      (treatment p69 glazed)
      (available p70)
      (colour p70 black)
      (surface-condition p70 verysmooth)
      (available p71)
      (surface-condition p71 smooth)
      (treatment p71 varnished)
      (available p72)
      (wood p72 pine)
      (treatment p72 varnished)
      (available p73)
      (wood p73 walnut)
      (surface-condition p73 verysmooth)
      (available p74)
      (wood p74 oak)
      (surface-condition p74 verysmooth)
      (treatment p74 glazed)
      (available p75)
      (colour p75 blue)
      (wood p75 walnut)
      (available p76)
      (colour p76 white)
      (surface-condition p76 verysmooth)
      (available p77)
      (colour p77 blue)
      (surface-condition p77 verysmooth)
      (available p78)
      (colour p78 white)
      (surface-condition p78 verysmooth)
      (available p79)
      (colour p79 white)
      (surface-condition p79 verysmooth)
      (available p80)
      (colour p80 white)
      (wood p80 mahogany)
      (surface-condition p80 smooth)
      (available p81)
      (surface-condition p81 smooth)
      (treatment p81 varnished)
      (available p82)
      (colour p82 natural)
      (treatment p82 glazed)
      (available p83)
      (wood p83 mahogany)
      (treatment p83 varnished)
      (available p84)
      (wood p84 oak)
      (surface-condition p84 verysmooth)
      (available p85)
      (colour p85 black)
      (wood p85 beech)
      (surface-condition p85 smooth)
      (treatment p85 varnished)
      (available p86)
      (colour p86 blue)
      (surface-condition p86 verysmooth)
      (treatment p86 varnished)
      (available p87)
      (colour p87 white)
      (surface-condition p87 verysmooth)
      (available p88)
      (colour p88 natural)
      (surface-condition p88 smooth)
      (treatment p88 varnished)
      (available p89)
      (colour p89 green)
      (wood p89 teak)
      (available p90)
      (wood p90 pine)
      (surface-condition p90 smooth)
      (available p91)
      (wood p91 oak)
      (treatment p91 varnished)
      (available p92)
      (colour p92 blue)
      (wood p92 cherry)
      (available p93)
      (wood p93 oak)
      (surface-condition p93 verysmooth)
      (treatment p93 varnished)
      (available p94)
      (colour p94 black)
      (surface-condition p94 verysmooth)
      (available p95)
      (surface-condition p95 verysmooth)
      (treatment p95 varnished)
      (available p96)
      (colour p96 natural)
      (wood p96 oak)
      (surface-condition p96 verysmooth)
      (available p97)
      (colour p97 natural)
      (wood p97 teak)
      (surface-condition p97 smooth)
      (treatment p97 glazed)
      (available p98)
      (colour p98 natural)
      (wood p98 pine)
      (surface-condition p98 smooth)
      (treatment p98 varnished)
      (available p99)
      (colour p99 natural)
      (surface-condition p99 verysmooth)
      (available p100)
      (surface-condition p100 smooth)
      (treatment p100 varnished)
      (available p101)
      (surface-condition p101 verysmooth)
      (treatment p101 varnished)
      (available p102)
      (colour p102 green)
      (wood p102 mahogany)
      (surface-condition p102 smooth)
      (available p103)
      (surface-condition p103 verysmooth)
      (treatment p103 varnished)
      (available p104)
      (colour p104 blue)
      (treatment p104 glazed)
      (available p105)
      (colour p105 red)
      (wood p105 oak)
      (surface-condition p105 verysmooth)
      (treatment p105 glazed)
      (available p106)
      (colour p106 red)
      (wood p106 oak)
    )
  )
  (:metric minimize (total-cost))
)
