      SUBROUTINE CALC_WEDGE(MEASURE)
        CHARACTER*80 MEASURE
        CHARACTER*80 A, B, C, D
        A = '1'
        B = '1'
        C = '1'
        D = '1'
        CALL CALC_WEDGE_MENU(MEASURE, A, B, C, D)
      END
      
      SUBROUTINE CALC_WEDGE_MENU(MEASURE, A, B, C, D)
        CHARACTER*80 CON_SP, CON_CL, IN_BRACKETS, FROM_BRACKETS
        CHARACTER*80 VA, VB, VC, VD
        CHARACTER*80 MEASURE, A, B, C, D
        CHARACTER*2 CH
        REAL CHTOIN
        
        VA = IN_BRACKETS(CON_SP(A, FROM_BRACKETS(MEASURE)))
        VB = IN_BRACKETS(CON_SP(B, FROM_BRACKETS(MEASURE)))
        VC = IN_BRACKETS(CON_SP(C, FROM_BRACKETS(MEASURE)))
        VD = IN_BRACKETS(CON_SP(D, FROM_BRACKETS(MEASURE)))
        
        CALL WRITE_NAME()
        CALL WRITE_SPACE(3)
        PRINT *, '                                      ',
     +    'Wedge'
        CALL WRITE_SPACE(1)
        PRINT *, '                       ',
     +    '(0) Go to the menu'
        PRINT *, '                       ',
     +    '(1) Set base length ', VA(1:31)
        PRINT *, '                       ',
     +    '(2) Set base width ', VB(1:31)
        PRINT *, '                       ',
     +    '(3) Set top length ', VC(1:31)
        PRINT *, '                       ',
     +    '(4) Set height ', VD(1:31)
        
        CALL WRITE_SPACE(2)
        PRINT '(A, A, E15.8, A, A)', '                  ',
     +    '     VOLUME =', 
     +    (2*CHTOIN(A)+CHTOIN(C))*CHTOIN(B)*CHTOIN(D)/6,
     +    ' ', (CON_CL(MEASURE, '^3')(1:22))
        CALL WRITE_SPACE(1)
        
        CALL READ_CHOICE(CH)
        
        IF (CH .EQ. '0') CALL SUB_MENU(MEASURE)
        IF (CH .EQ. '1') CALL SET_PARAM_DIALOG
     +    (A, 'Enter the base length                   ')
        IF (CH .EQ. '2') CALL SET_PARAM_DIALOG
     +    (B, 'Enter the base width                    ')
        IF (CH .EQ. '3') CALL SET_PARAM_DIALOG
     +    (C, 'Enter the top length                    ')
        IF (CH .EQ. '4') CALL SET_PARAM_DIALOG
     +    (D, 'Enter the height                        ')
        IF (.NOT.(CH .EQ. '0'))
     +    CALL CALC_WEDGE_MENU(MEASURE, A, B, C, D)
      END
