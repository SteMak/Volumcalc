      REAL FUNCTION HARD_CALC_TETRAHEDRON(A, B, C, D, E, F)
        REAL A, B, C, D, E, F, RES
        
        RES = (-2*(A**4)*(D**2)
     +    +2*(A**2)*(B**2)*(D**2)
     +    +2*(A**2)*(B**2)*(E**2)
     +    -2*(A**2)*(B**2)*(F**2)
     +    +2*(A**2)*(C**2)*(D**2)
     +    -2*(A**2)*(C**2)*(E**2)
     +    +2*(A**2)*(C**2)*(F**2)
     +    -2*(A**2)*(D**4)
     +    +2*(A**2)*(D**2)*(E**2)
     +    +2*(A**2)*(D**2)*(F**2)
     +    -2*(B**4)*(E**2)
     +    -2*(B**2)*(C**2)*(D**2)
     +    +2*(B**2)*(C**2)*(E**2)
     +    +2*(B**2)*(C**2)*(F**2)
     +    +2*(B**2)*(E**2)*(D**2)
     +    -2*(B**2)*(E**4)
     +    +2*(B**2)*(E**2)*(F**2)
     +    -2*(C**4)*(F**2)
     +    +2*(F**2)*(C**2)*(D**2)
     +    +2*(E**2)*(C**2)*(F**2)
     +    -2*(C**2)*(F**4)
     +    -2*(F**2)*(E**2)*(D**2))
     +    /288
        HARD_CALC_TETRAHEDRON = RES
      END
      
      REAL FUNCTION HARD_CALC_OBELISK(A, B, C, D, E)
        REAL A, B, C, D, E, RES
        
        RES = E*INT((2*A+B)*C+(2*B+A)*D)/6
        HARD_CALC_OBELISK = RES
      END
      
      REAL FUNCTION HARD_CALC_CYLINDER_SEGMENT(A, B, C, D, E)
        REAL A, B, C, D, E, RES
        
        RES = E*INT(A/2*(3*C**2-A**2/4)+3*C**2*(D-C)*B)/(3*D)
        HARD_CALC_CYLINDER_SEGMENT = RES
      END
