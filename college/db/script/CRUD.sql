USE [college];
GO
/***********************TEACHER*******************/
/*********************INSERT********************/
CREATE OR ALTER PROCEDURE sp_insertTeacher
@academicUnitId int,
@teacherName nvarchar(50),
@address nvarchar(250),
@phoneNumber nvarchar(10),
@emergencyNumber nvarchar(10),
@email nvarchar(100),
@birthdate date
AS
INSERT INTO [dbo].[teacher] ([academicUnitId], [teacherName], [address], [phoneNumber], [emergencyNumber], [email], [birthdate])
VALUES (@academicUnitId, @teacherName, @address, @phoneNumber, @emergencyNumber,@email,@birthdate)
GO
/*********************UPDATE********************/
CREATE OR ALTER PROCEDURE sp_updateTeacher
@teacherId int,
@academicUnitId int,
@teacherName nvarchar(50),
@address nvarchar(250),
@phoneNumber nvarchar(10),
@emergencyNumber nvarchar(10),
@email nvarchar(100),
@birthdate date
AS
UPDATE [dbo].[teacher] 
SET [academicUnitId]=@academicUnitId, [teacherName]=@teacherName, [address]=@address, [phoneNumber]=@phoneNumber, [emergencyNumber]=@emergencyNumber, [email]=@email, [birthdate]=@birthdate
WHERE [teacherId]=@teacherId
GO
/*********************DELETE********************/
CREATE OR ALTER PROCEDURE sp_deleteTeacher
@teacherId int
AS
DELETE FROM [dbo].[teacher] 
WHERE [teacherId]=@teacherId
GO
/*********************SELECT********************/
CREATE OR ALTER PROCEDURE sp_selectTeacherById
@teacherId int
AS
SELECT [teacherId], [academicUnitId], [teacherName], [address], [phoneNumber], [emergencyNumber], [email], [birthdate]
FROM [dbo].[teacher] 
WHERE [teacherId]=@teacherId
GO

CREATE OR ALTER PROCEDURE sp_selectTeacher
AS
SELECT [teacherId], [academicUnitId], [teacherName], [address], [phoneNumber], [emergencyNumber], [email], [birthdate]
FROM [dbo].[teacher] 
GO
/***********************SUBJECT*******************/
/*********************INSERT********************/
CREATE OR ALTER PROCEDURE sp_insertSubject
@classroomId int,
@teacherId int,
@subjectName nvarchar(100),
@hoursWeek int,
@credits int
AS
INSERT INTO [dbo].[Subject] ([classroomId], [teacherId], [subjectName], [hoursWeek], [credits])
VALUES (@classroomId, @teacherId, @subjectName, @hoursWeek, @credits)
GO
/*********************UPDATE********************/
CREATE OR ALTER PROCEDURE sp_updateSubject
@subjectId int,
@classroomId int,
@teacherId int,
@subjectName nvarchar(100),
@hoursWeek int,
@credits int
AS
UPDATE [dbo].[Subject]
SET [classroomId]=@classroomId, [teacherId]=@teacherId, [subjectName]=@subjectName, [hoursWeek]=@hoursWeek, [credits]=@credits
WHERE [subjectId]=@subjectId
GO

/*******************DELETE********************/
CREATE OR ALTER PROCEDURE sp_deleteSubject
@subjectId int
AS
DELETE FROM [dbo].[Subject]
WHERE [subjectId]=@subjectId
GO
/*********************SELECT********************/
CREATE OR ALTER PROCEDURE sp_selectSubjectById
@subjectId int
AS
SELECT [subjectId], [classroomId], [teacherId], [subjectName], [hoursWeek], [credits]
FROM [dbo].[Subject]
WHERE [subjectId]=@subjectId
GO

CREATE OR ALTER PROCEDURE sp_selectSubject
AS
SELECT [subjectId], [classroomId], [teacherId], [subjectName], [hoursWeek], [credits]
FROM [dbo].[Subject]
GO
/***********************STUDENT*******************/
/*********************INSERT********************/
CREATE OR ALTER PROCEDURE sp_insertStudent
@studentName nvarchar(50),
@address nvarchar(250),
@phoneNumber nvarchar(10),
@emergencyNumber nvarchar(10),
@email nvarchar(100),
@birthdate date
AS
INSERT INTO [dbo].[Student] ([studentName], [address], [phoneNumber], [emergencyNumber], [email], [birthdate])
VALUES (@studentName, @address, @phoneNumber, @emergencyNumber, @email, @birthdate)
GO
/*********************UPDATE********************/
CREATE OR ALTER PROCEDURE sp_updateStudent
@studentId int,
@studentName nvarchar(50),
@address nvarchar(250),
@phoneNumber nvarchar(10),
@emergencyNumber nvarchar(10),
@email nvarchar(100),
@birthdate date
AS
UPDATE [dbo].[Student]
SET [studentName]=@studentName, [address]=@address, [phoneNumber]=@phoneNumber, [emergencyNumber]=@emergencyNumber, [email]=@email, [birthdate]=@birthdate
WHERE [studentId]=@studentId
GO
/*******************DELETE********************/
CREATE OR ALTER PROCEDURE sp_deleteStudent
@studentId int
AS
DELETE FROM [dbo].[Student]
WHERE [studentId]=@studentId
GO

/*********************SELECT********************/
CREATE OR ALTER PROCEDURE sp_selectStudentById
@studentId int
AS
SELECT [studentId], [studentName], [address], [phoneNumber], [emergencyNumber], [email], [birthdate]
FROM [dbo].[Student]
WHERE [studentId]=@studentId
GO

CREATE OR ALTER PROCEDURE sp_selectStudent
AS
SELECT [studentId], [studentName], [address], [phoneNumber], [emergencyNumber], [email], [birthdate]
FROM [dbo].[Student]
GO
/***********************PROGRAM*******************/
/*********************INSERT********************/
CREATE OR ALTER PROCEDURE sp_insertProgram
@academicUnitId int,
@programName nvarchar(100)
AS
INSERT INTO [dbo].[Program] ([academicUnitId], [programName])
VALUES (@academicUnitId, @programName)
GO
/*********************UPDATE********************/
CREATE OR ALTER PROCEDURE sp_updateProgram
@programId int,
@academicUnitId int,
@programName nvarchar(100)
AS
UPDATE [dbo].[Program]
SET [academicUnitId]=@academicUnitId, [programName]=@programName
WHERE [programId]=@programId
GO
/*******************DELETE********************/
CREATE OR ALTER PROCEDURE sp_deleteProgram
@programId int
AS
DELETE FROM [dbo].[Program]
WHERE [programId]=@programId
GO
/*********************SELECT********************/ 
CREATE OR ALTER PROCEDURE sp_selectProgramById
@programId int
AS
SELECT [programId], [academicUnitId], [programName]
FROM [dbo].[Program]
WHERE [programId]=@programId
GO

CREATE OR ALTER PROCEDURE sp_selectProgram
AS
SELECT [programId], [academicUnitId], [programName]
FROM [dbo].[Program]
GO
/***********************Classroom*******************/
/*********************INSERT********************/
CREATE OR ALTER PROCEDURE sp_insertClassroom
@classroomName nvarchar(50)
AS
INSERT INTO [dbo].[Classroom] ([classroomName])
VALUES (@classroomName)
GO
/*********************UPDATE********************/
CREATE OR ALTER PROCEDURE sp_updateClassroom
@classroomId int,
@classroomName nvarchar(50)
AS
UPDATE [dbo].[Classroom]
SET [classroomName]=@classroomName
WHERE classroomId=@classroomId
GO
/*******************DELETE********************/
CREATE OR ALTER PROCEDURE sp_deleteClassroom
@classroomId int
AS
DELETE FROM [dbo].[Classroom]
WHERE [classroomId]=@classroomId
GO
/*********************SELECT********************/
CREATE OR ALTER PROCEDURE sp_selectClassroomById
@classroomId int
AS
SELECT [classroomId], [classroomName]
FROM [dbo].[Classroom]
WHERE [classroomId]=@classroomId
GO

CREATE OR ALTER PROCEDURE sp_selectClassroom
AS
SELECT [classroomId], [classroomName]
FROM [dbo].[Classroom]
GO
/***********************ACADEMIC UNIT*******************/
/*********************INSERT********************/
CREATE OR ALTER PROCEDURE sp_insertAcademicUnit
@academicUnitName nvarchar(100)
AS
INSERT INTO [dbo].[AcademicUnit] ([academicUnitName])
VALUES (@academicUnitName)
GO
/*********************UPDATE********************/
CREATE OR ALTER PROCEDURE sp_updateAcademicUnit
@academicUnitId int,
@academicUnitName nvarchar(100)
AS
UPDATE [dbo].[AcademicUnit]
SET [academicUnitName]=@academicUnitName
WHERE [academicUnitId]=@academicUnitId
GO
/*******************DELETE********************/
CREATE OR ALTER PROCEDURE sp_deleteAcademicUnit
@academicUnitId int
AS
DELETE FROM [dbo].[AcademicUnit]
WHERE [academicUnitId]=@academicUnitId
GO
/*********************SELECT********************/
CREATE OR ALTER PROCEDURE sp_selectAcademicUnitById
@academicUnitId int
AS
SELECT [academicUnitId], [academicUnitName]
FROM [dbo].[AcademicUnit]
WHERE [academicUnitId]=@academicUnitId
GO

CREATE OR ALTER PROCEDURE sp_selectAcademicUnit
AS
SELECT [academicUnitId], [academicUnitName]
FROM [dbo].[AcademicUnit]
GO
/***********************STUDENT PROGRAM*******************/
/*********************INSERT********************/
CREATE OR ALTER PROCEDURE sp_insertStudentProgram
@studentId int,
@programId int
AS
INSERT INTO [dbo].[StudentProgram] ([studentId], [programId])
VALUES (@studentId,@programId)
GO
/*********************UPDATE********************/
CREATE OR ALTER PROCEDURE sp_updateStudentProgram
@id int,
@studentId int,
@programId int
AS
UPDATE [dbo].[StudentProgram]
SET [studentId]=@studentId, [programId]=@programId
WHERE [id]=@id
GO
/*******************DELETE********************/
CREATE OR ALTER PROCEDURE sp_deleteStudentProgram
@id int
AS
DELETE FROM [dbo].[StudentProgram]
WHERE [id]=@id
GO
/*********************SELECT********************/
CREATE OR ALTER PROCEDURE sp_selectStudentProgramById
@id int
AS
SELECT [id], [studentId], [programId]
FROM [dbo].[StudentProgram]
WHERE [id]=@id
GO

CREATE OR ALTER PROCEDURE sp_selectStudentProgram
AS
SELECT [id], [studentId], [programId]
FROM [dbo].[StudentProgram]
GO
/***********************STUDENT SUBJECT*******************/
/*********************INSERT********************/
CREATE OR ALTER PROCEDURE sp_insertStudentSubject
@studentId int,
@subjectId int
AS
INSERT INTO [dbo].[StudentSubject] ([studentId], [subjectId])
VALUES (@studentId,@subjectId)
GO
/*********************UPDATE********************/
CREATE OR ALTER PROCEDURE sp_updateStudentSubject
@id int,
@studentId int,
@subjectId int
AS
UPDATE [dbo].[StudentSubject]
SET [studentId]=@studentId, [subjectId]=@subjectId
WHERE [id]=@id
GO
/*******************DELETE********************/
CREATE OR ALTER PROCEDURE sp_deleteStudentSubject
@id int
AS
DELETE FROM [dbo].[StudentSubject]
WHERE [id]=@id
GO
/*********************SELECT********************/
CREATE OR ALTER PROCEDURE sp_selectStudentSubjectById
@id int
AS
SELECT [id], [studentId], [subjectId]
FROM [dbo].[StudentSubject]
WHERE [id]=@id
GO

CREATE OR ALTER PROCEDURE sp_selectStudentSubject
AS
SELECT [id], [studentId], [subjectId]
FROM [dbo].[StudentSubject]
GO