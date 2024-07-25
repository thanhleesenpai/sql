DROP TABLE IF EXISTS student CASCADE;
DROP TABLE IF EXISTS clazz CASCADE;
DROP TABLE IF EXISTS lecturer CASCADE;

--ket noi den db tinyedu
\c tinyedu
--tao bang
CREATE TABLE student(
	student_id char(10) NOT NULL,
	first_name varchar(20),
	last_name varchar(20),
	dob date,
	gender char(1), --'F':nu,'M':nam
	clazz_id char(6),
	--PRIMARY KEY (student_id)
	CONSTRAINT pk_student PRIMARY KEY (student_id),
	CHECK (gender = 'F' OR gender ='M')
);

CREATE TABLE clazz(
	clazz_id char(6) NOT NULL,
	name varchar(20) NOT NULL,
	lecturer_id char(8),
	monitor_id char(8),	--khoa ngoai tham chieu den student
	PRIMARY KEY (clazz_id),
	CONSTRAINT fk1_class2student FOREIGN KEY(monitor_id)
	REFERENCES student(student_id)
		
);

--then rang buoc khoa ngoai vao bang student

ALTER TABLE student ADD 
	CONSTRAINT fk1_student2class FOREIGN KEY(clazz_id)
	REFERENCES clazz(clazz_id);   --(ON DELETE SET NULL, ON UPDATE CASDADE)


CREATE TABLE lecturer(
	lecturer_id char(8) NOT NULL,
	first_name varchar(20) NOT NULL,
	last_name varchar(20) NOT NULL,
	dob date,
	gender char(1), --'F':nu,'M':nam
	address char(40),
	email char(20),
	PRIMARY KEY (lecturer_id)

);
