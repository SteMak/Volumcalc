      SUBROUTINE CALC_SPHERE_SECTOR(MEASURE)
        CHARACTER*80 MEASURE
        CHARACTER*80 A, B
        A = '1'
        B = '1'
        CALL CALC_SPHERE_SECTOR_MENU(MEASURE, A, B)
      END
      
      SUBROUTINE CALC_SPHERE_SECTOR_MENU(MEASURE, A, B)
        CHARACTER*80 CON_SP, CON_CL, IN_BRACKETS, FROM_BRACKETS
        CHARACTER*80 VA, VB
        CHARACTER*80 MEASURE, A, B
        CHARACTER*2 CH
        REAL CHTOIN
        
        VA = IN_BRACKETS(CON_SP(A, FROM_BRACKETS(MEASURE)))
        VB = IN_BRACKETS(CON_SP(B, FROM_BRACKETS(MEASURE)))
        
        CALL WRITE_NAME()
        CALL WRITE_SPACE(3)
        PRINT *, '                                  ',
     +    'Sphere sector'
        CALL WRITE_SPACE(1)
        PRINT *, '                       ',
     +    '(0) Go to the menu'
        PRINT *, '                       ',
     +    '(1) Set radius ', VA(1:31)
        PRINT *, '                       ',
     +    '(2) Set height ', VB(1:31)
        
        CALL WRITE_SPACE(4)
        PRINT '(A, A, E15.8, A, A)', '                  ',
     +    '     VOLUME =', CHTOIN(A)**2*CHTOIN(B)*3.1415926/3*2,
     +    ' ', (CON_CL(MEASURE, '^3')(1:22))
        CALL WRITE_SPACE(1)
        
        CALL READ_CHOICE(CH)
        
        IF (CH .EQ. '0') CALL SUB_MENU(MEASURE)
        IF (CH .EQ. '1') CALL SET_PARAM_DIALOG
     +    (A, 'Enter the base radius                   ')
        IF (CH .EQ. '2') CALL SET_PARAM_DIALOG
     +    (B, 'Enter the height of sphere segment      ')
        IF (.NOT.(CH .EQ. '0')) 
     +    CALL CALC_SPHERE_SECTOR_MENU(MEASURE, A, B)
      END