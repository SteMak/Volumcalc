      SUBROUTINE CALC_MENU_PAGE1(MEASURE, PAGE)
        CHARACTER*80 MEASURE
        CHARACTER*2 CH
        CHARACTER*1 PAGE
        
        PRINT *, '                       ',
     +    '(0) Go to the menu'
        PRINT *, '                       ',
     +    '(1) Rectangular parallelepiped'
        PRINT *, '                       ',
     +    '(2) Tetrahedron'
        PRINT *, '                       ',
     +    '(3) Obelisk'
        PRINT *, '                       ',
     +    '(4) Wedge'
        PRINT *, '                       ',
     +    '(5) Circular straight cylinder'
        PRINT *, '                       ',
     +    '(6) Truncated circular cylinder'
        PRINT *, '                       ',
     +    '(7) Next page'
        
        CALL WRITE_SPACE(1)
        
        CALL READ_CHOICE(CH)
        
        IF (CH .EQ. '0') CALL SUB_MENU(MEASURE)
        IF (CH .EQ. '7') CALL CALC_MENU(MEASURE, '2')
        IF (.NOT.(CH .EQ. '0' .OR. CH .EQ. '1' .OR. CH .EQ. '2'
     +    .OR. CH .EQ. '3' .OR. CH .EQ. '4' .OR. CH .EQ. '5'
     +    .OR. CH .EQ. '6' .OR. CH .EQ. '7'))
     +    CALL CALC_MENU(MEASURE, PAGE)
     
        IF (CH .EQ. '1' .OR. CH .EQ. '2'.OR. CH .EQ. '3' 
     +    .OR. CH .EQ. '4' .OR. CH .EQ. '5' .OR. CH .EQ. '6')
     +    CALL CALCULATOR(MEASURE, PAGE, CH)
      END
      
      SUBROUTINE CALC_MENU_PAGE2(MEASURE, PAGE)
        CHARACTER*80 MEASURE
        CHARACTER*2 CH
        CHARACTER*1 PAGE
        
        PRINT *, '                       ',
     +    '(0) Go to the menu'
        PRINT *, '                       ',
     +    '(1) Previous page'
        PRINT *, '                       ',
     +    '(2) Cylinder segment'
        PRINT *, '                       ',
     +    '(3) Cylindrical tube'
        PRINT *, '                       ',
     +    '(4) Circular straight cone'
        PRINT *, '                       ',
     +    '(5) Truncated straight cone'
        PRINT *, '                       ',
     +    '(6) Sphere'
        PRINT *, '                       ',
     +    '(7) Next page'
        
        CALL WRITE_SPACE(1)
        
        CALL READ_CHOICE(CH)
        
        IF (CH .EQ. '0') CALL SUB_MENU(MEASURE)
        IF (CH .EQ. '1') CALL CALC_MENU(MEASURE, '1')
        IF (CH .EQ. '7') CALL CALC_MENU(MEASURE, '3')
        IF (.NOT.(CH .EQ. '0' .OR. CH .EQ. '1' .OR. CH .EQ. '2'
     +    .OR. CH .EQ. '3' .OR. CH .EQ. '4' .OR. CH .EQ. '5'
     +    .OR. CH .EQ. '6' .OR. CH .EQ. '7'))
     +    CALL CALC_MENU(MEASURE, PAGE)
     
        IF (CH .EQ. '2'.OR. CH .EQ. '3' .OR. CH .EQ. '4'
     +    .OR. CH .EQ. '5' .OR. CH .EQ. '6')
     +    CALL CALCULATOR(MEASURE, PAGE, CH)
      END
      
      SUBROUTINE CALC_MENU_PAGE3(MEASURE, PAGE)
        CHARACTER*80 MEASURE
        CHARACTER*2 CH
        CHARACTER*1 PAGE
        
        PRINT *, '                       ',
     +    '(0) Go to the menu'
        PRINT *, '                       ',
     +    '(1) Previous page'
        PRINT *, '                       ',
     +    '(2) Sphere sector'
        PRINT *, '                       ',
     +    '(3) Sphere segment'
        PRINT *, '                       ',
     +    '(4) Sphere layer'
        PRINT *, '                       ',
     +    '(5) Torus'
        PRINT *, '                       ',
     +    '(6) Sphere barrel'
        PRINT *, '                       ',
     +    '(7) Parabolic barrel'
        
        CALL WRITE_SPACE(1)
        
        CALL READ_CHOICE(CH)
        
        IF (CH .EQ. '0') CALL SUB_MENU(MEASURE)
        IF (CH .EQ. '1') CALL CALC_MENU(MEASURE, '2')
        IF (.NOT.(CH .EQ. '0' .OR. CH .EQ. '1' .OR. CH .EQ. '2'
     +    .OR. CH .EQ. '3' .OR. CH .EQ. '4' .OR. CH .EQ. '5'
     +    .OR. CH .EQ. '6' .OR. CH .EQ. '7'))
     +    CALL CALC_MENU(MEASURE, PAGE)
     
        IF (CH .EQ. '2'.OR. CH .EQ. '3' .OR. CH .EQ. '4'
     +    .OR. CH .EQ. '5' .OR. CH .EQ. '6' .OR. CH .EQ. '7')
     +    CALL CALCULATOR(MEASURE, PAGE, CH)
      END
