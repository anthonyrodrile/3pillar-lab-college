USE [college];
GO
/*********************TEACHER******************/
EXEC sp_insertTeacher @academicUnitId = 1, @teacherName = 'Anthony Rodriguez', @address = 'Sarchi, Alajuela',@phoneNumber = 87455866, @emergencyNumber = 24545150, @email = 'anthony.rodriguez@3pillar.com', @birthdate = '1997-11-5';

EXEC sp_updateTeacher @teacherId = 4, @academicUnitId = 4, @teacherName = 'Kendall Arce', @address = 'Madrid',@phoneNumber = 8745877, @emergencyNumber = 58885150, @email = 'kendallsiuu@gmail.com', @birthdate = '1991-06-04';

EXEC sp_deleteTeacher @teacherId = 11;

EXEC sp_selectTeacherById @teacherId = 1;

EXEC sp_selectTeacher;

/********************SUBJECT******************/
EXEC sp_insertSubject @classroomId = 1, @teacherId = 1, @subjectName = 'Estadistics', @hoursWeek = 7, @credits = 4; 

EXEC sp_updateSubject @subjectId = 11, @classroomId = 2, @teacherId = 1, @subjectName = 'Estadistics', @hoursWeek = 7, @credits = 4;

EXEC sp_deleteSubject @subjectId = 11;

EXEC sp_selectSubjectById @subjectId = 1;

EXEC sp_selectSubject;

/***********************STUDENT*******************/
EXEC sp_insertStudent @studentName = 'Ricardo Cubero', @address = 'CDMX', @phoneNumber = 54789865, @emergencyNumber = 89562365, @email = 'riccub@gmail.com', @birthdate = '2001-5-5';

EXEC sp_updateStudent @studentId = 11, @studentName = 'Ricardo Cubero', @address = 'Costa Rica', @phoneNumber = 54789865, @emergencyNumber = 89562365, @email = 'riccub@gmail.com', @birthdate = '2001-5-5';

EXEC sp_deleteStudent @studentId = 11;

EXEC sp_selectStudentById @studentId = 1;

EXEC sp_selectStudent;

/***********************PROGRAM*******************/
EXEC sp_insertProgram @academicUnitId = 1, @programName = 'Paint';

EXEC sp_updateProgram @programId = 11, @academicUnitId = 1, @programName = 'Painting and design';

EXEC sp_deleteProgram @programId = 11;

EXEC sp_selectProgramById @programId = 1;

EXEC sp_selectProgram;

/***********************Classroom*******************/
EXEC sp_insertClassroom @classroomName = 'C1';

EXEC sp_updateClassroom @classroomId = 11, @classroomName = 'C1';

EXEC sp_deleteClassroom @classroomId = 11;

EXEC sp_selectClassroomById @classroomId = 1;

EXEC sp_selectClassroom;

/***********************ACADEMIC UNIT*******************/
EXEC sp_insertAcademicUnit @academicUnitName = 'Dramatic Arts';

EXEC sp_updateAcademicUnit @academicUnitId = 11, @academicUnitName = 'Dramatic Arts';

EXEC sp_deleteAcademicUnit @academicUnitId = 11;

EXEC sp_selectAcademicUnitById @academicUnitId = 1;

EXEC sp_selectAcademicUnit;

/***********************STUDENT PROGRAM*******************/
EXEC sp_insertStudentProgram @studentId = 1, @programId = 2;

EXEC sp_updateStudentProgram @id = 11, @studentId = 1, @programId = 3;

EXEC sp_deleteStudentProgram @id = 11;

EXEC sp_selectStudentProgramById @id = 1;

EXEC sp_selectStudentProgram;

/***********************STUDENT SUBJECT*******************/
EXEC sp_insertStudentSubject @studentId = 3, @subjectId = 4;
 
EXEC sp_updateStudentSubject @id = 11, @studentId = 3, @subjectId = 8;

EXEC sp_deleteStudentSubject @id = 11;

EXEC sp_selectStudentSubjectById @id = 1;

EXEC sp_selectStudentSubject;