IDENTIFICATION DIVISION.
PROGRAM-ID. HELLO_WORLD.
AUTHOR. TAKEUCHI.
DATE-WRITTEN. 2017-03-06.
ENVIRONMENT DIVISION.
DATA DIVISION.
WORKING-STORAGE SECTION.
01 CNT PIC 9(3) VALUE 0.
PROCEDURE DIVISION.
A. ADD 1 TO CNT
  DISPLAY "COUNT =" CNT
  IF CNT = 100
    STOP RUN
    ELSE GO TO A
  END-IF.
