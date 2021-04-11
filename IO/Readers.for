      SUBROUTINE READ_CHOICE(CH)
        CHARACTER*2 CH
        
        PRINT '(A, \)', '               ',
     +    'Enter your choice: '
        
        READ '(A)', CH
      END
      
      SUBROUTINE READ_MEASURE(MEASURE)
        CHARACTER*18 MEASURE
        
        PRINT '(A, \)', '               ',
     +    'Enter its name: '
        
        READ '(A)', MEASURE
      END
      
      SUBROUTINE READ_PARAM(VALUE)
        CHARACTER*10 VALUE
        
        PRINT '(A, \)', '               ',
     +    'Enter your value: '
        
        READ '(A)', VALUE
      END
