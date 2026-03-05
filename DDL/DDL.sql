CREATE TABLE Course (
    course_id INT PRIMARY KEY,
    course_name VARCHAR(100),
    credit INT
);

CREATE TABLE Department (
    department_id INT PRIMARY KEY,
    department_name VARCHAR(50),
    budget INT
);

CREATE TABLE Instructor (
    instructor_id INT PRIMARY KEY,
    Ins_name VARCHAR(25),
    Ins_surname VARCHAR(25),
    Salary INT
);

CREATE TABLE Classroom(
    class_code VARCHAR(20) PRIMARY KEY,
    capacity INT
);

CREATE TABLE Student (
    student_id INT PRIMARY KEY,
    course_id INT,
    department_id INT,
    S_name VARCHAR(25),
    S_surname VARCHAR(25),
    cgpa DOUBLE PRECISION,

    FOREIGN KEY (course_id) REFERENCES Course(course_id),
    FOREIGN KEY (department_id) REFERENCES Department(department_id)
);

CREATE TABLE Section (
    Section_id INT PRIMARY KEY,
    instructor_id INT,
    day VARCHAR(20),
    class_code VARCHAR(20),

    FOREIGN KEY (class_code) REFERENCES Classroom(class_code),
    FOREIGN KEY (instructor_id) REFERENCES Instructor(instructor_id)
);

CREATE TABLE Schedules (
    Schedule_id INT PRIMARY KEY,
    course_id INT,
    instructor_id INT,
    student_id INT,
    semester_start_date DATE,
    semester_end_date DATE,

    FOREIGN KEY (course_id) REFERENCES Course(course_id),
    FOREIGN KEY (instructor_id) REFERENCES Instructor(instructor_id),
    FOREIGN KEY (student_id) REFERENCES Student(student_id)
);