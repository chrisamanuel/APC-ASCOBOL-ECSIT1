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

       01 Tax1             PIC 9(3)    VALUE 250.
       01 GrossPay         PIC 9(4)    VALUE 1000.
       01 SubtractTotal    PIC 9(4)    VALUE 2554.
       01 Tax2             PIC 9(4)    VALUE 0750.
       01 PRSI             PIC 9(4)    VALUE 0175.
       01 Pension          PIC 9(4)    VALUE 0125.
       01 Pay              PIC 9(4)    VALUE 2750.
       01 Deductions       PIC 9(4)    VALUE 1050.
       01 NetPay           PIC 9(4)    VALUE 2750.

       01 Dimensions       PIC 9(4)    VALUE 0250.
       01 Magnitude        PIC 9(4)V99 VALUE 0123.45.
       01 VatRate          PIC 9V99    VALUE 0.21.
       01 Sales            PIC 9(4)V99 VALUE 1245.50.
       01 Vat              PIC 9(4)V99 VALUE 2750.75.
       01 Fees             PIC 9(4)    VALUE 52.
       01 Members          PIC 9(4)    VALUE 1024.
       01 TotalFees        PIC 9(4)    VALUE 1743.
       01 SizeErrorMessage PIC X(10)   VALUE ALL "X".

       01 Amount1          PIC 9(4)    VALUE 2544.
       01 Amount2          PIC 9(3)    VALUE 354.
       01 Qty              PIC 9(5)    VALUE 31255.
       01 Units            PIC 9(3)    VALUE 115.
       01 Average          PIC 9(4)    VALUE 0000.
       01 Quot             PIC 9(3)    VALUE 115.
       01 Rem              PIC 9(2)    VALUE 95.

       01 Result           PIC 9(4)    VALUE 3333.
       01 Euros            PIC 9(4)V99 VALUE 1234.45.
       01 Punts            PIC 9(4)V99 VALUE 1256.75.
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
           SUBTRACT Tax1 FROM GrossPay, SubtractTotal.
           DISPLAY Tax1 "   " GrossPay "   " SubtractTotal.
           SUBTRACT Tax2, PRSI, Pension FROM Pay.
           DISPLAY Tax2 "   " PRSI "   " Pension "   " Pay.
           SUBTRACT Deductions FROM Pay GIVING NetPay.
           DISPLAY Deductions "   " Pay "   " NetPay.

           DISPLAY "MULTIPLY Examples".
           MULTIPLY 10 BY Dimensions, Magnitude.
           DISPLAY Dimensions "   " Magnitude.
           MULTIPLY VatRate BY Sales GIVING Vat.
           DISPLAY VatRate "   " Sales "   " VAT.
           MULTIPLY Fees BY Members GIVING TotalFees
            ON SIZE ERROR DISPLAY SizeErrorMessage
           END-MULTIPLY.
           DISPLAY Fees "   " Members "   " TotalFees.

           DISPLAY "DIVIDE Examples".
           DIVIDE 15 INTO Amount1 ROUNDED, Amount2.
           DISPLAY Amount1 "   " Amount2.
           DIVIDE Qty BY UNITS GIVING Average ROUNDED.
           DISPLAY Qty "   " Units "   " Average.
           DIVIDE 215 BY 10 GIVING Quot REMAINDER Rem.
           DISPLAY Quot "   " Rem.

           DISPLAY "COMPUTE Examples".
           COMPUTE Result = 90 - 7 * 3 + 50 / 2.
           DISPLAY Result.
           COMPUTE Euros ROUNDED = Punts / 0.787564.
           DISPLAY Euros.
       END PROGRAM YOUR-PROGRAM-NAME.
