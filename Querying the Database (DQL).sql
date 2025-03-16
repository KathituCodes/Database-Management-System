-- Question 1
SELECT PersonID, COUNT(*) AS TotalExams
FROM LearnerExam
GROUP BY PersonID
HAVING COUNT(*) > 1;

-- Question 2
SELECT DISTINCT BranchName, Location
FROM MotorVehicleBranch;

-- Question 3
SELECT FirstName, LastName, Result
FROM Person
JOIN DriverExam ON Person.PersonID = DriverExam.PersonID
JOIN MotorVehicleBranch ON DriverExam.BranchID = MotorVehicleBranch.BranchID
WHERE BranchName = 'Downtown Licensing';

-- Question 4
SELECT BranchName, COUNT(*) AS TotalExams
FROM MotorVehicleBranch
JOIN LearnerExam ON MotorVehicleBranch.BranchID = LearnerExam.BranchID
GROUP BY BranchName
ORDER BY TotalExams DESC
LIMIT 1;

-- Question 5
SELECT FirstName, LastName
FROM Person
JOIN License ON Person.PersonID = License.PersonID
WHERE LicenseType = 'DRIVER' AND CompletedDriverEducation = TRUE;

-- Question 6
SELECT ExamDate, COUNT(*) AS TotalPeople
FROM LearnerExam
GROUP BY ExamDate;

-- Question 7
SELECT DISTINCT PersonID
FROM LearnerExam
WHERE PersonID IN (SELECT PersonID FROM DriverExam);

-- Question 8
SELECT LicenseType, COUNT(*) AS TotalLicenses
FROM License
GROUP BY LicenseType;





