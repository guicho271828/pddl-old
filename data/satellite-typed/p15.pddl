(DEFINE (PROBLEM SATELLITE-TYPED-15) (:DOMAIN SATELLITE-TYPED)
 (:OBJECTS PLANET24 - DIRECTION PLANET23 - DIRECTION PLANET22 - DIRECTION
  PLANET21 - DIRECTION PLANET20 - DIRECTION STAR19 - DIRECTION STAR18 -
  DIRECTION PLANET17 - DIRECTION PHENOMENON16 - DIRECTION STAR15 - DIRECTION
  PLANET14 - DIRECTION STAR13 - DIRECTION STAR12 - DIRECTION PLANET11 -
  DIRECTION PHENOMENON10 - DIRECTION PHENOMENON9 - DIRECTION STAR8 - DIRECTION
  PLANET7 - DIRECTION PLANET6 - DIRECTION PHENOMENON5 - DIRECTION STAR4 -
  DIRECTION STAR1 - DIRECTION GROUNDSTATION2 - DIRECTION GROUNDSTATION0 -
  DIRECTION STAR3 - DIRECTION THERMOGRAPH4 - MODE SPECTROGRAPH2 - MODE
  THERMOGRAPH3 - MODE INFRARED0 - MODE IMAGE1 - MODE INSTRUMENT18 - INSTRUMENT
  INSTRUMENT17 - INSTRUMENT INSTRUMENT16 - INSTRUMENT SATELLITE7 - SATELLITE
  INSTRUMENT15 - INSTRUMENT INSTRUMENT14 - INSTRUMENT INSTRUMENT13 - INSTRUMENT
  SATELLITE6 - SATELLITE INSTRUMENT12 - INSTRUMENT INSTRUMENT11 - INSTRUMENT
  INSTRUMENT10 - INSTRUMENT SATELLITE5 - SATELLITE INSTRUMENT9 - INSTRUMENT
  INSTRUMENT8 - INSTRUMENT INSTRUMENT7 - INSTRUMENT SATELLITE4 - SATELLITE
  INSTRUMENT6 - INSTRUMENT SATELLITE3 - SATELLITE INSTRUMENT5 - INSTRUMENT
  INSTRUMENT4 - INSTRUMENT SATELLITE2 - SATELLITE INSTRUMENT3 - INSTRUMENT
  INSTRUMENT2 - INSTRUMENT SATELLITE1 - SATELLITE INSTRUMENT1 - INSTRUMENT
  INSTRUMENT0 - INSTRUMENT SATELLITE0 - SATELLITE)
 (:INIT (POINTING SATELLITE7 PLANET11) (POWER_AVAIL SATELLITE7)
  (ON_BOARD INSTRUMENT18 SATELLITE7) (ON_BOARD INSTRUMENT17 SATELLITE7)
  (ON_BOARD INSTRUMENT16 SATELLITE7) (CALIBRATION_TARGET INSTRUMENT18 STAR4)
  (SUPPORTS INSTRUMENT18 THERMOGRAPH4) (CALIBRATION_TARGET INSTRUMENT17 STAR1)
  (SUPPORTS INSTRUMENT17 SPECTROGRAPH2)
  (CALIBRATION_TARGET INSTRUMENT16 GROUNDSTATION2)
  (SUPPORTS INSTRUMENT16 THERMOGRAPH4) (POINTING SATELLITE6 PLANET17)
  (POWER_AVAIL SATELLITE6) (ON_BOARD INSTRUMENT15 SATELLITE6)
  (ON_BOARD INSTRUMENT14 SATELLITE6) (ON_BOARD INSTRUMENT13 SATELLITE6)
  (CALIBRATION_TARGET INSTRUMENT15 GROUNDSTATION0)
  (SUPPORTS INSTRUMENT15 THERMOGRAPH4)
  (CALIBRATION_TARGET INSTRUMENT14 GROUNDSTATION2)
  (SUPPORTS INSTRUMENT14 SPECTROGRAPH2) (CALIBRATION_TARGET INSTRUMENT13 STAR3)
  (SUPPORTS INSTRUMENT13 INFRARED0) (SUPPORTS INSTRUMENT13 THERMOGRAPH3)
  (POINTING SATELLITE5 PLANET6) (POWER_AVAIL SATELLITE5)
  (ON_BOARD INSTRUMENT12 SATELLITE5) (ON_BOARD INSTRUMENT11 SATELLITE5)
  (ON_BOARD INSTRUMENT10 SATELLITE5) (CALIBRATION_TARGET INSTRUMENT12 STAR1)
  (SUPPORTS INSTRUMENT12 INFRARED0)
  (CALIBRATION_TARGET INSTRUMENT11 GROUNDSTATION0)
  (SUPPORTS INSTRUMENT11 INFRARED0)
  (CALIBRATION_TARGET INSTRUMENT10 GROUNDSTATION0)
  (SUPPORTS INSTRUMENT10 INFRARED0) (SUPPORTS INSTRUMENT10 SPECTROGRAPH2)
  (SUPPORTS INSTRUMENT10 THERMOGRAPH4) (POINTING SATELLITE4 PHENOMENON9)
  (POWER_AVAIL SATELLITE4) (ON_BOARD INSTRUMENT9 SATELLITE4)
  (ON_BOARD INSTRUMENT8 SATELLITE4) (ON_BOARD INSTRUMENT7 SATELLITE4)
  (CALIBRATION_TARGET INSTRUMENT9 STAR3) (SUPPORTS INSTRUMENT9 INFRARED0)
  (CALIBRATION_TARGET INSTRUMENT8 GROUNDSTATION2) (SUPPORTS INSTRUMENT8 IMAGE1)
  (CALIBRATION_TARGET INSTRUMENT7 STAR3) (SUPPORTS INSTRUMENT7 SPECTROGRAPH2)
  (SUPPORTS INSTRUMENT7 THERMOGRAPH3) (POINTING SATELLITE3 STAR4)
  (POWER_AVAIL SATELLITE3) (ON_BOARD INSTRUMENT6 SATELLITE3)
  (CALIBRATION_TARGET INSTRUMENT6 GROUNDSTATION2)
  (SUPPORTS INSTRUMENT6 INFRARED0) (SUPPORTS INSTRUMENT6 SPECTROGRAPH2)
  (POINTING SATELLITE2 STAR19) (POWER_AVAIL SATELLITE2)
  (ON_BOARD INSTRUMENT5 SATELLITE2) (ON_BOARD INSTRUMENT4 SATELLITE2)
  (CALIBRATION_TARGET INSTRUMENT5 GROUNDSTATION2)
  (SUPPORTS INSTRUMENT5 INFRARED0) (SUPPORTS INSTRUMENT5 IMAGE1)
  (SUPPORTS INSTRUMENT5 THERMOGRAPH3) (CALIBRATION_TARGET INSTRUMENT4 STAR1)
  (SUPPORTS INSTRUMENT4 SPECTROGRAPH2) (SUPPORTS INSTRUMENT4 THERMOGRAPH4)
  (SUPPORTS INSTRUMENT4 THERMOGRAPH3) (POINTING SATELLITE1 STAR18)
  (POWER_AVAIL SATELLITE1) (ON_BOARD INSTRUMENT3 SATELLITE1)
  (ON_BOARD INSTRUMENT2 SATELLITE1)
  (CALIBRATION_TARGET INSTRUMENT3 GROUNDSTATION2)
  (SUPPORTS INSTRUMENT3 SPECTROGRAPH2) (SUPPORTS INSTRUMENT3 IMAGE1)
  (CALIBRATION_TARGET INSTRUMENT2 STAR4) (SUPPORTS INSTRUMENT2 SPECTROGRAPH2)
  (POINTING SATELLITE0 STAR19) (POWER_AVAIL SATELLITE0)
  (ON_BOARD INSTRUMENT1 SATELLITE0) (ON_BOARD INSTRUMENT0 SATELLITE0)
  (CALIBRATION_TARGET INSTRUMENT1 STAR3) (SUPPORTS INSTRUMENT1 THERMOGRAPH3)
  (SUPPORTS INSTRUMENT1 SPECTROGRAPH2)
  (CALIBRATION_TARGET INSTRUMENT0 GROUNDSTATION0) (SUPPORTS INSTRUMENT0 IMAGE1)
  (SUPPORTS INSTRUMENT0 THERMOGRAPH4))
 (:GOAL
  (AND (POINTING SATELLITE0 STAR19) (POINTING SATELLITE1 PLANET22)
       (POINTING SATELLITE2 STAR13) (POINTING SATELLITE3 PLANET14)
       (POINTING SATELLITE5 PLANET24) (POINTING SATELLITE7 STAR3)
       (HAVE_IMAGE PHENOMENON5 SPECTROGRAPH2)
       (HAVE_IMAGE PLANET6 SPECTROGRAPH2) (HAVE_IMAGE PLANET7 INFRARED0)
       (HAVE_IMAGE PHENOMENON9 INFRARED0) (HAVE_IMAGE PHENOMENON10 IMAGE1)
       (HAVE_IMAGE PLANET11 IMAGE1) (HAVE_IMAGE STAR12 THERMOGRAPH3)
       (HAVE_IMAGE STAR13 THERMOGRAPH3) (HAVE_IMAGE PLANET14 THERMOGRAPH4)
       (HAVE_IMAGE STAR15 THERMOGRAPH4) (HAVE_IMAGE PHENOMENON16 IMAGE1)
       (HAVE_IMAGE PLANET17 THERMOGRAPH3) (HAVE_IMAGE STAR18 IMAGE1)
       (HAVE_IMAGE PLANET20 IMAGE1) (HAVE_IMAGE PLANET21 INFRARED0)
       (HAVE_IMAGE PLANET22 IMAGE1) (HAVE_IMAGE PLANET23 THERMOGRAPH3)
       (HAVE_IMAGE PLANET24 INFRARED0))))