      SUBROUTINE CALC_SPHERE(MEASURE)
        CHARACTER*80 MEASURE
        CHARACTER*80 A
        A = '1'
        CALL CALC_SPHERE_MENU(MEASURE, A)
      END
      
      SUBROUTINE CALC_SPHERE_MENU(MEASURE, A)
        CHARACTER*80 CON_SP, CON_CL, IN_BRACKETS, FROM_BRACKETS
        CHARACTER*80 VA
        CHARACTER*80 MEASURE, A
        CHARACTER*2 CH
        REAL CHTOIN
        
        VA = IN_BRACKETS(CON_SP(A, FROM_BRACKETS(MEASURE)))
        
        CALL WRITE_NAME()
        CALL WRITE_SPACE(3)
        PRINT *, '                                     ',
     +    'Sphere'
        CALL WRITE_SPACE(1)
        PRINT *, '                       ',
     +    '(0) Go to the menu'
        PRINT *, '                       ',
     +    '(1) Set radius ', VA(1:31)
        
        CALL WRITE_SPACE(5)
        PRINT '(A, A, E15.8, A, A)', '                  ',
     +    '     VOLUME =', 4*CHTOIN(A)**3*3.1415926/3,
     +    ' ', (CON_CL(MEASURE, '^3')(1:22))
        CALL WRITE_SPACE(1)
        
        CALL READ_CHOICE(CH)
        
        IF (CH .EQ. '0') CALL SUB_MENU(MEASURE)
        IF (CH .EQ. '1') CALL SET_PARAM_DIALOG
     +    (A, 'Enter the radius                        ')
        IF (.NOT.(CH .EQ. '0')) 
     +    CALL CALC_SPHERE_MENU(MEASURE, A, B)
      END
