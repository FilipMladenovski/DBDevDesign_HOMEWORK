CREATE TABLE IF NOT EXISTS student(
	id INTEGER NOT NULL,
	first_name VARCHAR(20) NOT NULL,
	last_name VARCHAR(30) NOT NULL,
	date_of_birth DATE NOT NULL,
	enrolled_date DATE NOT NULL,
	gender CHAR(1) CHECK (gender IN ('M', 'F', 'O')),
	national_id_number VARCHAR(20) UNIQUE NOT NULL,
	student_card_number VARCHAR(20) UNIQUE NOT NULL
);

CREATE TABLE IF NOT EXISTS teacher(
	id INTEGER NOT NULL,
	first_name VARCHAR(20) NOT NULL,
	last_name VARCHAR(30) NOT NULL,
	date_of_birth DATE NOT NULL,
	academic_rank VARCHAR(20),
	hire_date DATE NOT NULL
);

CREATE TABLE IF NOT EXISTS grade_details(
	id INTEGER NOT NULL,
	grade_id INTEGER NOT NULL,
	achivement_type_id INTEGER NOT NULL,
	achivement_points INTEGER NOT NULL,
	achivement_max_points INTEGER NOT NULL,
	achivement_date DATE NOT NULL
);

CREATE TABLE IF NOT EXISTS course(
	id INTEGER NOT NULL,
	name VARCHAR(20) NOT NULL,
	credit INTEGER NOT NULL,
	academic_year INTEGER NOT NULL,
	semester VARCHAR(10) NOT NULL
);

CREATE TABLE IF NOT EXISTS grade(
	id INTEGER NOT NULL,
	student_id INTEGER NOT NULL,
	course_id INTEGER NOT NULL,
	teacher_id INTEGER NOT NULL,
	grade SMALLINT NOT NULL,
	comment VARCHAR(100),
	created_date DATE NOT NULL
);

CREATE TABLE IF NOT EXISTS achivement_type(
	id INTEGER NOT NULL,
	name VARCHAR(20) NOT NULL,
	description TEXT,
	participation_rate INTEGER NOT NULL
);


SELECT * FROM student;
SELECT * FROM teacher;
SELECT * FROM grade_details;
SELECT * FROM course;
SELECT * FROM grade;
SELECT * FROM achivement_type;

