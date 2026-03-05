SELECT instructor_id,CONCAT(ins_name, ' ' ,ins_surname) AS FULL_NAME,salary
FROM instructor
WHERE instructor_id=();

SELECT instructor_id,ins_name,ins_surname,salary*12 AS Year_Salary
FROM instructor
WHERE salary*12=(
    SELECT salary*12
    FROM instructor
    WHERE ins_name='Faruk'
);

SELECT Instructor.instructor_id,ins_name,ins_surname,semester_start_date,semester_end_date
FROM Instructor,Schedules
WHERE Instructor.instructor_id = Schedules.instructor_id
AND Instructor.instructor_id=45;

SELECT Student.student_id,s_name,s_surname,semester_start_date,semester_end_date
FROM Student,Schedules
WHERE Student.student_id = Schedules.student_id
AND s_surname LIKE 'A%';

SELECT Instructor.instructor_id,ins_name,ins_surname,section_id,NEXT_DAY(current_date,Section.day)
FROM Instructor,Section
WHERE Instructor.instructor_id = Section.instructor_id;

SELECT Course.course_id,Course.course_name,Course.credit,Schedules.semester_start_date,Schedules.semester_end_date
FROM Course
LEFT JOIN Schedules
    ON Course.course_id = Schedules.course_id
ORDER BY Course.credit ASC;

SELECT
    Course.course_id,
    Course.course_name,Course.credit,Student.student_id,Student.s_name,Student.s_surname,Student.cgpa
FROM Course
RIGHT JOIN Student
    ON Course.course_id = Student.course_id
ORDER BY Student.cgpa DESC;

SELECT COUNT(*) AS Takes_343_Course
FROM Course,Student
WHERE Course.course_id=Student.course_id AND Student.course_id=343;

SELECT * , DATEDIFF(semester_end_date,semester_start_date) AS Semester_Time
FROM Schedules;

SELECT class_code,MIN(capacity) AS MİN_Capacity
FROM Classroom;

SELECT department_id,department_name,AVG(budget) AS AVERAGE_BUDGET
FROM Department;

SELECT student_id,course_id,UPPER(CONCAT(s_name, ' ', s_surname)) AS full_name,cgpa
FROM Student
ORDER BY cgpa ASC;

SELECT department_id,department_name,SUM(budget) AS SUM_BUDGET
FROM Department
GROUP BY department_name;

SELECT student_id,course_id,LENGTH(CONCAT(s_name,s_surname)) AS full_name_length,cgpa
FROM Student;

SELECT Student.student_id,Schedules.schedule_id,Course.course_name,Course.course_id
FROM Student,Schedules,Course
WHERE Course.course_id=Student.course_id AND Course.course_id=Schedules.course_id;