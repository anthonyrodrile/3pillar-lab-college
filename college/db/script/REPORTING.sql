USE [college];
GO

CREATE OR ALTER VIEW view_subjectAndTeacher
AS
SELECT t.teacherId, t.teacherName,s.subjectName,s.credits
FROM [dbo].[Teacher] t
INNER JOIN [dbo].[Subject] s
ON s.teacherId = t.teacherId
GO

CREATE OR ALTER VIEW view_subjectHours
AS
SELECT s.subjectName, s.hoursWeek, p.programName
FROM [dbo].[Subject] s
INNER JOIN [dbo].[ProgramSubject] ps
ON ps.subjectId = s.subjectId
INNER JOIN [dbo].[Program] p
ON p.programId = ps.programId
GROUP BY s.hoursWeek, s.subjectName, p.programName
GO

CREATE OR ALTER VIEW view_studentSubject
AS
SELECT s.studentId, s.studentName, sj.subjectName
FROM [dbo].[Student] s
INNER JOIN [dbo].[StudentSubject] ss
ON s.studentId = ss.studentId
INNER JOIN [dbo].[Subject] sj
ON sj.subjectId = ss.subjectId
GO

CREATE OR ALTER VIEW view_programAcademicUnit
AS
SELECT p.programName, a.academicUnitName
FROM [dbo].[Program] p
INNER JOIN [dbo].[AcademicUnit] a
ON p.academicUnitId = a.academicUnitId
GROUP BY p.programName, a.academicUnitName
GO

CREATE OR ALTER VIEW view_subjectClassroom
AS
SELECT s.subjectName, c.classroomName
FROM [dbo].[Classroom] c
INNER JOIN [dbo].[Subject] s
ON c.classroomId = s.classroomId
GO


CREATE OR ALTER VIEW view_teacherAcademicUnit
AS
SELECT t.teacherName, a.academicUnitName
FROM [dbo].[AcademicUnit] a
INNER JOIN [dbo].[Teacher] t
ON a.academicUnitId = t.academicUnitId
GO

CREATE OR ALTER VIEW view_studentCredits
AS
SELECT st.studentName, SUM(s.credits) credits
FROM [dbo].[Subject] s
INNER JOIN [dbo].[StudentSubject] ss
ON s.subjectId = ss.subjectId
INNER JOIN [dbo].[Student] st
ON ss.studentId = st.studentId
GROUP BY st.studentName
GO

CREATE OR ALTER VIEW view_classroomHours
AS
SELECT c.classroomName, SUM(S.hoursWeek) hoursWeek
FROM [dbo].[Classroom] c
INNER JOIN [dbo].[Subject] s
ON c.classroomId = s.classroomId
GROUP BY c.classroomName
GO

CREATE OR ALTER VIEW view_subjectQuantityPerProgram
AS
SELECT COUNT(s.subjectId) quantity, p.programName 
FROM [dbo].[Program] p
INNER JOIN [dbo].[ProgramSubject] ps
ON p.programId = ps.programId
INNER JOIN [dbo].[Subject] s
ON ps.subjectId = s.subjectId
GROUP BY p.programName
GO

CREATE OR ALTER VIEW view_subjectMaxCredits
AS
SELECT TOP 1 Max(s.credits) credits, s.subjectName
FROM [dbo].[Subject] s
GROUP BY s.subjectName, s.credits
ORDER BY s.credits DESC
GO

CREATE OR ALTER VIEW view_academicFaculties 
AS
SELECT a.academicUnitName
FROM [dbo].[AcademicUnit] a
WHERE a.academicUnitName like '%faculty%'
GO

CREATE OR ALTER VIEW view_ninetiesTeacher
AS
SELECT t.phoneNumber, t.birthdate
FROM [dbo].[Teacher] t
WHERE t.birthdate BETWEEN '1990' AND '1999'
GO

CREATE OR ALTER VIEW view_subjectAVGHours
AS
SELECT AVG(s.hoursWeek) avgHours
FROM [dbo].[Subject] s
GO

CREATE OR ALTER VIEW view_studentSubjects
AS
SELECT COUNT(s.subjectId) subjects, st.studentName
FROM [dbo].[Subject] s
INNER JOIN [dbo].[StudentSubject] ss
ON s.subjectId = ss.subjectId
INNER JOIN [dbo].[Student]st
ON ss.studentId = st.studentId
GROUP BY st.studentName
GO

CREATE OR ALTER VIEW view_subjectsMoreThanFourCredits
AS
SELECT s.subjectName, s.credits
FROM [dbo].[Subject] s
WHERE s.credits >= 4
GO