-- =============================================
-- SPARK ACADEMY DATABASE
-- Script 1: Database Creation
-- =============================================

PRAGMA foreign_keys = ON;

-- TABLE 1: Campus
CREATE TABLE Campus (
    campus_id       INTEGER PRIMARY KEY AUTOINCREMENT,
    campus_name     VARCHAR(100) NOT NULL,
    address_line1   VARCHAR(150) NOT NULL,
    address_line2   VARCHAR(150),
    city            VARCHAR(50)  NOT NULL,
    postcode        VARCHAR(10)  NOT NULL,
    phone_number    VARCHAR(20)  NOT NULL,
    email           VARCHAR(100) NOT NULL
);

-- TABLE 2: Employee (Supertype)
CREATE TABLE Employee (
    employee_id     INTEGER PRIMARY KEY AUTOINCREMENT,
    campus_id       INTEGER NOT NULL,
    forename        VARCHAR(50)  NOT NULL,
    surname         VARCHAR(50)  NOT NULL,
    email           VARCHAR(100) NOT NULL UNIQUE,
    phone_number    VARCHAR(20)  NOT NULL,
    date_of_birth   DATE         NOT NULL,
    hire_date       DATE         NOT NULL,
    employee_type   VARCHAR(20)  NOT NULL
                    CHECK(employee_type IN ('teacher','support','management')),
    FOREIGN KEY (campus_id) REFERENCES Campus(campus_id)
);

-- TABLE 3: Teacher (Subtype)
CREATE TABLE Teacher (
    teacher_id      INTEGER PRIMARY KEY,
    specialisation  VARCHAR(100) NOT NULL,
    max_students    INTEGER      NOT NULL,
    FOREIGN KEY (teacher_id) REFERENCES Employee(employee_id)
);

-- TABLE 4: Support_Staff (Subtype)
CREATE TABLE Support_Staff (
    support_id      INTEGER PRIMARY KEY,
    department      VARCHAR(100) NOT NULL,
    role_description VARCHAR(200),
    FOREIGN KEY (support_id) REFERENCES Employee(employee_id)
);

-- TABLE 5: Student
CREATE TABLE Student (
    student_id          INTEGER PRIMARY KEY AUTOINCREMENT,
    campus_id           INTEGER      NOT NULL,
    forename            VARCHAR(50)  NOT NULL,
    surname             VARCHAR(50)  NOT NULL,
    date_of_birth       DATE         NOT NULL,
    email               VARCHAR(100) NOT NULL UNIQUE,
    phone_number        VARCHAR(20)  NOT NULL,
    address_line1       VARCHAR(150) NOT NULL,
    address_line2       VARCHAR(150),
    city                VARCHAR(50)  NOT NULL,
    postcode            VARCHAR(10)  NOT NULL,
    registration_date   DATE         NOT NULL,
    FOREIGN KEY (campus_id) REFERENCES Campus(campus_id)
);

-- TABLE 6: Student_Contact
CREATE TABLE Student_Contact (
    contact_id      INTEGER PRIMARY KEY AUTOINCREMENT,
    student_id      INTEGER      NOT NULL,
    forename        VARCHAR(50)  NOT NULL,
    surname         VARCHAR(50)  NOT NULL,
    relationship    VARCHAR(50)  NOT NULL,
    phone_number    VARCHAR(20)  NOT NULL,
    email           VARCHAR(100),
    FOREIGN KEY (student_id) REFERENCES Student(student_id)
);

-- TABLE 7: Course
CREATE TABLE Course (
    course_id       INTEGER PRIMARY KEY AUTOINCREMENT,
    campus_id       INTEGER      NOT NULL,
    teacher_id      INTEGER      NOT NULL,
    course_name     VARCHAR(100) NOT NULL,
    description     VARCHAR(500),
    duration_weeks  INTEGER      NOT NULL,
    delivery_type   VARCHAR(20)  NOT NULL
                    CHECK(delivery_type IN ('B2C','B2B')),
    current_fee     DECIMAL(10,2) NOT NULL,
    FOREIGN KEY (campus_id)  REFERENCES Campus(campus_id),
    FOREIGN KEY (teacher_id) REFERENCES Teacher(teacher_id)
);

-- TABLE 8: Fee_History
CREATE TABLE Fee_History (
    fee_id          INTEGER PRIMARY KEY AUTOINCREMENT,
    course_id       INTEGER       NOT NULL,
    fee_amount      DECIMAL(10,2) NOT NULL,
    effective_from  DATE          NOT NULL,
    effective_to    DATE,
    FOREIGN KEY (course_id) REFERENCES Course(course_id)
);

-- TABLE 9: Enrolment
CREATE TABLE Enrolment (
    enrolment_id    INTEGER PRIMARY KEY AUTOINCREMENT,
    student_id      INTEGER       NOT NULL,
    course_id       INTEGER       NOT NULL,
    start_date      DATE          NOT NULL,
    end_date        DATE,
    payment_status  VARCHAR(20)   NOT NULL
                    CHECK(payment_status IN ('Paid','Outstanding','Partial')),
    amount_paid     DECIMAL(10,2) NOT NULL DEFAULT 0,
    FOREIGN KEY (student_id) REFERENCES Student(student_id),
    FOREIGN KEY (course_id)  REFERENCES Course(course_id)
);

-- TABLE 10: Certificate
CREATE TABLE Certificate (
    certificate_id   INTEGER PRIMARY KEY AUTOINCREMENT,
    student_id       INTEGER      NOT NULL,
    course_id        INTEGER      NOT NULL,
    issued_by        INTEGER      NOT NULL,
    issue_date       DATE         NOT NULL,
    certificate_type VARCHAR(100) NOT NULL,
    FOREIGN KEY (student_id) REFERENCES Student(student_id),
    FOREIGN KEY (course_id)  REFERENCES Course(course_id),
    FOREIGN KEY (issued_by)  REFERENCES Employee(employee_id)
);