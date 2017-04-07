      ******************************************************************
      * Author:
      * Date:
      * Purpose:
      * Tectonics: cobc
      ******************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID. YOUR-PROGRAM-NAME.
       DATA DIVISION.
       FILE SECTION.
       WORKING-STORAGE SECTION.
       01  Num1        PIC 9  VALUE ZEROS.
       01  Num2        PIC 9  VALUE ZEROS.
       01  Result      PIC 99 VALUE ZEROS.

       PROCEDURE DIVISION.
       MAIN-PROCEDURE.
           DISPLAY "Enter first number  (1 digit) : " WITH NO ADVANCING.
           ACCEPT Num1.
           DISPLAY "Enter second number (1 digit) : " WITH NO ADVANCING.
           ACCEPT Num2.
           MULTIPLY Num1 BY Num2 GIVING Result.
           DISPLAY "Result is = ", Result.
           STOP RUN.
       END PROGRAM YOUR-PROGRAM-NAME.
