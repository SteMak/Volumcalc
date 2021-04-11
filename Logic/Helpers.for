      CHARACTER*80 FUNCTION IN_BRACKETS(STR)
        CHARACTER*80 STR, M
        INTEGER L, N
        M = '(' // STR
        DO K = 1, 80
          IF(M(K:K) .EQ. ' ') THEN
            IF(N .NE. K-1) L = K
            N = K
          END IF
        END DO
        M(L:L) = ')'
        IN_BRACKETS = M
      END
      
      CHARACTER*80 FUNCTION FROM_BRACKETS(STR)
        CHARACTER*80 STR, M
        DO K = 1, 80
          IF(STR(K:K) .EQ. ')') M = STR(2:(K-1))
        END DO
        FROM_BRACKETS = M
      END
      
      CHARACTER*80 FUNCTION CON_SP(STR1, STR2)
        CHARACTER*80 STR1, STR2
        INTEGER L
        L = 0
        DO K = 1, 80
          IF(STR1(K:K) .EQ. ' ' .AND. L .EQ. 0) L = K-1
        END DO
        CON_SP = STR1(1:L) // ' ' // STR2
      END
      
      CHARACTER*80 FUNCTION CON_CL(STR1, STR2)
        CHARACTER*80 STR1, STR2
        INTEGER L, N
        N = 0
        L = 0
        DO K = 1, 80
          IF(STR1(K:K) .EQ. ')' .AND. L .EQ. 0) L = K
        END DO
        DO K = 1, 80
          IF(STR2(K:K) .EQ. ' ' .AND. N .EQ. 0) N = K-1
        END DO
        CON_CL = STR1(1:L) // STR2(1:N)
      END
      
      REAL FUNCTION CHTOIN(CH)
        CHARACTER*80 CH
        REAL RES_RE, RES_IM
        INTEGER C
        LOGICAL POINT
        
        RES_RE = 0
        RES_IM = 0
        C = 1
        POINT = .FALSE.
        DO K = 1, 80
          IF(CH(K:K) .EQ. '.') POINT = .TRUE.
          IF (CH(K:K) .EQ. '0' .OR. CH(K:K) .EQ. '1' .OR.
     +      CH(K:K) .EQ. '2' .OR. CH(K:K) .EQ. '3' .OR.
     +      CH(K:K) .EQ. '4' .OR. CH(K:K) .EQ. '5' .OR.
     +      CH(K:K) .EQ. '6' .OR. CH(K:K) .EQ. '7' .OR.
     +      CH(K:K) .EQ. '8' .OR. CH(K:K) .EQ. '9') THEN
            IF(POINT) THEN
              IF(CH(K:K) .EQ. '0') RES_IM = RES_IM * 10 + 0
              IF(CH(K:K) .EQ. '1') RES_IM = RES_IM * 10 + 1
              IF(CH(K:K) .EQ. '2') RES_IM = RES_IM * 10 + 2
              IF(CH(K:K) .EQ. '3') RES_IM = RES_IM * 10 + 3
              IF(CH(K:K) .EQ. '4') RES_IM = RES_IM * 10 + 4
              IF(CH(K:K) .EQ. '5') RES_IM = RES_IM * 10 + 5
              IF(CH(K:K) .EQ. '6') RES_IM = RES_IM * 10 + 6
              IF(CH(K:K) .EQ. '7') RES_IM = RES_IM * 10 + 7
              IF(CH(K:K) .EQ. '8') RES_IM = RES_IM * 10 + 8
              IF(CH(K:K) .EQ. '9') RES_IM = RES_IM * 10 + 9
              C = C * 10
            ELSE
              IF(CH(K:K) .EQ. '0') RES_RE = RES_RE * 10 + 0
              IF(CH(K:K) .EQ. '1') RES_RE = RES_RE * 10 + 1
              IF(CH(K:K) .EQ. '2') RES_RE = RES_RE * 10 + 2
              IF(CH(K:K) .EQ. '3') RES_RE = RES_RE * 10 + 3
              IF(CH(K:K) .EQ. '4') RES_RE = RES_RE * 10 + 4
              IF(CH(K:K) .EQ. '5') RES_RE = RES_RE * 10 + 5
              IF(CH(K:K) .EQ. '6') RES_RE = RES_RE * 10 + 6
              IF(CH(K:K) .EQ. '7') RES_RE = RES_RE * 10 + 7
              IF(CH(K:K) .EQ. '8') RES_RE = RES_RE * 10 + 8
              IF(CH(K:K) .EQ. '9') RES_RE = RES_RE * 10 + 9
            END IF
          END IF
        END DO
        
        CHTOIN = RES_RE + RES_IM / C
      END
