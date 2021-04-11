      SUBROUTINE CALC_TETRAHEDRON(MEASURE)
        CHARACTER*80 MEASURE
        CHARACTER*80 A, B, C, D, E, F
        A = '1'
        B = '1'
        C = '1'
        D = '1'
        E = '1'
        F = '1'
        CALL CALC_TETRAHEDRON_MENU(MEASURE, A, B, C, D, E, F)
      END
      
      SUBROUTINE CALC_TETRAHEDRON_MENU(MEASURE, A, B, C, D, E, F)
        CHARACTER*80 CON_SP, CON_CL, IN_BRACKETS, FROM_BRACKETS
        CHARACTER*80 VA, VB, VC, VD, VE, VF
        CHARACTER*80 MEASURE, A, B, C, D, E, F
        CHARACTER*2 CH
        REAL CHTOIN, HARD_CALC_TETRAHEDRON
        
        VA = IN_BRACKETS(CON_SP(A, FROM_BRACKETS(MEASURE)))
        VB = IN_BRACKETS(CON_SP(B, FROM_BRACKETS(MEASURE)))
        VC = IN_BRACKETS(CON_SP(C, FROM_BRACKETS(MEASURE)))
        VD = IN_BRACKETS(CON_SP(D, FROM_BRACKETS(MEASURE)))
        VE = IN_BRACKETS(CON_SP(E, FROM_BRACKETS(MEASURE)))
        VF = IN_BRACKETS(CON_SP(F, FROM_BRACKETS(MEASURE)))
        
        CALL WRITE_NAME()
        CALL WRITE_SPACE(3)
        PRINT *, '                                   ',
     +    'Tetrahedron'
        CALL WRITE_SPACE(1)
        PRINT *, '                       ',
     +    '(0) Go to the menu'
        PRINT *, '                       ',
     +    '(1) Set OA side length ', VA(1:31)
        PRINT *, '                       ',
     +    '(2) Set OB side length ', VB(1:31)
        PRINT *, '                       ',
     +    '(3) Set OC side length ', VC(1:31)
        PRINT *, '                       ',
     +    '(4) Set BC side length ', VD(1:31)
        PRINT *, '                       ',
     +    '(5) Set CA side length ', VE(1:31)
        PRINT *, '                       ',
     +    '(6) Set AB side length ', VF(1:31)
        
        PRINT '(A, A, E15.8, A, A)', '                  ',
     +    '     VOLUME =', HARD_CALC_TETRAHEDRON(CHTOIN(A), 
     +    CHTOIN(B), CHTOIN(C), CHTOIN(D), CHTOIN(E), CHTOIN(F)),
     +    ' ', (CON_CL(MEASURE, '^3')(1:22))
        CALL WRITE_SPACE(1)
        
        CALL READ_CHOICE(CH)
        
        IF (CH .EQ. '0') CALL SUB_MENU(MEASURE)
        IF (CH .EQ. '1') CALL SET_PARAM_DIALOG
     +    (A, 'Enter the OA side length                ')
        IF (CH .EQ. '2') CALL SET_PARAM_DIALOG
     +    (B, 'Enter the OB side length                ')
        IF (CH .EQ. '3') CALL SET_PARAM_DIALOG
     +    (C, 'Enter the OC side length                ')
        IF (CH .EQ. '4') CALL SET_PARAM_DIALOG
     +    (D, 'Enter the BC side length                ')
        IF (CH .EQ. '5') CALL SET_PARAM_DIALOG
     +    (E, 'Enter the CA side length                ')
        IF (CH .EQ. '6') CALL SET_PARAM_DIALOG
     +    (F, 'Enter the AB side length                ')
        IF (.NOT.(CH .EQ. '0'))
     +    CALL CALC_TETRAHEDRON_MENU(MEASURE, A, B, C, D, E, F)
      END
