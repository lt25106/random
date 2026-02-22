       IDENTIFICATION DIVISION.
       PROGRAM-ID. GUESS.
       
       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01  CURRENT_TIME PIC 9(8).
       01  ANS PIC 9(2).
       01  GUESS PIC 9(2).
       01  TRIES PIC 9(3) VALUE 0.

       PROCEDURE DIVISION.
           ACCEPT CURRENT_TIME FROM TIME.
           COMPUTE ANS = FUNCTION MOD(CURRENT_TIME, 100).
           PERFORM UNTIL ANS = GUESS
               ADD 1 TO TRIES
               DISPLAY "Guess the number from 0 to 99: "
               ACCEPT GUESS
               EVALUATE TRUE
                   WHEN GUESS < ANS
                       DISPLAY "Too low!"
                   WHEN GUESS > ANS
                       DISPLAY "Too high!"
                   WHEN GUESS = ANS
                       DISPLAY "Correct! You took " TRIES " tries."
               END-EVALUATE
           END-PERFORM.
           EXIT PROGRAM.
           
