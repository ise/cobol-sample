IDENTIFICATION DIVISION.
PROGRAM-ID. HELLO_WORLD.
AUTHOR. TAKEUCHI.
DATE-WRITTEN. 2017-03-06.
ENVIRONMENT DIVISION.
DATA DIVISION.
WORKING-STORAGE SECTION.
01 CNT PIC 9(3) VALUE 0.
PROCEDURE DIVISION.
  PERFORM 100 TIMES
    ADD 1 TO CNT
    DISPLAY "COUNT =" CNT
  END-PERFORM
STOP RUN.
