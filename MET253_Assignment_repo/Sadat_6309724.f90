PROGRAM student_grades
IMPLICIT NONE 
INTEGER,DIMENSION(10) :: scores= (/85,62,45,91,38,74,55,88,61,47/) ! added (10) and scores to declare array size
INTEGER :: i
CHARACTER(len=1) ::grade
CHARACTER(len=11)::remark ! added remark variable because the assignment requires remark in the output
WRITE(*,'(A15,A10,A10,A15)') "S/N","SCORE","GRADE","REMARK" !ADDED WRITE STATEMENT BECAUSE THE ASSIGNMENT REQUIRES A NEATLY FORMATTED REPORT USING FORMAT STATEMENT

DO i=1,10
!UPDATED RANGES TO MATCH THE GRADING SCHEME IN THE ASSIGNMENT
!changed (score(i)) to (scores(i)) to match variable declaration
IF (scores(i)>= 80) THEN
grade ='A'
remark ='Distinction'
ELSE IF (scores(i)>=60) THEN
grade = 'B'
remark = 'Credit'
ELSE IF (scores(i)>= 40) THEN
grade = 'C'
remark = 'Pass'
ELSE
grade ='F'
remark = 'Fail'
END IF
WRITE(*,'(I15,I10,A10,A15)') i,scores(i),grade,remark !added 'remark' to the write statement so it appears in the report
END DO 
PRINT*,"End of Report"
END PROGRAM student_grades
!Ibrahim Sadat
