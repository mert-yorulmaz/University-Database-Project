INSERT INTO Course(course_id,course_name,credit)
VALUES
(351,'Operating Systems',4),
(343,'Database Management Systems and Programming',4),
(321,'Signals and Systems',4),
(203,'Differential Equations',3),
(100,'Modern Turkish History',0),
(102,'Introduction to Computer Engineering',3);

INSERT INTO Department(department_id,department_name,budget)
VALUES
(21,'Computer Engineering',750000),
(22,'Software Engineering',800000),
(23,'Business Management',200000),
(24,'Interior Architecture',500000),
(25,'Artificial Intelligence Engineering',600000),
(26,'Computer Engineering',750000);

INSERT INTO Instructor(instructor_id,ins_name,ins_surname,salary)
VALUES
(45,'Ahmet','Musa',52500),
(46,'Faruk','Tezcan',33700),
(47,'Selin','Bozkurt',45000),
(48,'İbrahim','Sangare',61000),
(49,'Leyla','Su',48600);

INSERT INTO Classroom(class_code,capacity)
VALUES
('ST109',80),
('ST122',54),
('ST231',25),
('CL104',67),
('GE122',78),
('ST236',51);

INSERT INTO Student(student_id,course_id,s_name,s_surname,cgpa)
VALUES
(22314700,203,'Mert','Yorulmaz',3.70),
(22207964,343,'Furkan','Uzun',3.10),
(22314200,351,'Muhammed','Yılmaz',2.52),
(22215840,321,'Elif','Arslan',1.94),
(22112752,100,'Deniz','Aksoy',1.68),
(22207663,102,'Umut','Sevinç',2.46);

INSERT INTO Section(section_id,instructor_id,day,class_code)
VALUES
(1530,46,'Friday','CL104'),
(830,45,'Monday','GE122'),
(1130,48,'Wednesday','ST109'),
(1230,49,'Thursday','ST231'),
(1730,47,'Friday','ST122');

INSERT INTO Schedules(schedule_id,course_id,instructor_id,student_id,semester_start_date,semester_end_date)
VALUES
(1,343,46,22207964,'2022-09-23','2023-01-19'),
(2,351,45,22314700,'2023-05-13','2023-08-29'),
(3,100,47,22314200,'2021-02-10','2021-05-25'),
(4,321,49,22112752,'2025-04-10','2025-07-29'),
(5,203,48,22215840,'2026-07-03','2026-10-21');

UPDATE Student
SET department_id = 22
WHERE course_id = 100;

UPDATE Student
SET course_id = 343
WHERE course_id = 203;

UPDATE Student
SET department_id = 23
WHERE course_id = 343;

UPDATE Student
SET department_id = 24
WHERE course_id = 321;

UPDATE Student
SET department_id = 25
WHERE course_id = 351;