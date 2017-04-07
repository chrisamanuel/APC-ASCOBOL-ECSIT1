       IDENTIFICATION DIVISION.
       PROGRAM-ID. YOUR-PROGRAM-NAME.
       DATA DIVISION.
       FILE SECTION.
       WORKING-STORAGE SECTION.
       01 StudentName.
           02 FirstName PIC X(8)       VALUE "JOHN".
           02 Surname   PIC X(8)       VALUE "POWER".
       01 GrossPay      PIC 9(4)V99    VALUE 7325.78.
       01 CountyPop     PIC 9(6)       VALUE 111111.

       PROCEDURE DIVISION.
       MAIN-PROCEDURE.
           DISPLAY "StudentName".
           MOVE "COUGHLAN" TO Surname.
           MOVE "TOM" TO FirstName.
           DISPLAY StudentName.
           MOVE "FITZPATRICK" TO Surname.
           DISPLAY StudentName.
           MOVE "ALEXANDER" TO FirstName.
           DISPLAY StudentName.
           MOVE "JOHN    RYAN" TO StudentName.
           DISPLAY StudentName.
           MOVE ALL "x" TO StudentName.
           DISPLAY StudentName.

           DISPLAY "GrossPay".
           MOVE 12.4 TO GrossPay.
           DISPLAY GrossPay.
           MOVE 123.456 TO GrossPay.
           DISPLAY GrossPay.
           MOVE 12345.757 TO GrossPay.
           DISPLAY GrossPay.
           MOVE ZEROS TO GrossPay.
           DISPLAY GrossPay.
           MOVE 256347 TO GrossPay.
           DISPLAY GrossPay.

           DISPLAY "CountyPop".
           MOVE 987 TO CountyPop.
           DISPLAY CountyPop.
           MOVE 1235678 TO CountyPop.
           DISPLAY CountyPop.
           MOVE 24.56 TO CountyPop
           DISPLAY CountyPop.

       END PROGRAM YOUR-PROGRAM-NAME.
