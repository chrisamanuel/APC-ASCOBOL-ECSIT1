      ******************************************************************
      * Author:
      * Date:
      * Purpose:
      * Tectonics: cobc
      ******************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID. YOUR-PROGRAM-NAME.

       ENVIRONMENT DIVISION.
       INPUT-OUTPUT SECTION.
       FILE-CONTROL.
           SELECT SalesFile ASSIGN TO "SALES.DAT"
               ORGANIZATION IS LINE SEQUENTIAL.

           SELECT SortSaleFile ASSIGN TO "SORTSALE.DAT"
               ORGANIZATION IS LINE SEQUENTIAL.

           SELECT AromaSalesFile ASSIGN TO "AROMASALES.DAT"
               ORGANIZATION IS LINE SEQUENTIAL.

           SELECT WorkFile ASSIGN TO "WORK.TMP".



       DATA DIVISION.
       FILE SECTION.
       FD SalesFile.

       01 Sales.
          02 SCustomerID          PIC 9(5).
          02 SCustomerName        PIC X(20).
          02 SOilID.
             03 FILLER            PIC X.
               88 EssentialOils   VALUE 'E'.
               88 BaseOils        VALUE 'B'.
             03 OilNumber         PIC 9(2).
          02 SUnitSize            PIC 9(1).
          02 SUnitsSold           PIC 9(3).
          02 FILLER               PIC X(5).

       FD SortSaleFile.


       FD AromaSalesFile.

       SD WorkFile.
       01 Work.
          02 WCustomerID           PIC 9(5).
          02 WCustomerName         PIC X(20).
          02 WOilID.
             03 FILLER             PIC X.
               88 EssentialOils    VALUE 'E'.
               88 BaseOils         VALUE 'B'.
             03 OilNumber          PIC 9(2).
          02 WUnitSize             PIC 9(1).
          02 WUnitsSold            PIC 9(3).
          02 FILLER                PIC X(5).


       WORKING-STORAGE SECTION.

       01 FILLER PIC X(67).
       01 Aromamora.
          02 FILLER                PIC X(24).
          02 FILLER                PIC X(30)
             VALUE "AROMAMORA SUMMARY SALES REPORT".
       01 HorizontalLine.
          02 FILLER                PIC X(23).
          02 FILLER                PIC

       PROCEDURE DIVISION.
       MAIN-PROCEDURE.
            DISPLAY "Hello world"
            STOP RUN.
       END PROGRAM YOUR-PROGRAM-NAME.
