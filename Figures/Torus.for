      SUBROUTINE CALC_TORUS(MEASURE)
        CHARACTER*80 MEASURE
        CHARACTER*80 A, B
        A = '1'
        B = '1'
        CALL CALC_TORUS_MENU(MEASURE, A, B)
      END
      
      SUBROUTINE CALC_TORUS_MENU(MEASURE, A, B)
        CHARACTER*80 CON_SP, CON_CL, IN_BRACKETS, FROM_BRACKETS
        CHARACTER*80 VA, VB
        CHARACTER*80 MEASURE, A, B
        CHARACTER*2 CH
        REAL CHTOIN
        
        VA = IN_BRACKETS(CON_SP(A, FROM_BRACKETS(MEASURE)))
        VB = IN_BRACKETS(CON_SP(B, FROM_BRACKETS(MEASURE)))
        
        CALL WRITE_NAME()
        CALL WRITE_SPACE(3)
        PRINT *, '                                      ',
     +    'Torus'
        CALL WRITE_SPACE(1)
        PRINT *, '                       ',
     +    '(0) Go to the menu'
        PRINT *, '                       ',
     +    '(1) Set external radius ', VA(1:31)
        PRINT *, '                       ',
     +    '(2) Set internal radius ', VB(1:31)
        
        CALL WRITE_SPACE(4)
        PRINT '(A, A, E15.8, A, A)', '                  ',
     +    '     VOLUME =', 2*3.1415926**2*CHTOIN(A)*CHTOIN(B)**2,
     +    ' ', (CON_CL(MEASURE, '^3')(1:22))
        CALL WRITE_SPACE(1)
        
        CALL READ_CHOICE(CH)
        
        IF (CH .EQ. '0') CALL SUB_MENU(MEASURE)
        IF (CH .EQ. '1') CALL SET_PARAM_DIALOG
     +    (A, 'Enter the external radius               ')
        IF (CH .EQ. '2') CALL SET_PARAM_DIALOG
     +    (B, 'Enter the internal radius               ')
        IF (.NOT.(CH .EQ. '0')) 
     +    CALL CALC_TORUS_MENU(MEASURE, A, B)
      END
