

CREATE TABLE lecturer (
	personal_id VARCHAR(4) PRIMARY KEY,
	surname VARCHAR(20) NOT NULL,
	position VARCHAR(20) NOT NULL,
	department VARCHAR(20) NOT NULL,
	specialty VARCHAR(25) NOT NULL,
	home_phone SMALLINT CHECK(home_phone>0)
);




CREATE TABLE subject (
	subject_id VARCHAR(3) PRIMARY KEY,
	subject_name VARCHAR(20) NOT NULL,
	number_of_hours SMALLINT CHECK(number_of_hours>0),
	specialty VARCHAR(25) NOT NULL,
	semester SMALLINT CHECK(semester>0)
);




CREATE TABLE students_group (
	group_id VARCHAR(3) PRIMARY KEY,
	group_name VARCHAR(20) NOT NULL,
	number_of_people SMALLINT CHECK(number_of_people>0),
	specialty VARCHAR(25) NOT NULL,
	leader_surname VARCHAR(20) NOT NULL
);




CREATE TABLE lecturer_teaches (
	group_id VARCHAR(3) REFERENCES student_group(group_id),
	subject_id VARCHAR(3) REFERENCES subject(subject_id),
	personal_id VARCHAR(4) REFERENCES lecturer(personal_id),
	auditorium_number SMALLINT CHECK(auditorium_number>0),
	PRIMARY KEY (group_id, subject_id, personal_id)
);