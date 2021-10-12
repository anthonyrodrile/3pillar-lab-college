USE [college]
GO

SET IDENTITY_INSERT [dbo].[student] ON;
INSERT [dbo].[student] ([studentId], [studentName], [address], [phoneNumber], [emergencyNumber], [email], [birthdate]) VALUES (1, N'Jorge Contreras', N'CDMX', N'6985411', N'1245699', N'jorgecon@gmail.com', CAST(N'2000-03-06' AS Date))
GO
INSERT [dbo].[student] ([studentId], [studentName], [address], [phoneNumber], [emergencyNumber], [email], [birthdate]) VALUES (2, N'Israel Romero', N'CDMX', N'4564569', N'6545875', N'israelromero54@gmail.com', CAST(N'2000-02-02' AS Date))
GO
INSERT [dbo].[student] ([studentId], [studentName], [address], [phoneNumber], [emergencyNumber], [email], [birthdate]) VALUES (3, N'Antonio Banderas', N'CDMX', N'7865145', N'3626589', N'antonioban@gmail.com', CAST(N'2000-01-04' AS Date))
GO
INSERT [dbo].[student] ([studentId], [studentName], [address], [phoneNumber], [emergencyNumber], [email], [birthdate]) VALUES (4, N'Luis Gomez', N'CDMX', N'3245879', N'6583324', N'luigom24@gmail.com', CAST(N'2000-03-08' AS Date))
GO
INSERT [dbo].[student] ([studentId], [studentName], [address], [phoneNumber], [emergencyNumber], [email], [birthdate]) VALUES (5, N'Arturo Hernandez', N'CDMX', N'8886663', N'3355669', N'arturito25@gmail.com', CAST(N'2000-09-08' AS Date))
GO
INSERT [dbo].[student] ([studentId], [studentName], [address], [phoneNumber], [emergencyNumber], [email], [birthdate]) VALUES (6, N'Monica Villanueva', N'CDMX', N'8997611', N'5544778', N'monimoni@gmail.com', CAST(N'2000-09-05' AS Date))
GO
INSERT [dbo].[student] ([studentId], [studentName], [address], [phoneNumber], [emergencyNumber], [email], [birthdate]) VALUES (7, N'Sandra Ledezma', N'CDMX', N'2266889', N'1265599', N'sanlede33@gmail.com', CAST(N'2000-08-07' AS Date))
GO
INSERT [dbo].[student] ([studentId], [studentName], [address], [phoneNumber], [emergencyNumber], [email], [birthdate]) VALUES (8, N'Gaudy Arce', N'CDMX', N'8552233', N'6558999', N'gauarc87@gmail.com', CAST(N'2000-08-02' AS Date))
GO
INSERT [dbo].[student] ([studentId], [studentName], [address], [phoneNumber], [emergencyNumber], [email], [birthdate]) VALUES (9, N'Ana Barrientos', N'CDMX', N'4579646', N'2455881', N'anabarri64@gmail.com', CAST(N'2000-04-04' AS Date))
GO
INSERT [dbo].[student] ([studentId], [studentName], [address], [phoneNumber], [emergencyNumber], [email], [birthdate]) VALUES (10, N'Elena Abarca', N'CDMX', N'2657898', N'1547956', N'eleabar77@gmail.com', CAST(N'2000-08-06' AS Date))
GO
SET IDENTITY_INSERT [dbo].[student] OFF;

SET IDENTITY_INSERT [dbo].[academicUnit] ON;
INSERT [dbo].[academicUnit] ([academicUnitId], [academicUnitName]) VALUES (1, N'Faculty of Arts')
GO
INSERT [dbo].[academicUnit] ([academicUnitId], [academicUnitName]) VALUES (2, N'Letters faculty')
GO
INSERT [dbo].[academicUnit] ([academicUnitId], [academicUnitName]) VALUES (3, N'Faculty of Agri-Food Sciences')
GO
INSERT [dbo].[academicUnit] ([academicUnitId], [academicUnitName]) VALUES (4, N'Law School')
GO
INSERT [dbo].[academicUnit] ([academicUnitId], [academicUnitName]) VALUES (5, N'Education Faculty')
GO
INSERT [dbo].[academicUnit] ([academicUnitId], [academicUnitName]) VALUES (6, N'School of Economics')
GO
INSERT [dbo].[academicUnit] ([academicUnitId], [academicUnitName]) VALUES (7, N'Faculty of Social Sciences')
GO
INSERT [dbo].[academicUnit] ([academicUnitId], [academicUnitName]) VALUES (8, N'Science Faculty')
GO
INSERT [dbo].[academicUnit] ([academicUnitId], [academicUnitName]) VALUES (9, N'School of Medicine')
GO
INSERT [dbo].[academicUnit] ([academicUnitId], [academicUnitName]) VALUES (10, N'Faculty of Engineering')
GO
SET IDENTITY_INSERT [dbo].[academicUnit] OFF;

SET IDENTITY_INSERT [dbo].[program] ON;
INSERT [dbo].[program] ([programId], [academicUnitId], [programName]) VALUES (1, 1, N'Graphic design')
GO
INSERT [dbo].[program] ([programId], [academicUnitId], [programName]) VALUES (2, 2, N'Philosophy')
GO
INSERT [dbo].[program] ([programId], [academicUnitId], [programName]) VALUES (3, 3, N'Agronomy')
GO
INSERT [dbo].[program] ([programId], [academicUnitId], [programName]) VALUES (4, 4, N'Law')
GO
INSERT [dbo].[program] ([programId], [academicUnitId], [programName]) VALUES (5, 5, N'Teaching of Natural Sciences')
GO
INSERT [dbo].[program] ([programId], [academicUnitId], [programName]) VALUES (6, 6, N'Business management')
GO
INSERT [dbo].[program] ([programId], [academicUnitId], [programName]) VALUES (7, 7, N'Psychology')
GO
INSERT [dbo].[program] ([programId], [academicUnitId], [programName]) VALUES (8, 8, N'Biology')
GO
INSERT [dbo].[program] ([programId], [academicUnitId], [programName]) VALUES (9, 9, N'Nursing')
GO
INSERT [dbo].[program] ([programId], [academicUnitId], [programName]) VALUES (10, 10, N'Computer Science and Informatics')
GO
SET IDENTITY_INSERT [dbo].[program] OFF;

SET IDENTITY_INSERT [dbo].[studentProgram] ON;
INSERT [dbo].[studentProgram] ([id], [studentId], [programId]) VALUES (1, 1, 1)
GO
INSERT [dbo].[studentProgram] ([id], [studentId], [programId]) VALUES (2, 2, 2)
GO
INSERT [dbo].[studentProgram] ([id], [studentId], [programId]) VALUES (3, 3, 3)
GO
INSERT [dbo].[studentProgram] ([id], [studentId], [programId]) VALUES (4, 4, 4)
GO
INSERT [dbo].[studentProgram] ([id], [studentId], [programId]) VALUES (5, 5, 5)
GO
INSERT [dbo].[studentProgram] ([id], [studentId], [programId]) VALUES (6, 6, 6)
GO
INSERT [dbo].[studentProgram] ([id], [studentId], [programId]) VALUES (7, 7, 7)
GO
INSERT [dbo].[studentProgram] ([id], [studentId], [programId]) VALUES (8, 8, 8)
GO
INSERT [dbo].[studentProgram] ([id], [studentId], [programId]) VALUES (9, 9, 9)
GO
INSERT [dbo].[studentProgram] ([id], [studentId], [programId]) VALUES (10, 10, 10)
GO
INSERT [dbo].[studentProgram] ([id], [studentId], [programId]) VALUES (11, 4, 7)
GO
INSERT [dbo].[studentProgram] ([id], [studentId], [programId]) VALUES (12, 5, 10)
GO
INSERT [dbo].[studentProgram] ([id], [studentId], [programId]) VALUES (13, 3, 1)
GO
SET IDENTITY_INSERT [dbo].[studentProgram] OFF;


SET IDENTITY_INSERT [dbo].[teacher] ON;
INSERT [dbo].[teacher] ([teacherId], [academicUnitId], [teacherName], [address], [phoneNumber], [emergencyNumber], [email], [birthdate]) VALUES (1, 1, N'Erick Campos Castro', N'CDMX', N'88888888', N'87654321', N'ericampos@gmail.com', CAST(N'1990-08-08' AS Date))
GO
INSERT [dbo].[teacher] ([teacherId], [academicUnitId], [teacherName], [address], [phoneNumber], [emergencyNumber], [email], [birthdate]) VALUES (2, 2, N'Fabricio Rodriguez', N'CDMX', N'88989898', N'89898989', N'fabri22@gmail.com', CAST(N'1980-05-05' AS Date))
GO
INSERT [dbo].[teacher] ([teacherId], [academicUnitId], [teacherName], [address], [phoneNumber], [emergencyNumber], [email], [birthdate]) VALUES (3, 3, N'Catalina Castillo', N'CDMX', N'62586965', N'58965896', N'cata36@gmail.com', CAST(N'1986-09-09' AS Date))
GO
INSERT [dbo].[teacher] ([teacherId], [academicUnitId], [teacherName], [address], [phoneNumber], [emergencyNumber], [email], [birthdate]) VALUES (4, 4, N'Kendall Arce', N'CDMX', N'58785489', N'25896356', N'kenarce@gmail.com', CAST(N'1991-06-04' AS Date))
GO
INSERT [dbo].[teacher] ([teacherId], [academicUnitId], [teacherName], [address], [phoneNumber], [emergencyNumber], [email], [birthdate]) VALUES (5, 5, N'Mariela Arguello', N'CDMX', N'56988888', N'25454873', N'mariargu@gmail.com', CAST(N'1985-03-03' AS Date))
GO
INSERT [dbo].[teacher] ([teacherId], [academicUnitId], [teacherName], [address], [phoneNumber], [emergencyNumber], [email], [birthdate]) VALUES (6, 6, N'Hector Campos', N'CDMX', N'56665588', N'65621458', N'hecticam@gmail.com', CAST(N'1989-04-05' AS Date))
GO
INSERT [dbo].[teacher] ([teacherId], [academicUnitId], [teacherName], [address], [phoneNumber], [emergencyNumber], [email], [birthdate]) VALUES (7, 7, N'Javier Ruiz', N'CDMX', N'98564879', N'25684233', N'javiiru@gmail.com', CAST(N'1985-03-09' AS Date))
GO
INSERT [dbo].[teacher] ([teacherId], [academicUnitId], [teacherName], [address], [phoneNumber], [emergencyNumber], [email], [birthdate]) VALUES (8, 8, N'Roberto Gomez', N'CDMX', N'88787889', N'78787878', N'robergo@yahoo.com', CAST(N'1979-12-12' AS Date))
GO
INSERT [dbo].[teacher] ([teacherId], [academicUnitId], [teacherName], [address], [phoneNumber], [emergencyNumber], [email], [birthdate]) VALUES (9, 9, N'Jose Samaniego', N'CDMX', N'78123654', N'78462689', N'josesama@hotmail.com', CAST(N'1975-11-11' AS Date))
GO
INSERT [dbo].[teacher] ([teacherId], [academicUnitId], [teacherName], [address], [phoneNumber], [emergencyNumber], [email], [birthdate]) VALUES (10, 10, N'Karen Salas', N'CDMX', N'65783256', N'78652136', N'karensalass@gmail.com', CAST(N'1983-10-10' AS Date))
GO
SET IDENTITY_INSERT [dbo].[teacher] OFF;

SET IDENTITY_INSERT [dbo].[classroom] ON;
INSERT [dbo].[classroom] ([classroomId], [classroomName]) VALUES (1, N'A1')
GO
INSERT [dbo].[classroom] ([classroomId], [classroomName]) VALUES (2, N'A2')
GO
INSERT [dbo].[classroom] ([classroomId], [classroomName]) VALUES (3, N'A3')
GO
INSERT [dbo].[classroom] ([classroomId], [classroomName]) VALUES (4, N'B1')
GO
INSERT [dbo].[classroom] ([classroomId], [classroomName]) VALUES (5, N'B2')
GO
INSERT [dbo].[classroom] ([classroomId], [classroomName]) VALUES (6, N'B3')
GO
INSERT [dbo].[classroom] ([classroomId], [classroomName]) VALUES (7, N'C1')
GO
INSERT [dbo].[classroom] ([classroomId], [classroomName]) VALUES (8, N'C2')
GO
INSERT [dbo].[classroom] ([classroomId], [classroomName]) VALUES (9, N'C3')
GO
INSERT [dbo].[classroom] ([classroomId], [classroomName]) VALUES (10, N'C4')
GO
SET IDENTITY_INSERT [dbo].[classroom] OFF;

SET IDENTITY_INSERT [dbo].[subject] ON;
INSERT [dbo].[subject] ([subjectId], [classroomId], [teacherId], [subjectName], [hoursWeek], [credits]) VALUES (1, 1, 1, N'Art course', 8, 4)
GO
INSERT [dbo].[subject] ([subjectId], [classroomId], [teacherId], [subjectName], [hoursWeek], [credits]) VALUES (2, 1, 2, N'Classical philosophy', 6, 3)
GO
INSERT [dbo].[subject] ([subjectId], [classroomId], [teacherId], [subjectName], [hoursWeek], [credits]) VALUES (3, 2, 3, N'Intensive General Chemistry', 5, 4)
GO
INSERT [dbo].[subject] ([subjectId], [classroomId], [teacherId], [subjectName], [hoursWeek], [credits]) VALUES (4, 2, 4, N'Research and Reasoning Systems', 4, 2)
GO
INSERT [dbo].[subject] ([subjectId], [classroomId], [teacherId], [subjectName], [hoursWeek], [credits]) VALUES (5, 3, 5, N'Introduction to pedagogy', 3, 3)
GO
INSERT [dbo].[subject] ([subjectId], [classroomId], [teacherId], [subjectName], [hoursWeek], [credits]) VALUES (6, 3, 6, N'Elementary Mathematics', 6, 2)
GO
INSERT [dbo].[subject] ([subjectId], [classroomId], [teacherId], [subjectName], [hoursWeek], [credits]) VALUES (7, 4, 7, N'Basic Psychological Process', 2, 2)
GO
INSERT [dbo].[subject] ([subjectId], [classroomId], [teacherId], [subjectName], [hoursWeek], [credits]) VALUES (8, 4, 8, N'Introduction to Biology', 5, 3)
GO
INSERT [dbo].[subject] ([subjectId], [classroomId], [teacherId], [subjectName], [hoursWeek], [credits]) VALUES (9, 5, 9, N'Management in Nursing', 10, 5)
GO
INSERT [dbo].[subject] ([subjectId], [classroomId], [teacherId], [subjectName], [hoursWeek], [credits]) VALUES (10, 5, 10, N'Programming 1', 8, 4)
GO
SET IDENTITY_INSERT [dbo].[subject] OFF;

SET IDENTITY_INSERT [dbo].[studentSubject] ON;
INSERT [dbo].[studentSubject] ([id], [studentId], [subjectId]) VALUES (1, 1, 1)
GO
INSERT [dbo].[studentSubject] ([id], [studentId], [subjectId]) VALUES (2, 2, 2)
GO
INSERT [dbo].[studentSubject] ([id], [studentId], [subjectId]) VALUES (3, 3, 3)
GO
INSERT [dbo].[studentSubject] ([id], [studentId], [subjectId]) VALUES (4, 4, 4)
GO
INSERT [dbo].[studentSubject] ([id], [studentId], [subjectId]) VALUES (5, 5, 5)
GO
INSERT [dbo].[studentSubject] ([id], [studentId], [subjectId]) VALUES (6, 6, 6)
GO
INSERT [dbo].[studentSubject] ([id], [studentId], [subjectId]) VALUES (7, 7, 7)
GO
INSERT [dbo].[studentSubject] ([id], [studentId], [subjectId]) VALUES (8, 8, 8)
GO
INSERT [dbo].[studentSubject] ([id], [studentId], [subjectId]) VALUES (9, 9, 9)
GO
INSERT [dbo].[studentSubject] ([id], [studentId], [subjectId]) VALUES (10, 10, 10)
GO
SET IDENTITY_INSERT [dbo].[studentSubject] OFF;


SET IDENTITY_INSERT [dbo].[ProgramSubject] ON;
INSERT [dbo].[ProgramSubject] ([id], [programId], [subjectId]) VALUES (1, 1, 1)
GO
INSERT [dbo].[ProgramSubject] ([id], [programId], [subjectId]) VALUES (2, 2, 2)
GO
INSERT [dbo].[ProgramSubject] ([id], [programId], [subjectId]) VALUES (3, 3, 3)
GO
INSERT [dbo].[ProgramSubject] ([id], [programId], [subjectId]) VALUES (4, 4, 4)
GO
INSERT [dbo].[ProgramSubject] ([id], [programId], [subjectId]) VALUES (5, 5, 5)
GO
INSERT [dbo].[ProgramSubject] ([id], [programId], [subjectId]) VALUES (6, 6, 6)
GO
INSERT [dbo].[ProgramSubject] ([id], [programId], [subjectId]) VALUES (7, 7, 7)
GO
INSERT [dbo].[ProgramSubject] ([id], [programId], [subjectId]) VALUES (8, 8, 8)
GO
INSERT [dbo].[ProgramSubject] ([id], [programId], [subjectId]) VALUES (9, 9, 9)
GO
INSERT [dbo].[ProgramSubject] ([id], [programId], [subjectId]) VALUES (10, 10, 10)
GO
SET IDENTITY_INSERT [dbo].[studentSubject] OFF;