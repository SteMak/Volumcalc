      SUBROUTINE READ_MEASURE_DIALOG(MEASURE)
        CHARACTER*80 MEASURE, IN_BRACKETS
        
        CALL WRITE_NAME()
        CALL WRITE_SPACE(5)
        
        PRINT *, '                       ',
     +    'Enter your own unit of measure'
        CALL WRITE_SPACE(8)
        CALL READ_MEASURE(MEASURE)
        MEASURE = IN_BRACKETS(MEASURE)
      END
      
      SUBROUTINE SET_PARAM_DIALOG(VAL, TEXT)
        CHARACTER*80 VAL
        CHARACTER*40 TEXT
        
        CALL WRITE_NAME()
        CALL WRITE_SPACE(5)
        
        PRINT *, '                       ', TEXT
        CALL WRITE_SPACE(8)
        CALL READ_PARAM(VAL)
      END
