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
       01 SortSale                PIC X(33).

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
       01  Oils-Table.
           02  Oil-Cost-Values.
               03 FILLER               PIC X(40)
                       VALUE "0041003200450050002910250055003900650075".
               03 FILLER               PIC X(40)
                       VALUE "0080004400500063006500550085004812500065".
               03 FILLER               PIC X(40)
                       VALUE "0060005500670072006501250085006511150105".
           02  FILLER REDEFINES Oil-Cost-VALUES.
               03 OIL-COST           PIC 99V99 OCCURS 30 TIMES.

       01 FILLER                   PIC X(57).
       01 Aromamora.
          02 FILLER                PIC X(14).
          02 FILLER                PIC X(30)
             VALUE "AROMAMORA SUMMARY SALES REPORT".
       01 HorizontalLine.
          02 FILLER                PIC X(13).
          02 FILLER                PIC X(32) VALUE ALL '-'.

       01 FILLER                   PIC X(57).
       01 FILLER                   PIC X(57).

       01 Title.
          02 FILLER                PIC X.
          02 FILLER                PIC X(13) VALUE "CUSTOMER NAME".
          02 FILLER                PIC X(8).
          02 FILLER                PIC X(7) VALUE "CUST-ID".
          02 FILLER                PIC X(3).
          02 FILLER                PIC X(5) VALUE "SALES".
          02 FILLER                PIC X(3).
          02 FILLER                PIC X(8) VALUE "QTY SOLD".
          02 FILLER                PIC X(8).
          02 FILLER                PIC X(11) VALUE "SALES VALUE".

       01 FILLER                   PIC X(57).

       01  Cust-Sales-Line.
           02  CustomerName        PIC X(20).
           02  CustomerID          PIC BBB9(5).
           02  CustomerSales       PIC BBBBBZZ9.
           02  CustomerSold        PIC BBBBBZZ,ZZ9.
           02  CustomerSalesValue  PIC BBBB$$$,$$9.99.

       PROCEDURE DIVISION.
       MAIN-PROCEDURE.
            DISPLAY "Hello world"
            STOP RUN.
       END PROGRAM YOUR-PROGRAM-NAME.
