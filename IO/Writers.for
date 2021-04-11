      SUBROUTINE WRITE_NAME()
        CALL WRITE_SPACE(5)
        
        PRINT *, '     _     _  ____    _     _   _   __   _ ',
     +    '      _____   ___      _     _____  '
        PRINT *, '    | |  / / / __ \  / /   / / / / /  | / |',
     +    '     / ___/  /   |    / /   / ___/  '
        PRINT *, '    | | / / / / / / / /   / / / / / / |/  |', 
     +    '    / /     / /| |   / /   / /      '
        PRINT *, '    | |/ / / /_/ / / /_  / /_/ / / /|  /| |',
     +    '   / /__   / ___ |  / /_  / /__     '
        PRINT *, '    |___/  \____/ /____/ \____/ /_/ |_/ |_|',
     +    '   \____/ /_/  |_| /____/ \____/    '
      END
      
      SUBROUTINE WRITE_SPACE(N)
        INTEGER N
        
        DO K = 1, N
          PRINT *, ' '
        END DO
      END
      
      SUBROUTINE WRITE_PAGE(PAGE)
        CHARACTER*1 PAGE
        
        PRINT *, '                                     ',
     +    'PAGE ', PAGE
      END
