       IDENTIFICATION DIVISION.
       PROGRAM-ID. YOUR-PROGRAM-NAME.
       DATA DIVISION.
       FILE SECTION.
       WORKING-STORAGE SECTION.
       01 Cash             PIC 9(3)    VALUE 123.
       01 AddTotal         PIC 9(4)    VALUE 1000.
       01 Cheques          PIC 9(4)    VALUE 1533.
       01 Males            PIC 9(3)    VALUE 611.
       01 Females          PIC 9(4)    VALUE 1225.
       01 TotalStudents    PIC 9(4)    VALUE 0000.

       01 Tax              PIC 9(3)    VALUE 250.
       01 GrossPay         PIC 9(4)    VALUE 1000.
       01 SubtractTotal    PIC 9(4)    VALUE 2554.
       01 PRSI             PIC 9(4)    VALUE 175.
       01 Pension          PIC 9(4)    VALUE 0000.
       01 Pay              PIC 9(4)    VALUE 0000.
       01 Deductions       PIC 9(4)    VALUE 0000.
       01 NetPay           PIC 9(4)    VALUE 0000.
       PROCEDURE DIVISION.
       MAIN-PROCEDURE.

           DISPLAY "ADD Examples".
           ADD Cash TO AddTotal.
           DISPLAY Cash "   " AddTotal.
           ADD Cash, 20 TO AddTotal.
           DISPLAY Cash "   " AddTotal.
           ADD Cash, Cheques GIVING AddTotal.
           DISPLAY Cash "   " Cheques "   " AddTotal.
           ADD Males TO Females GIVING TotalStudents.
           DISPLAY Males "   " Females "   " TotalStudents.

           DISPLAY "SUBTRACT Examples".
           SUBTRACT Tax FROM GrossPay, SubtractTotal.
           DISPLAY Tax "   " GrossPay "   " SubtractTotal.
           SUBTRACT Tax, PRSI, Pension FROM Pay.
           DISPLAY Tax "   " PRSI "   " Pay.
           SUBTRACT Deductions FROM Pay GIVING NetPay.
           DISPLAY Deductions "   " Pay "   " NetPay.

       END PROGRAM YOUR-PROGRAM-NAME.
