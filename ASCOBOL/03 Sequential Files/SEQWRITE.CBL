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
           SELECT StudentFile ASSIGN TO "STUDENTS.DAT"
                      ORGANIZATION IS LINE SEQUENTIAL.
       DATA DIVISION.
       FILE SECTION.
       FD StudentFile.
       01  StudentDetails.
        02  StudentId       PIC 9(7).
        02  StudentName.
         03 Surname      PIC X(8).
         03 Initials     PIC XX.
        02  DateOfBirth.
         03 YOBirth      PIC 9(4).
         03 MOBirth      PIC 9(2).
         03 DOBirth      PIC 9(2).
        02  CourseCode      PIC X(4).
        02  Gender          PIC X.
       WORKING-STORAGE SECTION.
       PROCEDURE DIVISION.
       MAIN-PROCEDURE.
       Begin.
           OPEN OUTPUT StudentFile
           DISPLAY "Enter student details using template below."
                   "  Enter no data to end."

           PERFORM GetStudentDetails
           PERFORM UNTIL StudentDetails = SPACES
              WRITE StudentDetails
              PERFORM GetStudentDetails
           END-PERFORM
           CLOSE StudentFile.
           STOP RUN.

       GetStudentDetails.
           DISPLAY "Enter - StudId, Surname, Initials, YOB, MOB, DOB, "
                   "Course, Gender"
           DISPLAY "NNNNNNNSSSSSSSSIIYYYYMMDDCCCCG"
           ACCEPT  StudentDetails.
