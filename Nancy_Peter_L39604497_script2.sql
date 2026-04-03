-- =============================================
-- SPARK ACADEMY DATABASE
-- Script 2: Database Population
-- =============================================

PRAGMA foreign_keys = ON;

-- TABLE 1: Campus (10 records)
INSERT INTO Campus (campus_name, address_line1, address_line2, city, postcode, phone_number, email) VALUES
('Spark Academy Manchester', '12 Oxford Road', 'City Centre', 'Manchester', 'M1 5QA', '01612345678', 'manchester@sparkacademy.com'),
('Spark Academy London', '45 Baker Street', 'Marylebone', 'London', 'W1U 7AJ', '02079876543', 'london@sparkacademy.com'),
('Spark Academy Birmingham', '88 Broad Street', NULL, 'Birmingham', 'B1 2HF', '01214567890', 'birmingham@sparkacademy.com'),
('Spark Academy Leeds', '22 The Headrow', NULL, 'Leeds', 'LS1 6PT', '01132345678', 'leeds@sparkacademy.com'),
('Spark Academy Glasgow', '5 Sauchiehall Street', NULL, 'Glasgow', 'G2 3AH', '01412345678', 'glasgow@sparkacademy.com'),
('Spark Academy Bristol', '10 Park Street', 'Clifton', 'Bristol', 'BS1 5PB', '01179876543', 'bristol@sparkacademy.com'),
('Spark Academy Liverpool', '33 Bold Street', NULL, 'Liverpool', 'L1 4DN', '01512345678', 'liverpool@sparkacademy.com'),
('Spark Academy Edinburgh', '7 Princes Street', NULL, 'Edinburgh', 'EH2 2AN', '01314567890', 'edinburgh@sparkacademy.com'),
('Spark Academy Cardiff', '19 Queen Street', NULL, 'Cardiff', 'CF10 2BU', '02920123456', 'cardiff@sparkacademy.com'),
('Spark Academy Newcastle', '55 Grey Street', NULL, 'Newcastle', 'NE1 6EE', '01912345678', 'newcastle@sparkacademy.com');

-- TABLE 2: Employee (12 records)
INSERT INTO Employee (campus_id, forename, surname, email, phone_number, date_of_birth, hire_date, employee_type) VALUES
(1, 'James', 'Carter', 'j.carter@sparkacademy.com', '07700123401', '1985-03-12', '2019-09-01', 'teacher'),
(1, 'Sofia', 'Mensah', 's.mensah@sparkacademy.com', '07700123402', '1990-07-22', '2020-01-15', 'teacher'),
(2, 'Daniel', 'Osei', 'd.osei@sparkacademy.com', '07700123403', '1988-11-05', '2018-06-01', 'teacher'),
(2, 'Priya', 'Sharma', 'p.sharma@sparkacademy.com', '07700123404', '1992-04-18', '2021-03-01', 'teacher'),
(3, 'Marcus', 'Thompson', 'm.thompson@sparkacademy.com', '07700123405', '1987-09-30', '2017-08-01', 'teacher'),
(1, 'Rachel', 'Green', 'r.green@sparkacademy.com', '07700123406', '1995-01-14', '2022-02-01', 'support'),
(2, 'Kevin', 'Adeyemi', 'k.adeyemi@sparkacademy.com', '07700123407', '1991-06-25', '2020-07-01', 'support'),
(3, 'Hannah', 'Clarke', 'h.clarke@sparkacademy.com', '07700123408', '1993-12-08', '2021-09-01', 'support'),
(1, 'Victoria', 'Okonkwo', 'v.okonkwo@sparkacademy.com', '07700123409', '1980-02-28', '2015-01-01', 'management'),
(2, 'Stephen', 'Walsh', 's.walsh@sparkacademy.com', '07700123410', '1978-08-15', '2014-06-01', 'management'),
(3, 'Amara', 'Diallo', 'a.diallo@sparkacademy.com', '07700123411', '1982-05-20', '2016-03-01', 'management'),
(4, 'Thomas', 'Bennett', 't.bennett@sparkacademy.com', '07700123412', '1989-10-11', '2019-11-01', 'teacher');

-- TABLE 3: Teacher (6 records)
INSERT INTO Teacher (teacher_id, specialisation, max_students) VALUES
(1, 'Visual Arts & Painting', 20),
(2, 'Music Production', 18),
(3, 'Graphic Design', 22),
(4, 'Photography', 15),
(5, 'Dance & Performing Arts', 25),
(12, 'Creative Writing', 20);

-- TABLE 4: Support_Staff (3 records)
INSERT INTO Support_Staff (support_id, department, role_description) VALUES
(6, 'Student Services', 'Handles student welfare and enrolment queries'),
(7, 'IT Support', 'Manages technical infrastructure and software support'),
(8, 'Finance', 'Processes fee payments and financial records');

-- TABLE 5: Student (40 records)
INSERT INTO Student (campus_id, forename, surname, date_of_birth, email, phone_number, address_line1, address_line2, city, postcode, registration_date) VALUES
(1, 'Aisha', 'Johnson', '2002-04-15', 'aisha.j@email.com', '07811234501', '14 Maple Street', NULL, 'Manchester', 'M2 3AB', '2024-09-01'),
(1, 'Liam', 'Patel', '2001-08-22', 'liam.p@email.com', '07811234502', '7 Oak Avenue', 'Didsbury', 'Manchester', 'M20 1CD', '2024-09-01'),
(1, 'Chloe', 'Williams', '2003-01-10', 'chloe.w@email.com', '07811234503', '33 Pine Road', NULL, 'Manchester', 'M14 5EF', '2024-09-01'),
(2, 'Noah', 'Brown', '2000-06-30', 'noah.b@email.com', '07811234504', '88 Cedar Lane', 'Hackney', 'London', 'E8 1GH', '2024-09-02'),
(2, 'Isabelle', 'Davis', '2002-11-18', 'isabelle.d@email.com', '07811234505', '22 Birch Close', NULL, 'London', 'SW9 2IJ', '2024-09-02'),
(2, 'Adam', 'Wilson', '2001-03-05', 'adam.w@email.com', '07811234506', '5 Elm Street', 'Brixton', 'London', 'SW2 3KL', '2024-09-02'),
(3, 'Fatima', 'Ahmed', '2003-07-25', 'fatima.a@email.com', '07811234507', '19 Willow Way', NULL, 'Birmingham', 'B5 4MN', '2024-09-03'),
(3, 'George', 'Taylor', '2000-12-12', 'george.t@email.com', '07811234508', '41 Ash Drive', NULL, 'Birmingham', 'B12 5OP', '2024-09-03'),
(1, 'Maya', 'Robinson', '2002-09-08', 'maya.r@email.com', '07811234509', '6 Beech Close', NULL, 'Manchester', 'M7 6QR', '2024-09-04'),
(2, 'Ethan', 'Moore', '2001-05-17', 'ethan.m@email.com', '07811234510', '77 Chestnut Road', NULL, 'London', 'N1 7ST', '2024-09-04'),
(3, 'Zara', 'Jackson', '2003-02-28', 'zara.j@email.com', '07811234511', '3 Poplar Street', NULL, 'Birmingham', 'B3 8UV', '2024-09-05'),
(4, 'Ryan', 'White', '2000-10-14', 'ryan.w@email.com', '07811234512', '55 Sycamore Lane', NULL, 'Leeds', 'LS2 9WX', '2024-09-05'),
(1, 'Jordan', 'Mills', '2003-05-14', 'jordan.m@email.com', '07811234513', '9 Birchwood Close', NULL, 'Manchester', 'M3 1AB', '2024-09-10'),
(2, 'Priya', 'Kapoor', '2002-08-19', 'priya.k@email.com', '07811234514', '18 Elmwood Drive', NULL, 'London', 'E3 2CD', '2024-09-10'),
(1, 'Callum', 'Fraser', '2001-03-22', 'callum.f@email.com', '07811234515', '12 Rosewood Ave', NULL, 'Manchester', 'M4 2EF', '2024-09-10'),
(2, 'Amelia', 'Stone', '2002-07-08', 'amelia.s@email.com', '07811234516', '5 Laurel Close', NULL, 'London', 'E5 3GH', '2024-09-10'),
(3, 'Tobi', 'Owusu', '2000-11-30', 'tobi.o@email.com', '07811234517', '27 Maple Drive', NULL, 'Birmingham', 'B7 4IJ', '2024-09-10'),
(4, 'Niamh', 'Kelly', '2003-01-15', 'niamh.k@email.com', '07811234518', '8 Cedar Road', NULL, 'Leeds', 'LS3 5KL', '2024-09-10'),
(1, 'Darius', 'Obi', '2001-09-04', 'darius.o@email.com', '07811234519', '33 Oak Street', NULL, 'Manchester', 'M5 6MN', '2024-09-10'),
(2, 'Sienna', 'Hart', '2002-12-20', 'sienna.h@email.com', '07811234520', '14 Willow Lane', NULL, 'London', 'SW3 7OP', '2024-09-11'),
(3, 'Marcus', 'Eze', '2001-06-11', 'marcus.e@email.com', '07811234521', '6 Birch Way', NULL, 'Birmingham', 'B9 8QR', '2024-09-11'),
(1, 'Holly', 'Barker', '2003-04-03', 'holly.b@email.com', '07811234522', '21 Pine Close', NULL, 'Manchester', 'M6 9ST', '2024-09-11'),
(2, 'Leon', 'Asante', '2000-08-27', 'leon.a@email.com', '07811234523', '9 Elm Avenue', NULL, 'London', 'N4 1UV', '2024-09-11'),
(4, 'Freya', 'Nolan', '2002-02-14', 'freya.n@email.com', '07811234524', '45 Sycamore Road', NULL, 'Leeds', 'LS4 2WX', '2024-09-11'),
(1, 'Kwame', 'Asare', '2001-10-09', 'kwame.a@email.com', '07811234525', '7 Chestnut Close', NULL, 'Manchester', 'M8 3YZ', '2024-09-12'),
(3, 'Isla', 'Murray', '2003-07-17', 'isla.m@email.com', '07811234526', '18 Poplar Street', NULL, 'Birmingham', 'B2 4AB', '2024-09-12'),
(2, 'Tyler', 'James', '2000-05-23', 'tyler.j@email.com', '07811234527', '30 Ash Drive', NULL, 'London', 'E7 5CD', '2024-09-12'),
(4, 'Zoe', 'Griffiths', '2002-09-01', 'zoe.g@email.com', '07811234528', '11 Beech Lane', NULL, 'Leeds', 'LS5 6EF', '2024-09-12'),
(1, 'Aaron', 'Mensah', '2001-01-28', 'aaron.m@email.com', '07811234529', '3 Oak Close', NULL, 'Manchester', 'M9 7GH', '2024-09-12'),
(2, 'Jade', 'Okafor', '2003-11-05', 'jade.o@email.com', '07811234530', '55 Cedar Lane', NULL, 'London', 'SE1 8IJ', '2024-09-13'),
(3, 'Finn', 'McCarthy', '2000-03-19', 'finn.m@email.com', '07811234531', '24 Maple Road', NULL, 'Birmingham', 'B6 9KL', '2024-09-13'),
(4, 'Imani', 'Addo', '2002-06-30', 'imani.a@email.com', '07811234532', '16 Birch Close', NULL, 'Leeds', 'LS6 1MN', '2024-09-13'),
(1, 'Sophie', 'Grant', '2002-03-11', 'sophie.g@email.com', '07811234545', '4 Ash Close', NULL, 'Manchester', 'M1 2AB', '2024-09-14'),
(2, 'Jake', 'Nwosu', '2001-07-19', 'jake.n@email.com', '07811234546', '17 Cedar Ave', NULL, 'London', 'E2 3CD', '2024-09-14'),
(3, 'Mia', 'Brennan', '2003-11-02', 'mia.b@email.com', '07811234547', '9 Oak Drive', NULL, 'Birmingham', 'B4 5EF', '2024-09-14'),
(4, 'Theo', 'Larbi', '2000-05-28', 'theo.l@email.com', '07811234548', '22 Birch Lane', NULL, 'Leeds', 'LS1 6GH', '2024-09-14'),
(1, 'Cleo', 'Adkins', '2002-09-15', 'cleo.a@email.com', '07811234549', '11 Maple Road', NULL, 'Manchester', 'M3 7IJ', '2024-09-14'),
(1, 'Oliver', 'Hayes', '2003-05-12', 'oliver.h@email.com', '07811234560', '5 Park Lane', NULL, 'Manchester', 'M1 4AB', '2024-09-15'),
(2, 'Emma', 'Clarke', '2002-08-23', 'emma.c@email.com', '07811234561', '12 High Street', NULL, 'London', 'E1 7BC', '2024-09-15'),
(3, 'James', 'Reid', '2001-11-30', 'james.r@email.com', '07811234562', '8 Mill Road', NULL, 'Birmingham', 'B2 5CD', '2024-09-15');

-- TABLE 6: Student_Contact (12 records)
INSERT INTO Student_Contact (student_id, forename, surname, relationship, phone_number, email) VALUES
(1, 'Patricia', 'Johnson', 'Parent', '07900111001', 'patricia.j@email.com'),
(2, 'Raj', 'Patel', 'Parent', '07900111002', 'raj.p@email.com'),
(3, 'Susan', 'Williams', 'Parent', '07900111003', 'susan.w@email.com'),
(4, 'Michael', 'Brown', 'Parent', '07900111004', 'michael.b@email.com'),
(5, 'Claire', 'Davis', 'Parent', '07900111005', 'claire.d@email.com'),
(6, 'Trevor', 'Wilson', 'Parent', '07900111006', 'trevor.w@email.com'),
(7, 'Halima', 'Ahmed', 'Parent', '07900111007', 'halima.a@email.com'),
(8, 'David', 'Taylor', 'Parent', '07900111008', 'david.t@email.com'),
(9, 'Sandra', 'Robinson', 'Next of Kin', '07900111009', 'sandra.r@email.com'),
(10, 'Janet', 'Moore', 'Parent', '07900111010', 'janet.m@email.com'),
(11, 'Omar', 'Jackson', 'Parent', '07900111011', 'omar.j@email.com'),
(12, 'Karen', 'White', 'Next of Kin', '07900111012', 'karen.w@email.com');

-- TABLE 7: Course (10 records)
INSERT INTO Course (campus_id, teacher_id, course_name, description, duration_weeks, delivery_type, current_fee) VALUES
(1, 1, 'Fundamentals of Painting', 'Introduction to painting techniques and colour theory', 8, 'B2C', 299.99),
(1, 2, 'Music Production Essentials', 'Learn DAW software and music production fundamentals', 10, 'B2C', 349.99),
(2, 3, 'Graphic Design for Beginners', 'Adobe suite and design principles for beginners', 8, 'B2C', 279.99),
(2, 4, 'Professional Photography', 'Camera techniques, lighting and post-production', 12, 'B2B', 499.99),
(3, 5, 'Contemporary Dance', 'Modern and contemporary dance styles and performance', 10, 'B2C', 249.99),
(1, 1, 'Advanced Painting Techniques', 'Advanced methods including oil and acrylic painting', 12, 'B2C', 399.99),
(2, 3, 'Creative Branding & Identity', 'Brand design for businesses using Adobe Illustrator', 8, 'B2B', 599.99),
(3, 5, 'Virtual Dance', 'Online contemporary dance classes for remote learners', 6, 'B2C', 199.99),
(1, 12, 'Creative Writing Workshop', 'Fiction, poetry and screenwriting fundamentals', 8, 'B2C', 229.99),
(2, 4, 'Commercial Photography', 'Photography for advertising and commercial use', 10, 'B2B', 549.99);

-- TABLE 8: Fee_History (12 records)
INSERT INTO Fee_History (course_id, fee_amount, effective_from, effective_to) VALUES
(1, 249.99, '2023-09-01', '2024-08-31'),
(1, 299.99, '2024-09-01', NULL),
(2, 299.99, '2023-09-01', '2024-08-31'),
(2, 349.99, '2024-09-01', NULL),
(3, 249.99, '2023-09-01', '2024-08-31'),
(3, 279.99, '2024-09-01', NULL),
(4, 449.99, '2023-09-01', '2024-08-31'),
(4, 499.99, '2024-09-01', NULL),
(5, 199.99, '2023-09-01', '2024-08-31'),
(5, 249.99, '2024-09-01', NULL),
(6, 349.99, '2023-09-01', '2024-08-31'),
(6, 399.99, '2024-09-01', NULL);

-- TABLE 9: Enrolment (29 records)
INSERT INTO Enrolment (student_id, course_id, start_date, end_date, payment_status, amount_paid) VALUES
(1, 1, '2024-09-01', '2024-10-27', 'Paid', 299.99),
(2, 2, '2024-09-01', '2024-11-10', 'Paid', 349.99),
(3, 3, '2024-09-01', '2024-10-27', 'Outstanding', 0.00),
(4, 4, '2024-09-02', '2024-12-02', 'Paid', 499.99),
(5, 5, '2024-09-02', '2024-11-11', 'Partial', 150.00),
(6, 3, '2024-09-02', '2024-10-28', 'Paid', 279.99),
(7, 5, '2024-09-03', '2024-11-12', 'Outstanding', 0.00),
(8, 1, '2024-09-03', '2024-10-29', 'Paid', 299.99),
(9, 6, '2024-09-04', '2024-12-04', 'Paid', 399.99),
(10, 7, '2024-09-04', '2024-10-30', 'Paid', 599.99),
(11, 8, '2024-09-05', NULL, 'Partial', 100.00),
(12, 9, '2024-09-05', '2024-10-31', 'Paid', 229.99),
(14, 4, '2024-09-10', '2024-12-10', 'Paid', 499.99),
(15, 2, '2024-09-10', '2024-11-18', 'Outstanding', 0.00),
(16, 6, '2024-09-10', '2024-12-10', 'Paid', 399.99),
(18, 3, '2024-09-11', '2024-11-05', 'Paid', 279.99),
(19, 5, '2024-09-11', '2024-11-19', 'Paid', 249.99),
(20, 1, '2024-09-11', '2024-11-05', 'Outstanding', 0.00),
(23, 2, '2024-09-12', '2024-11-20', 'Paid', 349.99),
(25, 4, '2024-09-12', '2024-12-12', 'Outstanding', 0.00),
(26, 6, '2024-09-12', '2024-12-12', 'Paid', 399.99),
(27, 1, '2024-09-12', '2024-11-06', 'Paid', 299.99),
(28, 3, '2024-09-13', '2024-11-07', 'Paid', 279.99),
(29, 5, '2024-09-13', '2024-11-21', 'Partial', 125.00),
(10, 1, '2024-09-15', NULL, 'Paid', 299.99),
(11, 2, '2024-09-15', NULL, 'Paid', 349.99),
(12, 3, '2024-09-15', NULL, 'Paid', 279.99),
(17, 4, '2024-09-15', NULL, 'Paid', 499.99),
(21, 5, '2024-09-15', NULL, 'Paid', 249.99);

-- TABLE 10: Certificate (10 records)
INSERT INTO Certificate (student_id, course_id, issued_by, issue_date, certificate_type) VALUES
(1, 1, 9, '2024-10-28', 'Course Completion'),
(2, 2, 9, '2024-11-11', 'Course Completion'),
(4, 4, 10, '2024-12-03', 'Professional Certificate'),
(6, 3, 10, '2024-10-29', 'Course Completion'),
(8, 1, 9, '2024-10-30', 'Course Completion'),
(9, 6, 9, '2024-12-05', 'Advanced Certificate'),
(10, 7, 10, '2024-10-31', 'Professional Certificate'),
(12, 9, 9, '2024-11-01', 'Course Completion'),
(1, 6, 9, '2024-12-06', 'Advanced Certificate'),
(4, 10, 10, '2024-12-10', 'Professional Certificate');
