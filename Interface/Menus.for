      SUBROUTINE MAIN_MENU(MEASURE)
        CHARACTER*80 MEASURE
        CHARACTER*2 CH
        
        CALL WRITE_NAME()
        CALL WRITE_SPACE(5)
        
        PRINT *, '                       ',
     +    '(0) Go to the volume calculator =)'
        PRINT *, '                       ',
     +    '(1) Exit the program :{'
        
        CALL WRITE_SPACE(7)
        
        CALL READ_CHOICE(CH)
        
        IF (CH .EQ. '0') CALL SUB_MENU(MEASURE)
        IF (CH .EQ. '1') STOP
        IF (.NOT.(CH .EQ. '0' .OR. CH .EQ. '1'))
     +    CALL MAIN_MENU(MEASURE)
      END
      
      SUBROUTINE SUB_MENU(MEASURE)
        CHARACTER*80 MEASURE
        CHARACTER*2 CH
        
        CALL WRITE_NAME()
        CALL WRITE_SPACE(5)
        
        PRINT *, '                       ',
     +    '(0) Go to the main menu'
        PRINT *, '                       ',
     +    '(1) Choose unit of measure ', MEASURE(1:20)
        PRINT *, '                       ',
     +    '(2) LET ME CALC!!!'
        
        CALL WRITE_SPACE(6)
        
        CALL READ_CHOICE(CH)
        
        IF (CH .EQ. '0') CALL MAIN_MENU(MEASURE)
        IF (CH .EQ. '1') CALL MEASURE_MENU(MEASURE)
        IF (CH .EQ. '2') CALL CALC_MENU(MEASURE, '1')
        IF (.NOT.(CH .EQ. '0' .OR. CH .EQ. '1' .OR. CH .EQ. '2'))
     +    CALL SUB_MENU(MEASURE)
      END
      
      SUBROUTINE MEASURE_MENU(MEASURE)
        CHARACTER*80 MEASURE
        CHARACTER*2 CH
        
        CALL WRITE_NAME()
        CALL WRITE_SPACE(5)
        
        PRINT *, '                       ',
     +    '(0) Keep current unit of measure ', MEASURE(1:20)
        PRINT *, '                       ',
     +    '(1) Meter (m)'
        PRINT *, '                       ',
     +    '(2) Centimeter (cm)'
        PRINT *, '                       ',
     +    '(3) Millimeter (mm)'
        PRINT *, '                       ',
     +    '(4) Personal option'
        
        CALL WRITE_SPACE(4)
        
        CALL READ_CHOICE(CH)
        
        IF (CH .EQ. '1') MEASURE = '(m)'
        IF (CH .EQ. '2') MEASURE = '(cm)'
        IF (CH .EQ. '3') MEASURE = '(mm)'
        IF (CH .EQ. '4') CALL READ_MEASURE_DIALOG(MEASURE)
        IF (.NOT.(CH .EQ. '0' .OR. CH .EQ. '1' .OR. CH .EQ. '2'
     +    .OR. CH .EQ. '3' .OR. CH .EQ. '4')) THEN
          CALL MEASURE_MENU(MEASURE)
        ELSE
          CALL SUB_MENU(MEASURE)
        END IF
      END
      
      SUBROUTINE CALC_MENU(MEASURE, PAGE)
        CHARACTER*80 MEASURE
        CHARACTER*1 PAGE
        
        CALL WRITE_NAME()
        CALL WRITE_SPACE(3)
        CALL WRITE_PAGE(PAGE)
        CALL WRITE_SPACE(1)
        
        IF (PAGE .EQ. '1') CALL CALC_MENU_PAGE1(MEASURE, PAGE)
        IF (PAGE .EQ. '2') CALL CALC_MENU_PAGE2(MEASURE, PAGE)
        IF (PAGE .EQ. '3') CALL CALC_MENU_PAGE3(MEASURE, PAGE)
      END
