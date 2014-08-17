; woodworking task with 182 parts and 140% wood
; Machines:
;   3 grinder
;   3 glazer
;   3 immersion-varnisher
;   3 planer
;   3 highspeed-saw
;   3 spray-varnisher
;   3 saw
; random seed: 680363

(define (problem wood-prob-sat-165)
  (:domain woodworking)
  (:objects
    grinder0 grinder1 grinder2 - grinder
    glazer0 glazer1 glazer2 - glazer
    immersion-varnisher0 immersion-varnisher1 immersion-varnisher2 - immersion-varnisher
    planer0 planer1 planer2 - planer
    highspeed-saw0 highspeed-saw1 highspeed-saw2 - highspeed-saw
    spray-varnisher0 spray-varnisher1 spray-varnisher2 - spray-varnisher
    saw0 saw1 saw2 - saw
    mauve white red blue black green - acolour
    mahogany walnut pine oak cherry teak beech - awood
    p0 p1 p2 p3 p4 p5 p6 p7 p8 p9 p10 p11 p12 p13 p14 p15 p16 p17 p18 p19 p20 p21 p22 p23 p24 p25 p26 p27 p28 p29 p30 p31 p32 p33 p34 p35 p36 p37 p38 p39 p40 p41 p42 p43 p44 p45 p46 p47 p48 p49 p50 p51 p52 p53 p54 p55 p56 p57 p58 p59 p60 p61 p62 p63 p64 p65 p66 p67 p68 p69 p70 p71 p72 p73 p74 p75 p76 p77 p78 p79 p80 p81 p82 p83 p84 p85 p86 p87 p88 p89 p90 p91 p92 p93 p94 p95 p96 p97 p98 p99 p100 p101 p102 p103 p104 p105 p106 p107 p108 p109 p110 p111 p112 p113 p114 p115 p116 p117 p118 p119 p120 p121 p122 p123 p124 p125 p126 p127 p128 p129 p130 p131 p132 p133 p134 p135 p136 p137 p138 p139 p140 p141 p142 p143 p144 p145 p146 p147 p148 p149 p150 p151 p152 p153 p154 p155 p156 p157 p158 p159 p160 p161 p162 p163 p164 p165 p166 p167 p168 p169 p170 p171 p172 p173 p174 p175 p176 p177 p178 p179 p180 p181 - part
    b0 b1 b2 b3 b4 b5 b6 b7 b8 b9 b10 b11 b12 b13 b14 b15 b16 b17 b18 b19 b20 b21 b22 b23 b24 b25 b26 b27 b28 b29 b30 b31 b32 b33 b34 b35 b36 b37 b38 b39 b40 b41 b42 b43 b44 b45 b46 b47 b48 b49 b50 b51 b52 b53 - board
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
    (has-colour glazer0 mauve)
    (has-colour glazer0 natural)
    (has-colour glazer0 green)
    (has-colour glazer0 red)
    (has-colour glazer1 blue)
    (has-colour glazer1 mauve)
    (has-colour glazer1 black)
    (has-colour glazer1 green)
    (has-colour glazer1 white)
    (has-colour glazer1 red)
    (has-colour glazer2 blue)
    (has-colour glazer2 natural)
    (has-colour glazer2 mauve)
    (has-colour glazer2 black)
    (has-colour glazer2 white)
    (has-colour glazer2 red)
    (has-colour immersion-varnisher0 green)
    (has-colour immersion-varnisher0 white)
    (has-colour immersion-varnisher0 natural)
    (has-colour immersion-varnisher0 red)
    (has-colour immersion-varnisher0 black)
    (has-colour immersion-varnisher1 blue)
    (has-colour immersion-varnisher1 natural)
    (has-colour immersion-varnisher1 mauve)
    (has-colour immersion-varnisher1 green)
    (has-colour immersion-varnisher1 black)
    (has-colour immersion-varnisher1 red)
    (has-colour immersion-varnisher2 blue)
    (has-colour immersion-varnisher2 natural)
    (has-colour immersion-varnisher2 mauve)
    (has-colour immersion-varnisher2 green)
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
    (has-colour spray-varnisher0 white)
    (has-colour spray-varnisher0 red)
    (has-colour spray-varnisher1 blue)
    (has-colour spray-varnisher1 natural)
    (has-colour spray-varnisher1 mauve)
    (has-colour spray-varnisher1 black)
    (has-colour spray-varnisher1 green)
    (has-colour spray-varnisher1 white)
    (has-colour spray-varnisher1 red)
    (has-colour spray-varnisher2 blue)
    (has-colour spray-varnisher2 mauve)
    (has-colour spray-varnisher2 green)
    (has-colour spray-varnisher2 red)
    (has-colour spray-varnisher2 black)
    (available p0)
    (colour p0 red)
    (wood p0 walnut)
    (surface-condition p0 smooth)
    (treatment p0 glazed)
    (goalsize p0 medium)
    
    
    
    
    (unused p1)
    (goalsize p1 small)
    
    
    
    
    (unused p2)
    (goalsize p2 medium)
    
    
    
    
    (unused p3)
    (goalsize p3 medium)
    
    
    
    
    (available p4)
    (colour p4 mauve)
    (wood p4 mahogany)
    (surface-condition p4 verysmooth)
    (treatment p4 colourfragments)
    (goalsize p4 small)
    
    
    
    
    (unused p5)
    (goalsize p5 large)
    
    
    
    
    (unused p6)
    (goalsize p6 medium)
    
    
    
    
    (unused p7)
    (goalsize p7 medium)
    
    
    
    
    (unused p8)
    (goalsize p8 small)
    
    
    
    
    (available p9)
    (colour p9 green)
    (wood p9 beech)
    (surface-condition p9 verysmooth)
    (treatment p9 glazed)
    (goalsize p9 medium)
    
    
    
    
    (available p10)
    (colour p10 mauve)
    (wood p10 oak)
    (surface-condition p10 smooth)
    (treatment p10 colourfragments)
    (goalsize p10 small)
    
    
    
    
    (available p11)
    (colour p11 mauve)
    (wood p11 oak)
    (surface-condition p11 rough)
    (treatment p11 glazed)
    (goalsize p11 small)
    
    
    
    
    (unused p12)
    (goalsize p12 medium)
    
    
    
    
    (unused p13)
    (goalsize p13 medium)
    
    
    
    
    (available p14)
    (colour p14 mauve)
    (wood p14 pine)
    (surface-condition p14 smooth)
    (treatment p14 colourfragments)
    (goalsize p14 medium)
    
    
    
    
    (unused p15)
    (goalsize p15 medium)
    
    
    
    
    (unused p16)
    (goalsize p16 small)
    
    
    
    
    (unused p17)
    (goalsize p17 medium)
    
    
    
    
    (unused p18)
    (goalsize p18 small)
    
    
    
    
    (unused p19)
    (goalsize p19 small)
    
    
    
    
    (available p20)
    (colour p20 mauve)
    (wood p20 teak)
    (surface-condition p20 rough)
    (treatment p20 glazed)
    (goalsize p20 large)
    
    
    
    
    (unused p21)
    (goalsize p21 large)
    
    
    
    
    (unused p22)
    (goalsize p22 medium)
    
    
    
    
    (unused p23)
    (goalsize p23 small)
    
    
    
    
    (unused p24)
    (goalsize p24 large)
    
    
    
    
    (available p25)
    (colour p25 blue)
    (wood p25 teak)
    (surface-condition p25 rough)
    (treatment p25 glazed)
    (goalsize p25 medium)
    
    
    
    
    (unused p26)
    (goalsize p26 large)
    
    
    
    
    (unused p27)
    (goalsize p27 large)
    
    
    
    
    (unused p28)
    (goalsize p28 medium)
    
    
    
    
    (unused p29)
    (goalsize p29 large)
    
    
    
    
    (unused p30)
    (goalsize p30 large)
    
    
    
    
    (unused p31)
    (goalsize p31 large)
    
    
    
    
    (unused p32)
    (goalsize p32 small)
    
    
    
    
    (unused p33)
    (goalsize p33 large)
    
    
    
    
    (unused p34)
    (goalsize p34 small)
    
    
    
    
    (unused p35)
    (goalsize p35 small)
    
    
    
    
    (unused p36)
    (goalsize p36 large)
    
    
    
    
    (unused p37)
    (goalsize p37 large)
    
    
    
    
    (unused p38)
    (goalsize p38 large)
    
    
    
    
    (unused p39)
    (goalsize p39 large)
    
    
    
    
    (unused p40)
    (goalsize p40 medium)
    
    
    
    
    (unused p41)
    (goalsize p41 medium)
    
    
    
    
    (unused p42)
    (goalsize p42 medium)
    
    
    
    
    (unused p43)
    (goalsize p43 medium)
    
    
    
    
    (available p44)
    (colour p44 black)
    (wood p44 teak)
    (surface-condition p44 verysmooth)
    (treatment p44 glazed)
    (goalsize p44 small)
    
    
    
    
    (unused p45)
    (goalsize p45 large)
    
    
    
    
    (available p46)
    (colour p46 black)
    (wood p46 pine)
    (surface-condition p46 smooth)
    (treatment p46 colourfragments)
    (goalsize p46 medium)
    
    
    
    
    (unused p47)
    (goalsize p47 small)
    
    
    
    
    (available p48)
    (colour p48 mauve)
    (wood p48 mahogany)
    (surface-condition p48 verysmooth)
    (treatment p48 varnished)
    (goalsize p48 medium)
    
    
    
    
    (unused p49)
    (goalsize p49 large)
    
    
    
    
    (unused p50)
    (goalsize p50 large)
    
    
    
    
    (unused p51)
    (goalsize p51 large)
    
    
    
    
    (unused p52)
    (goalsize p52 medium)
    
    
    
    
    (unused p53)
    (goalsize p53 large)
    
    
    
    
    (unused p54)
    (goalsize p54 medium)
    
    
    
    
    (unused p55)
    (goalsize p55 small)
    
    
    
    
    (unused p56)
    (goalsize p56 small)
    
    
    
    
    (unused p57)
    (goalsize p57 large)
    
    
    
    
    (unused p58)
    (goalsize p58 large)
    
    
    
    
    (available p59)
    (colour p59 mauve)
    (wood p59 beech)
    (surface-condition p59 smooth)
    (treatment p59 varnished)
    (goalsize p59 large)
    
    
    
    
    (unused p60)
    (goalsize p60 small)
    
    
    
    
    (unused p61)
    (goalsize p61 small)
    
    
    
    
    (unused p62)
    (goalsize p62 large)
    
    
    
    
    (unused p63)
    (goalsize p63 large)
    
    
    
    
    (unused p64)
    (goalsize p64 small)
    
    
    
    
    (unused p65)
    (goalsize p65 large)
    
    
    
    
    (unused p66)
    (goalsize p66 small)
    
    
    
    
    (unused p67)
    (goalsize p67 small)
    
    
    
    
    (available p68)
    (colour p68 natural)
    (wood p68 teak)
    (surface-condition p68 verysmooth)
    (treatment p68 glazed)
    (goalsize p68 medium)
    
    
    
    
    (unused p69)
    (goalsize p69 small)
    
    
    
    
    (unused p70)
    (goalsize p70 large)
    
    
    
    
    (unused p71)
    (goalsize p71 large)
    
    
    
    
    (unused p72)
    (goalsize p72 small)
    
    
    
    
    (unused p73)
    (goalsize p73 small)
    
    
    
    
    (unused p74)
    (goalsize p74 small)
    
    
    
    
    (unused p75)
    (goalsize p75 large)
    
    
    
    
    (unused p76)
    (goalsize p76 large)
    
    
    
    
    (unused p77)
    (goalsize p77 medium)
    
    
    
    
    (available p78)
    (colour p78 blue)
    (wood p78 mahogany)
    (surface-condition p78 smooth)
    (treatment p78 glazed)
    (goalsize p78 small)
    
    
    
    
    (unused p79)
    (goalsize p79 large)
    
    
    
    
    (unused p80)
    (goalsize p80 small)
    
    
    
    
    (unused p81)
    (goalsize p81 small)
    
    
    
    
    (unused p82)
    (goalsize p82 small)
    
    
    
    
    (unused p83)
    (goalsize p83 small)
    
    
    
    
    (unused p84)
    (goalsize p84 large)
    
    
    
    
    (unused p85)
    (goalsize p85 medium)
    
    
    
    
    (unused p86)
    (goalsize p86 small)
    
    
    
    
    (unused p87)
    (goalsize p87 large)
    
    
    
    
    (unused p88)
    (goalsize p88 small)
    
    
    
    
    (unused p89)
    (goalsize p89 large)
    
    
    
    
    (unused p90)
    (goalsize p90 large)
    
    
    
    
    (unused p91)
    (goalsize p91 medium)
    
    
    
    
    (unused p92)
    (goalsize p92 medium)
    
    
    
    
    (unused p93)
    (goalsize p93 medium)
    
    
    
    
    (available p94)
    (colour p94 white)
    (wood p94 pine)
    (surface-condition p94 verysmooth)
    (treatment p94 colourfragments)
    (goalsize p94 small)
    
    
    
    
    (unused p95)
    (goalsize p95 large)
    
    
    
    
    (unused p96)
    (goalsize p96 medium)
    
    
    
    
    (unused p97)
    (goalsize p97 medium)
    
    
    
    
    (unused p98)
    (goalsize p98 large)
    
    
    
    
    (unused p99)
    (goalsize p99 medium)
    
    
    
    
    (unused p100)
    (goalsize p100 medium)
    
    
    
    
    (unused p101)
    (goalsize p101 large)
    
    
    
    
    (unused p102)
    (goalsize p102 medium)
    
    
    
    
    (unused p103)
    (goalsize p103 small)
    
    
    
    
    (unused p104)
    (goalsize p104 medium)
    
    
    
    
    (unused p105)
    (goalsize p105 small)
    
    
    
    
    (unused p106)
    (goalsize p106 small)
    
    
    
    
    (unused p107)
    (goalsize p107 small)
    
    
    
    
    (unused p108)
    (goalsize p108 medium)
    
    
    
    
    (available p109)
    (colour p109 natural)
    (wood p109 beech)
    (surface-condition p109 verysmooth)
    (treatment p109 glazed)
    (goalsize p109 medium)
    
    
    
    
    (unused p110)
    (goalsize p110 medium)
    
    
    
    
    (unused p111)
    (goalsize p111 large)
    
    
    
    
    (unused p112)
    (goalsize p112 large)
    
    
    
    
    (unused p113)
    (goalsize p113 small)
    
    
    
    
    (unused p114)
    (goalsize p114 large)
    
    
    
    
    (unused p115)
    (goalsize p115 large)
    
    
    
    
    (unused p116)
    (goalsize p116 medium)
    
    
    
    
    (unused p117)
    (goalsize p117 medium)
    
    
    
    
    (available p118)
    (colour p118 red)
    (wood p118 teak)
    (surface-condition p118 rough)
    (treatment p118 glazed)
    (goalsize p118 large)
    
    
    
    
    (unused p119)
    (goalsize p119 small)
    
    
    
    
    (unused p120)
    (goalsize p120 medium)
    
    
    
    
    (available p121)
    (colour p121 mauve)
    (wood p121 walnut)
    (surface-condition p121 verysmooth)
    (treatment p121 varnished)
    (goalsize p121 medium)
    
    
    
    
    (unused p122)
    (goalsize p122 medium)
    
    
    
    
    (available p123)
    (colour p123 blue)
    (wood p123 cherry)
    (surface-condition p123 rough)
    (treatment p123 varnished)
    (goalsize p123 large)
    
    
    
    
    (unused p124)
    (goalsize p124 large)
    
    
    
    
    (unused p125)
    (goalsize p125 large)
    
    
    
    
    (unused p126)
    (goalsize p126 large)
    
    
    
    
    (unused p127)
    (goalsize p127 large)
    
    
    
    
    (available p128)
    (colour p128 green)
    (wood p128 mahogany)
    (surface-condition p128 verysmooth)
    (treatment p128 glazed)
    (goalsize p128 small)
    
    
    
    
    (unused p129)
    (goalsize p129 large)
    
    
    
    
    (available p130)
    (colour p130 natural)
    (wood p130 cherry)
    (surface-condition p130 rough)
    (treatment p130 glazed)
    (goalsize p130 medium)
    
    
    
    
    (unused p131)
    (goalsize p131 medium)
    
    
    
    
    (unused p132)
    (goalsize p132 small)
    
    
    
    
    (unused p133)
    (goalsize p133 small)
    
    
    
    
    (available p134)
    (colour p134 black)
    (wood p134 mahogany)
    (surface-condition p134 smooth)
    (treatment p134 glazed)
    (goalsize p134 large)
    
    
    
    
    (unused p135)
    (goalsize p135 small)
    
    
    
    
    (unused p136)
    (goalsize p136 small)
    
    
    
    
    (unused p137)
    (goalsize p137 small)
    
    
    
    
    (unused p138)
    (goalsize p138 medium)
    
    
    
    
    (unused p139)
    (goalsize p139 large)
    
    
    
    
    (unused p140)
    (goalsize p140 medium)
    
    
    
    
    (unused p141)
    (goalsize p141 large)
    
    
    
    
    (available p142)
    (colour p142 blue)
    (wood p142 oak)
    (surface-condition p142 rough)
    (treatment p142 colourfragments)
    (goalsize p142 medium)
    
    
    
    
    (unused p143)
    (goalsize p143 small)
    
    
    
    
    (unused p144)
    (goalsize p144 medium)
    
    
    
    
    (unused p145)
    (goalsize p145 medium)
    
    
    
    
    (unused p146)
    (goalsize p146 medium)
    
    
    
    
    (available p147)
    (colour p147 black)
    (wood p147 cherry)
    (surface-condition p147 verysmooth)
    (treatment p147 varnished)
    (goalsize p147 medium)
    
    
    
    
    (unused p148)
    (goalsize p148 large)
    
    
    
    
    (unused p149)
    (goalsize p149 medium)
    
    
    
    
    (unused p150)
    (goalsize p150 small)
    
    
    
    
    (unused p151)
    (goalsize p151 medium)
    
    
    
    
    (available p152)
    (colour p152 white)
    (wood p152 teak)
    (surface-condition p152 verysmooth)
    (treatment p152 varnished)
    (goalsize p152 medium)
    
    
    
    
    (unused p153)
    (goalsize p153 small)
    
    
    
    
    (available p154)
    (colour p154 red)
    (wood p154 pine)
    (surface-condition p154 rough)
    (treatment p154 glazed)
    (goalsize p154 small)
    
    
    
    
    (unused p155)
    (goalsize p155 small)
    
    
    
    
    (unused p156)
    (goalsize p156 medium)
    
    
    
    
    (available p157)
    (colour p157 red)
    (wood p157 walnut)
    (surface-condition p157 rough)
    (treatment p157 colourfragments)
    (goalsize p157 small)
    
    
    
    
    (unused p158)
    (goalsize p158 large)
    
    
    
    
    (available p159)
    (colour p159 green)
    (wood p159 cherry)
    (surface-condition p159 rough)
    (treatment p159 glazed)
    (goalsize p159 medium)
    
    
    
    
    (available p160)
    (colour p160 white)
    (wood p160 beech)
    (surface-condition p160 verysmooth)
    (treatment p160 varnished)
    (goalsize p160 large)
    
    
    
    
    (available p161)
    (colour p161 green)
    (wood p161 mahogany)
    (surface-condition p161 smooth)
    (treatment p161 glazed)
    (goalsize p161 medium)
    
    
    
    
    (unused p162)
    (goalsize p162 small)
    
    
    
    
    (unused p163)
    (goalsize p163 large)
    
    
    
    
    (unused p164)
    (goalsize p164 small)
    
    
    
    
    (available p165)
    (colour p165 blue)
    (wood p165 pine)
    (surface-condition p165 rough)
    (treatment p165 varnished)
    (goalsize p165 large)
    
    
    
    
    (available p166)
    (colour p166 red)
    (wood p166 teak)
    (surface-condition p166 smooth)
    (treatment p166 colourfragments)
    (goalsize p166 large)
    
    
    
    
    (unused p167)
    (goalsize p167 medium)
    
    
    
    
    (unused p168)
    (goalsize p168 large)
    
    
    
    
    (available p169)
    (colour p169 mauve)
    (wood p169 mahogany)
    (surface-condition p169 smooth)
    (treatment p169 glazed)
    (goalsize p169 medium)
    
    
    
    
    (unused p170)
    (goalsize p170 small)
    
    
    
    
    (unused p171)
    (goalsize p171 small)
    
    
    
    
    (available p172)
    (colour p172 blue)
    (wood p172 beech)
    (surface-condition p172 verysmooth)
    (treatment p172 varnished)
    (goalsize p172 large)
    
    
    
    
    (unused p173)
    (goalsize p173 medium)
    
    
    
    
    (available p174)
    (colour p174 white)
    (wood p174 oak)
    (surface-condition p174 smooth)
    (treatment p174 colourfragments)
    (goalsize p174 large)
    
    
    
    
    (unused p175)
    (goalsize p175 small)
    
    
    
    
    (unused p176)
    (goalsize p176 small)
    
    
    
    
    (available p177)
    (colour p177 natural)
    (wood p177 teak)
    (surface-condition p177 rough)
    (treatment p177 varnished)
    (goalsize p177 large)
    
    
    
    
    (unused p178)
    (goalsize p178 medium)
    
    
    
    
    (unused p179)
    (goalsize p179 large)
    
    
    
    
    (available p180)
    (colour p180 black)
    (wood p180 pine)
    (surface-condition p180 smooth)
    (treatment p180 varnished)
    (goalsize p180 large)
    
    
    
    
    (unused p181)
    (goalsize p181 medium)
    
    
    
    
    (boardsize b0 s8)
    (wood b0 cherry)
    (surface-condition b0 rough)
    (available b0)
    (boardsize b1 s9)
    (wood b1 cherry)
    (surface-condition b1 rough)
    (available b1)
    (boardsize b2 s10)
    (wood b2 cherry)
    (surface-condition b2 rough)
    (available b2)
    (boardsize b3 s8)
    (wood b3 cherry)
    (surface-condition b3 rough)
    (available b3)
    (boardsize b4 s10)
    (wood b4 cherry)
    (surface-condition b4 smooth)
    (available b4)
    (boardsize b5 s6)
    (wood b5 cherry)
    (surface-condition b5 rough)
    (available b5)
    (boardsize b6 s7)
    (wood b6 cherry)
    (surface-condition b6 rough)
    (available b6)
    (boardsize b7 s9)
    (wood b7 cherry)
    (surface-condition b7 smooth)
    (available b7)
    (boardsize b8 s7)
    (wood b8 cherry)
    (surface-condition b8 rough)
    (available b8)
    (boardsize b9 s2)
    (wood b9 cherry)
    (surface-condition b9 rough)
    (available b9)
    (boardsize b10 s9)
    (wood b10 mahogany)
    (surface-condition b10 rough)
    (available b10)
    (boardsize b11 s11)
    (wood b11 mahogany)
    (surface-condition b11 rough)
    (available b11)
    (boardsize b12 s7)
    (wood b12 mahogany)
    (surface-condition b12 rough)
    (available b12)
    (boardsize b13 s8)
    (wood b13 mahogany)
    (surface-condition b13 rough)
    (available b13)
    (boardsize b14 s9)
    (wood b14 mahogany)
    (surface-condition b14 smooth)
    (available b14)
    (boardsize b15 s4)
    (wood b15 mahogany)
    (surface-condition b15 rough)
    (available b15)
    (boardsize b16 s11)
    (wood b16 oak)
    (surface-condition b16 smooth)
    (available b16)
    (boardsize b17 s9)
    (wood b17 oak)
    (surface-condition b17 rough)
    (available b17)
    (boardsize b18 s10)
    (wood b18 oak)
    (surface-condition b18 rough)
    (available b18)
    (boardsize b19 s10)
    (wood b19 oak)
    (surface-condition b19 rough)
    (available b19)
    (boardsize b20 s6)
    (wood b20 oak)
    (surface-condition b20 rough)
    (available b20)
    (boardsize b21 s1)
    (wood b21 oak)
    (surface-condition b21 rough)
    (available b21)
    (boardsize b22 s9)
    (wood b22 pine)
    (surface-condition b22 rough)
    (available b22)
    (boardsize b23 s9)
    (wood b23 pine)
    (surface-condition b23 rough)
    (available b23)
    (boardsize b24 s10)
    (wood b24 pine)
    (surface-condition b24 rough)
    (available b24)
    (boardsize b25 s6)
    (wood b25 pine)
    (surface-condition b25 rough)
    (available b25)
    (boardsize b26 s6)
    (wood b26 pine)
    (surface-condition b26 smooth)
    (available b26)
    (boardsize b27 s7)
    (wood b27 pine)
    (surface-condition b27 rough)
    (available b27)
    (boardsize b28 s5)
    (wood b28 pine)
    (surface-condition b28 smooth)
    (available b28)
    (boardsize b29 s10)
    (wood b29 pine)
    (surface-condition b29 rough)
    (available b29)
    (boardsize b30 s4)
    (wood b30 pine)
    (surface-condition b30 rough)
    (available b30)
    (boardsize b31 s9)
    (wood b31 walnut)
    (surface-condition b31 rough)
    (available b31)
    (boardsize b32 s11)
    (wood b32 walnut)
    (surface-condition b32 smooth)
    (available b32)
    (boardsize b33 s5)
    (wood b33 walnut)
    (surface-condition b33 rough)
    (available b33)
    (boardsize b34 s9)
    (wood b34 walnut)
    (surface-condition b34 rough)
    (available b34)
    (boardsize b35 s6)
    (wood b35 walnut)
    (surface-condition b35 rough)
    (available b35)
    (boardsize b36 s11)
    (wood b36 teak)
    (surface-condition b36 rough)
    (available b36)
    (boardsize b37 s7)
    (wood b37 teak)
    (surface-condition b37 smooth)
    (available b37)
    (boardsize b38 s9)
    (wood b38 teak)
    (surface-condition b38 rough)
    (available b38)
    (boardsize b39 s8)
    (wood b39 teak)
    (surface-condition b39 smooth)
    (available b39)
    (boardsize b40 s7)
    (wood b40 teak)
    (surface-condition b40 rough)
    (available b40)
    (boardsize b41 s10)
    (wood b41 teak)
    (surface-condition b41 rough)
    (available b41)
    (boardsize b42 s3)
    (wood b42 teak)
    (surface-condition b42 rough)
    (available b42)
    (boardsize b43 s8)
    (wood b43 beech)
    (surface-condition b43 rough)
    (available b43)
    (boardsize b44 s10)
    (wood b44 beech)
    (surface-condition b44 rough)
    (available b44)
    (boardsize b45 s9)
    (wood b45 beech)
    (surface-condition b45 rough)
    (available b45)
    (boardsize b46 s7)
    (wood b46 beech)
    (surface-condition b46 smooth)
    (available b46)
    (boardsize b47 s7)
    (wood b47 beech)
    (surface-condition b47 rough)
    (available b47)
    (boardsize b48 s10)
    (wood b48 beech)
    (surface-condition b48 smooth)
    (available b48)
    (boardsize b49 s7)
    (wood b49 beech)
    (surface-condition b49 rough)
    (available b49)
    (boardsize b50 s8)
    (wood b50 beech)
    (surface-condition b50 rough)
    (available b50)
    (boardsize b51 s6)
    (wood b51 beech)
    (surface-condition b51 smooth)
    (available b51)
    (boardsize b52 s7)
    (wood b52 beech)
    (surface-condition b52 rough)
    (available b52)
    (boardsize b53 s3)
    (wood b53 beech)
    (surface-condition b53 rough)
    (available b53)
  )
  (:goal
    (and
      (available p0)
      (colour p0 mauve)
      (wood p0 walnut)
      (surface-condition p0 verysmooth)
      (treatment p0 glazed)
      (available p1)
      (surface-condition p1 verysmooth)
      (treatment p1 varnished)
      (available p2)
      (colour p2 green)
      (treatment p2 varnished)
      (available p3)
      (wood p3 beech)
      (surface-condition p3 smooth)
      (available p4)
      (colour p4 blue)
      (wood p4 mahogany)
      (available p5)
      (surface-condition p5 verysmooth)
      (treatment p5 glazed)
      (available p6)
      (colour p6 green)
      (wood p6 cherry)
      (surface-condition p6 smooth)
      (treatment p6 varnished)
      (available p7)
      (colour p7 black)
      (surface-condition p7 verysmooth)
      (available p8)
      (colour p8 green)
      (wood p8 beech)
      (surface-condition p8 verysmooth)
      (treatment p8 glazed)
      (available p9)
      (colour p9 white)
      (wood p9 beech)
      (treatment p9 varnished)
      (available p10)
      (colour p10 natural)
      (wood p10 oak)
      (available p11)
      (colour p11 natural)
      (surface-condition p11 smooth)
      (treatment p11 varnished)
      (available p12)
      (colour p12 green)
      (treatment p12 glazed)
      (available p13)
      (colour p13 white)
      (surface-condition p13 verysmooth)
      (available p14)
      (colour p14 black)
      (wood p14 pine)
      (surface-condition p14 verysmooth)
      (treatment p14 glazed)
      (available p15)
      (wood p15 pine)
      (surface-condition p15 verysmooth)
      (treatment p15 glazed)
      (available p16)
      (surface-condition p16 smooth)
      (treatment p16 varnished)
      (available p17)
      (colour p17 white)
      (surface-condition p17 smooth)
      (treatment p17 glazed)
      (available p18)
      (wood p18 beech)
      (surface-condition p18 smooth)
      (treatment p18 glazed)
      (available p19)
      (colour p19 green)
      (surface-condition p19 verysmooth)
      (available p20)
      (colour p20 red)
      (wood p20 teak)
      (surface-condition p20 smooth)
      (available p21)
      (colour p21 red)
      (wood p21 cherry)
      (available p22)
      (colour p22 white)
      (surface-condition p22 verysmooth)
      (available p23)
      (colour p23 blue)
      (surface-condition p23 verysmooth)
      (available p24)
      (colour p24 blue)
      (wood p24 beech)
      (surface-condition p24 smooth)
      (treatment p24 glazed)
      (available p25)
      (surface-condition p25 smooth)
      (treatment p25 glazed)
      (available p26)
      (colour p26 white)
      (wood p26 beech)
      (treatment p26 varnished)
      (available p27)
      (colour p27 white)
      (surface-condition p27 smooth)
      (available p28)
      (colour p28 green)
      (wood p28 beech)
      (treatment p28 glazed)
      (available p29)
      (colour p29 mauve)
      (wood p29 beech)
      (surface-condition p29 smooth)
      (treatment p29 glazed)
      (available p30)
      (colour p30 black)
      (wood p30 teak)
      (surface-condition p30 verysmooth)
      (treatment p30 glazed)
      (available p31)
      (wood p31 teak)
      (surface-condition p31 smooth)
      (treatment p31 varnished)
      (available p32)
      (wood p32 beech)
      (surface-condition p32 smooth)
      (available p33)
      (colour p33 mauve)
      (wood p33 cherry)
      (available p34)
      (colour p34 natural)
      (wood p34 pine)
      (surface-condition p34 smooth)
      (treatment p34 glazed)
      (available p35)
      (surface-condition p35 smooth)
      (treatment p35 varnished)
      (available p36)
      (colour p36 natural)
      (wood p36 teak)
      (surface-condition p36 smooth)
      (treatment p36 glazed)
      (available p37)
      (colour p37 red)
      (wood p37 cherry)
      (surface-condition p37 verysmooth)
      (treatment p37 glazed)
      (available p38)
      (wood p38 beech)
      (treatment p38 glazed)
      (available p39)
      (wood p39 beech)
      (treatment p39 varnished)
      (available p40)
      (colour p40 black)
      (surface-condition p40 smooth)
      (available p41)
      (colour p41 blue)
      (wood p41 walnut)
      (available p42)
      (colour p42 mauve)
      (wood p42 walnut)
      (surface-condition p42 verysmooth)
      (available p43)
      (colour p43 black)
      (wood p43 mahogany)
      (surface-condition p43 smooth)
      (treatment p43 varnished)
      (available p44)
      (surface-condition p44 smooth)
      (treatment p44 varnished)
      (available p45)
      (wood p45 mahogany)
      (treatment p45 varnished)
      (available p46)
      (colour p46 green)
      (wood p46 pine)
      (treatment p46 glazed)
      (available p47)
      (colour p47 red)
      (surface-condition p47 smooth)
      (available p48)
      (colour p48 red)
      (surface-condition p48 verysmooth)
      (treatment p48 glazed)
      (available p49)
      (colour p49 green)
      (wood p49 oak)
      (surface-condition p49 verysmooth)
      (treatment p49 varnished)
      (available p50)
      (wood p50 beech)
      (surface-condition p50 verysmooth)
      (available p51)
      (colour p51 mauve)
      (treatment p51 glazed)
      (available p52)
      (wood p52 oak)
      (surface-condition p52 verysmooth)
      (available p53)
      (colour p53 black)
      (wood p53 teak)
      (available p54)
      (colour p54 red)
      (treatment p54 glazed)
      (available p55)
      (colour p55 white)
      (wood p55 walnut)
      (surface-condition p55 smooth)
      (available p56)
      (wood p56 cherry)
      (surface-condition p56 smooth)
      (available p57)
      (colour p57 red)
      (wood p57 mahogany)
      (surface-condition p57 smooth)
      (treatment p57 varnished)
      (available p58)
      (colour p58 green)
      (treatment p58 glazed)
      (available p59)
      (colour p59 natural)
      (wood p59 beech)
      (surface-condition p59 verysmooth)
      (treatment p59 varnished)
      (available p60)
      (wood p60 pine)
      (surface-condition p60 verysmooth)
      (treatment p60 varnished)
      (available p61)
      (wood p61 cherry)
      (surface-condition p61 verysmooth)
      (available p62)
      (colour p62 white)
      (surface-condition p62 smooth)
      (treatment p62 varnished)
      (available p63)
      (colour p63 natural)
      (wood p63 cherry)
      (treatment p63 varnished)
      (available p64)
      (wood p64 cherry)
      (surface-condition p64 verysmooth)
      (treatment p64 glazed)
      (available p65)
      (colour p65 natural)
      (wood p65 cherry)
      (surface-condition p65 smooth)
      (treatment p65 varnished)
      (available p66)
      (colour p66 natural)
      (wood p66 mahogany)
      (surface-condition p66 verysmooth)
      (treatment p66 varnished)
      (available p67)
      (colour p67 green)
      (wood p67 pine)
      (surface-condition p67 verysmooth)
      (available p68)
      (colour p68 white)
      (treatment p68 varnished)
      (available p69)
      (colour p69 white)
      (wood p69 mahogany)
      (surface-condition p69 smooth)
      (treatment p69 glazed)
      (available p70)
      (colour p70 natural)
      (surface-condition p70 verysmooth)
      (available p71)
      (wood p71 beech)
      (treatment p71 glazed)
      (available p72)
      (colour p72 red)
      (wood p72 mahogany)
      (surface-condition p72 smooth)
      (treatment p72 varnished)
      (available p73)
      (colour p73 blue)
      (wood p73 beech)
      (available p74)
      (colour p74 green)
      (wood p74 cherry)
      (surface-condition p74 smooth)
      (treatment p74 glazed)
      (available p75)
      (colour p75 blue)
      (surface-condition p75 smooth)
      (available p76)
      (colour p76 mauve)
      (treatment p76 varnished)
      (available p77)
      (colour p77 green)
      (surface-condition p77 verysmooth)
      (available p78)
      (wood p78 mahogany)
      (surface-condition p78 verysmooth)
      (treatment p78 glazed)
      (available p79)
      (colour p79 natural)
      (wood p79 walnut)
      (surface-condition p79 verysmooth)
      (available p80)
      (colour p80 mauve)
      (wood p80 pine)
      (surface-condition p80 verysmooth)
      (available p81)
      (colour p81 red)
      (wood p81 beech)
      (surface-condition p81 verysmooth)
      (treatment p81 varnished)
      (available p82)
      (wood p82 beech)
      (surface-condition p82 smooth)
      (treatment p82 varnished)
      (available p83)
      (colour p83 mauve)
      (surface-condition p83 smooth)
      (treatment p83 varnished)
      (available p84)
      (colour p84 mauve)
      (wood p84 pine)
      (surface-condition p84 smooth)
      (treatment p84 glazed)
      (available p85)
      (colour p85 red)
      (treatment p85 varnished)
      (available p86)
      (colour p86 green)
      (wood p86 oak)
      (surface-condition p86 smooth)
      (available p87)
      (wood p87 teak)
      (surface-condition p87 verysmooth)
      (treatment p87 glazed)
      (available p88)
      (colour p88 mauve)
      (wood p88 cherry)
      (treatment p88 varnished)
      (available p89)
      (wood p89 pine)
      (surface-condition p89 smooth)
      (available p90)
      (colour p90 black)
      (wood p90 teak)
      (treatment p90 glazed)
      (available p91)
      (wood p91 cherry)
      (treatment p91 varnished)
      (available p92)
      (wood p92 pine)
      (treatment p92 varnished)
      (available p93)
      (colour p93 red)
      (wood p93 pine)
      (treatment p93 glazed)
      (available p94)
      (colour p94 blue)
      (wood p94 pine)
      (surface-condition p94 smooth)
      (available p95)
      (surface-condition p95 smooth)
      (treatment p95 glazed)
      (available p96)
      (colour p96 black)
      (wood p96 beech)
      (available p97)
      (colour p97 mauve)
      (surface-condition p97 smooth)
      (treatment p97 glazed)
      (available p98)
      (colour p98 blue)
      (treatment p98 glazed)
      (available p99)
      (colour p99 white)
      (surface-condition p99 verysmooth)
      (available p100)
      (surface-condition p100 verysmooth)
      (treatment p100 varnished)
      (available p101)
      (colour p101 black)
      (wood p101 walnut)
      (available p102)
      (wood p102 mahogany)
      (treatment p102 varnished)
      (available p103)
      (wood p103 pine)
      (treatment p103 varnished)
      (available p104)
      (colour p104 blue)
      (wood p104 oak)
      (available p105)
      (wood p105 beech)
      (treatment p105 glazed)
      (available p106)
      (surface-condition p106 verysmooth)
      (treatment p106 varnished)
      (available p107)
      (wood p107 mahogany)
      (treatment p107 varnished)
      (available p108)
      (wood p108 cherry)
      (surface-condition p108 verysmooth)
      (treatment p108 varnished)
      (available p109)
      (colour p109 blue)
      (wood p109 beech)
      (available p110)
      (colour p110 mauve)
      (wood p110 oak)
      (surface-condition p110 smooth)
      (treatment p110 varnished)
      (available p111)
      (wood p111 oak)
      (treatment p111 varnished)
      (available p112)
      (colour p112 blue)
      (surface-condition p112 verysmooth)
      (available p113)
      (colour p113 blue)
      (wood p113 teak)
      (treatment p113 glazed)
      (available p114)
      (colour p114 green)
      (wood p114 cherry)
      (surface-condition p114 smooth)
      (treatment p114 varnished)
      (available p115)
      (colour p115 mauve)
      (wood p115 pine)
      (surface-condition p115 smooth)
      (treatment p115 glazed)
      (available p116)
      (wood p116 mahogany)
      (surface-condition p116 verysmooth)
      (available p117)
      (colour p117 blue)
      (surface-condition p117 smooth)
      (available p118)
      (colour p118 black)
      (wood p118 teak)
      (surface-condition p118 verysmooth)
      (treatment p118 glazed)
      (available p119)
      (surface-condition p119 verysmooth)
      (treatment p119 varnished)
      (available p120)
      (colour p120 green)
      (wood p120 beech)
      (surface-condition p120 verysmooth)
      (treatment p120 varnished)
      (available p121)
      (colour p121 white)
      (wood p121 walnut)
      (available p122)
      (colour p122 white)
      (wood p122 teak)
      (available p123)
      (colour p123 natural)
      (wood p123 cherry)
      (surface-condition p123 smooth)
      (treatment p123 glazed)
      (available p124)
      (colour p124 green)
      (wood p124 cherry)
      (surface-condition p124 smooth)
      (treatment p124 varnished)
      (available p125)
      (colour p125 black)
      (wood p125 cherry)
      (treatment p125 varnished)
      (available p126)
      (colour p126 white)
      (wood p126 oak)
      (surface-condition p126 verysmooth)
      (available p127)
      (colour p127 natural)
      (wood p127 beech)
      (available p128)
      (colour p128 mauve)
      (wood p128 mahogany)
      (surface-condition p128 smooth)
      (treatment p128 varnished)
      (available p129)
      (colour p129 green)
      (wood p129 oak)
      (surface-condition p129 verysmooth)
      (available p130)
      (wood p130 cherry)
      (surface-condition p130 smooth)
      (treatment p130 glazed)
      (available p131)
      (colour p131 blue)
      (surface-condition p131 smooth)
      (available p132)
      (colour p132 black)
      (treatment p132 glazed)
      (available p133)
      (wood p133 beech)
      (treatment p133 glazed)
      (available p134)
      (colour p134 red)
      (wood p134 mahogany)
      (available p135)
      (wood p135 oak)
      (surface-condition p135 verysmooth)
      (available p136)
      (colour p136 natural)
      (surface-condition p136 smooth)
      (treatment p136 varnished)
      (available p137)
      (colour p137 blue)
      (surface-condition p137 verysmooth)
      (treatment p137 varnished)
      (available p138)
      (colour p138 natural)
      (wood p138 beech)
      (surface-condition p138 smooth)
      (treatment p138 glazed)
      (available p139)
      (colour p139 white)
      (wood p139 pine)
      (available p140)
      (colour p140 natural)
      (wood p140 walnut)
      (available p141)
      (wood p141 mahogany)
      (treatment p141 glazed)
      (available p142)
      (colour p142 white)
      (surface-condition p142 verysmooth)
      (available p143)
      (colour p143 black)
      (wood p143 pine)
      (surface-condition p143 verysmooth)
      (treatment p143 glazed)
      (available p144)
      (colour p144 green)
      (wood p144 walnut)
      (surface-condition p144 verysmooth)
      (treatment p144 varnished)
      (available p145)
      (wood p145 pine)
      (treatment p145 varnished)
      (available p146)
      (colour p146 black)
      (treatment p146 varnished)
      (available p147)
      (colour p147 mauve)
      (surface-condition p147 verysmooth)
      (available p148)
      (wood p148 walnut)
      (surface-condition p148 smooth)
      (available p149)
      (colour p149 green)
      (wood p149 teak)
      (surface-condition p149 verysmooth)
      (treatment p149 varnished)
      (available p150)
      (surface-condition p150 smooth)
      (treatment p150 varnished)
      (available p151)
      (colour p151 black)
      (wood p151 teak)
      (surface-condition p151 smooth)
      (available p152)
      (colour p152 red)
      (wood p152 teak)
      (surface-condition p152 verysmooth)
      (treatment p152 varnished)
      (available p153)
      (colour p153 green)
      (surface-condition p153 smooth)
      (available p154)
      (surface-condition p154 verysmooth)
      (treatment p154 varnished)
      (available p155)
      (wood p155 walnut)
      (treatment p155 glazed)
      (available p156)
      (colour p156 mauve)
      (wood p156 mahogany)
      (surface-condition p156 smooth)
      (treatment p156 varnished)
      (available p157)
      (wood p157 walnut)
      (treatment p157 varnished)
      (available p158)
      (colour p158 green)
      (treatment p158 varnished)
      (available p159)
      (colour p159 mauve)
      (treatment p159 glazed)
      (available p160)
      (colour p160 blue)
      (wood p160 beech)
      (treatment p160 varnished)
      (available p161)
      (colour p161 white)
      (treatment p161 glazed)
      (available p162)
      (colour p162 blue)
      (surface-condition p162 verysmooth)
      (available p163)
      (wood p163 cherry)
      (surface-condition p163 verysmooth)
      (treatment p163 glazed)
      (available p164)
      (colour p164 green)
      (wood p164 cherry)
      (available p165)
      (wood p165 pine)
      (surface-condition p165 verysmooth)
      (treatment p165 varnished)
      (available p166)
      (colour p166 green)
      (wood p166 teak)
      (surface-condition p166 verysmooth)
      (treatment p166 glazed)
      (available p167)
      (surface-condition p167 smooth)
      (treatment p167 glazed)
      (available p168)
      (colour p168 natural)
      (wood p168 oak)
      (surface-condition p168 verysmooth)
      (treatment p168 glazed)
      (available p169)
      (colour p169 black)
      (treatment p169 glazed)
      (available p170)
      (wood p170 oak)
      (treatment p170 glazed)
      (available p171)
      (colour p171 red)
      (wood p171 pine)
      (available p172)
      (colour p172 mauve)
      (surface-condition p172 verysmooth)
      (treatment p172 glazed)
      (available p173)
      (colour p173 green)
      (surface-condition p173 verysmooth)
      (treatment p173 glazed)
      (available p174)
      (colour p174 black)
      (wood p174 oak)
      (available p175)
      (colour p175 mauve)
      (wood p175 cherry)
      (surface-condition p175 smooth)
      (treatment p175 glazed)
      (available p176)
      (colour p176 white)
      (wood p176 mahogany)
      (available p177)
      (surface-condition p177 smooth)
      (treatment p177 varnished)
      (available p178)
      (wood p178 cherry)
      (surface-condition p178 verysmooth)
      (treatment p178 glazed)
      (available p179)
      (wood p179 pine)
      (surface-condition p179 smooth)
      (available p180)
      (colour p180 natural)
      (wood p180 pine)
      (treatment p180 varnished)
      (available p181)
      (wood p181 pine)
      (treatment p181 glazed)
    )
  )
  
)