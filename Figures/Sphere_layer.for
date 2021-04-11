      SUBROUTINE CALC_SPHERE_LAYER(MEASURE)
        CHARACTER*80 MEASURE
        CHARACTER*80 A, B, C
        A = '1'
        B = '1'
        C = '1'
        CALL CALC_SPHERE_LAYER_MENU(MEASURE, A, B, C)
      END
      
      SUBROUTINE CALC_SPHERE_LAYER_MENU(MEASURE, A, B, C)
        CHARACTER*80 CON_SP, CON_CL, IN_BRACKETS, FROM_BRACKETS
        CHARACTER*80 VA, VB, VC
        CHARACTER*80 MEASURE, A, B, C
        CHARACTER*2 CH
        REAL CHTOIN
        
        VA = IN_BRACKETS(CON_SP(A, FROM_BRACKETS(MEASURE)))
        VB = IN_BRACKETS(CON_SP(B, FROM_BRACKETS(MEASURE)))
        VC = IN_BRACKETS(CON_SP(C, FROM_BRACKETS(MEASURE)))
        
        CALL WRITE_NAME()
        CALL WRITE_SPACE(3)
        PRINT *, '                                  ',
     +    'Sphere layer'
        CALL WRITE_SPACE(1)
        PRINT *, '                       ',
     +    '(0) Go to the menu'
        PRINT *, '                       ',
     +    '(1) Set base diameter ', VA(1:31)
        PRINT *, '                       ',
     +    '(2) Set top diameter ', VB(1:31)
        PRINT *, '                       ',
     +    '(3) Set height ', VC(1:31)
        
        CALL WRITE_SPACE(3)
        PRINT '(A, A, E15.8, A, A)', '                  ',
     +    '     VOLUME =', 3.1415926/6*CHTOIN(C)*
     +    (3*CHTOIN(A)**2/4+CHTOIN(B)**2/4*CHTOIN(C)**2),
     +    ' ', (CON_CL(MEASURE, '^3')(1:22))
        CALL WRITE_SPACE(1)
        
        CALL READ_CHOICE(CH)
        
        IF (CH .EQ. '0') CALL SUB_MENU(MEASURE)
        IF (CH .EQ. '1') CALL SET_PARAM_DIALOG
     +    (A, 'Enter the base diameter                 ')
        IF (CH .EQ. '2') CALL SET_PARAM_DIALOG
     +    (B, 'Enter the top diameter                  ')
        IF (CH .EQ. '3') CALL SET_PARAM_DIALOG
     +    (C, 'Enter the height                        ')
        IF (.NOT.(CH .EQ. '0')) 
     +    CALL CALC_SPHERE_LAYER_MENU(MEASURE, A, B, C)
      END
