PROGRAM grades
IMPLICIT NONE
INTEGER :: scores(10) = (/85, 62, 45, 91, 38, 74, 55, 88, 61, 47/)
INTEGER :: i
CHARACTER(LEN=15) :: grade, remark
WRITE(*,*) "Student No.", "Score", "Grade", "Remark"
DO i = 1, 10
IF (scores(i) >= 80) THEN
grade = 'A'
remark = 'Distinction'
ELSE IF (scores(i) >= 60) THEN
grade = 'B'
remark = 'Credit'
ELSE IF (scores(i) >= 40) THEN
grade = 'C'
remark = 'Pass'
ELSE
grade = 'F'
remark = 'Fail'
END IF
WRITE(*,*) i, scores(i), grade, remark
END DO
END PROGRAM grades
