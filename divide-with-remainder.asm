      INP R0,2 // Dividend
      INP R1,2 // Divisor
      MOV R2,#0
DIVIDE:
      CMP R0,R1
      BLT END
      SUB R0,R0,R1
      ADD R2, R2, #1
      B DIVIDE
END:
      OUT R2,4 // Ans
      OUT R0,4 // Remainder
      HALT