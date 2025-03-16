-- Person Table
INSERT INTO Person (FirstName, LastName, DateOfBirth) VALUES
('John', 'Doe', '1995-06-15'),
('Jane', 'Smith', '1998-02-10'),
('Alex', 'Brown', '2000-09-25');

-- Motor Vehicle Branch Table
INSERT INTO MotorVehicleBranch (BranchName, Location) VALUES
('Downtown Licensing', 'New York'),
('West End Testing', 'Los Angeles'),
('Central DMV', 'Chicago');

-- Learner Exam Table
INSERT INTO LearnerExam (ExamDate, Result, PersonID, BranchID) VALUES
('2024-01-10', 'PASS', 1, 1),
('2024-02-15', 'FAIL', 2, 2),
('2024-02-22', 'PASS', 2, 2);

-- Driver Exam Table
INSERT INTO DriverExam (ExamDate, Result, PersonID, BranchID) VALUES
('2024-03-01', 'PASS', 1, 1),
('2024-04-10', 'FAIL', 2, 3);

-- License Table
INSERT INTO License (LicenseNumber, PersonID, IssueDate, ExpiryDate, LicenseType, Restriction, CompletedDriverEducation) VALUES
('L12345', 1, '2024-01-15', '2024-07-15', 'LEARNER', 'Glasses', false),
('L67890', 2, '2024-02-25', '2024-08-25', 'LEARNER', 'None', false);

-- Update Existing License Instead of Inserting a New One
-- If PersonID already has a license and needs an update, use UPDATE instead of INSERT:
UPDATE License
SET LicenseNumber = 'D54321', IssueDate = '2024-03-10', ExpiryDate = '2029-03-10', 
    LicenseType = 'DRIVER', Restriction = 'None', CompletedDriverEducation = true
WHERE PersonID = 1;






