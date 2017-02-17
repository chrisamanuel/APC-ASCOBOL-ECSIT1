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
       PROCEDURE DIVISION.
       MAIN-PROCEDURE.
           TopLevel.
           DISPLAY "In TopLevel. Starting to run program"
           PERFORM OneLevelDown
           DISPLAY "Back in TopLevel.".
           STOP RUN.

           TwoLevelsDown.
           DISPLAY ">>>>>>>> Now in TwoLevelsDown."
           PERFORM ThreeLevelsDown.
           DISPLAY ">>>>>>>> Back in TwoLevelsDown.".

           OneLevelDown.
           DISPLAY ">>>> Now in OneLevelDown"
           PERFORM TwoLevelsDown
           DISPLAY ">>>> Back in OneLevelDown".

           ThreeLevelsDown.
           DISPLAY ">>>>>>>>>>>> Now in ThreeLevelsDown".
           STOP RUN.
       END PROGRAM YOUR-PROGRAM-NAME.
