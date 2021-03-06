IDENTIFICATION DIVISION.
PROGRAM-ID. TIME01.
ENVIRONMENT DIVISION.
DATA DIVISION.
WORKING-STORAGE SECTION.
01 CNT PIC 9(6) VALUE 0.
01 WCNT PIC 9(6) VALUE 0.
01 TMP PIC 9(1) VALUE 0.
01 MOD PIC 9(6) VALUE 0.
01 WTIME.
  02 HH PIC 9(2).
  02 MM PIC 9(2).
  02 SS PIC 9(2).
01 STIME PIC 9(10).
01 XTIME PIC 9(10).
01 ETIME PIC 9(10).
PROCEDURE DIVISION.
DISPLAY "!!! CNT 9(04) TYPE-IN !!!"
ACCEPT WCNT
ACCEPT WTIME FROM TIME
DISPLAY HH
DISPLAY MM
DISPLAY SS
COMPUTE STIME = HH * 3600 + MM * 60 + SS
DISPLAY STIME
*>PERFORM UNTIL CNT = 100000
*>  COMPUTE CNT = CNT + 1
*>  DISPLAY CNT
*>END-PERFORM
PERFORM VARYING CNT FROM 1 BY 1 UNTIL CNT > WCNT
  DIVIDE CNT BY 10 GIVING TMP REMAINDER MOD
  IF MOD = 0
    DISPLAY CNT
  END-IF
END-PERFORM
ACCEPT WTIME FROM TIME
DISPLAY HH
DISPLAY MM
DISPLAY SS
COMPUTE ETIME = HH * 3600 + MM * 60 + SS
COMPUTE XTIME = ETIME - STIME
DISPLAY XTIME
STOP RUN.
