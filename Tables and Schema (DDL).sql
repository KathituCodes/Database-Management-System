-- Creating the Person Table
CREATE TABLE Person (
    PersonID SERIAL PRIMARY KEY,
    FirstName VARCHAR(50) NOT NULL,
    LastName VARCHAR(50) NOT NULL,
    DateOfBirth DATE NOT NULL
);

-- Creating the Motor Vehicle Branch Table
CREATE TABLE MotorVehicleBranch (
    BranchID SERIAL PRIMARY KEY,
    BranchName VARCHAR(100) NOT NULL,
    Location VARCHAR(100) NOT NULL
);

-- Creating the Learner Exam Table
CREATE TABLE LearnerExam (
    ExamID SERIAL PRIMARY KEY,
    ExamDate DATE NOT NULL,
    Result VARCHAR(10) CHECK (Result IN ('PASS', 'FAIL')) NOT NULL,
    PersonID INT,
    BranchID INT,
    FOREIGN KEY (PersonID) REFERENCES Person(PersonID) ON DELETE CASCADE,
    FOREIGN KEY (BranchID) REFERENCES MotorVehicleBranch(BranchID) ON DELETE CASCADE
);

-- Creating the Driver Exam Table
CREATE TABLE DriverExam (
    ExamID SERIAL PRIMARY KEY,
    ExamDate DATE NOT NULL,
    Result VARCHAR(10) CHECK (Result IN ('PASS', 'FAIL')) NOT NULL,
    PersonID INT,
    BranchID INT,
    FOREIGN KEY (PersonID) REFERENCES Person(PersonID) ON DELETE CASCADE,
    FOREIGN KEY (BranchID) REFERENCES MotorVehicleBranch(BranchID) ON DELETE CASCADE
);

-- Creating the License Table
CREATE TABLE License (
    LicenseNumber VARCHAR(20) PRIMARY KEY,
    PersonID INT UNIQUE,  -- Each person can only have one active license
    IssueDate DATE NOT NULL,
    ExpiryDate DATE NOT NULL,
    LicenseType VARCHAR(10) CHECK (LicenseType IN ('LEARNER', 'DRIVER')) NOT NULL,
    Restriction VARCHAR(100),  -- Nullable, only applicable to learner licenses
    CompletedDriverEducation BOOLEAN DEFAULT FALSE, -- Only relevant for driver's license
    FOREIGN KEY (PersonID) REFERENCES Person(PersonID) ON DELETE CASCADE
);
