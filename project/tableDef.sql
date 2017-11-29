create table Students(
	STUDENTID varchar(20) PRIMARY KEY,
	name varchar(20) NOT NULL,
	corecomplete varchar(20) check( corecomplete in ('complete','incomplete')) NOT NULL
 );

create table CoreRequirements(
	StudentID,
	CTW1 varchar(20) check( CTW1 in ('complete','wip','incomplete')) NOT NULL,
	CTW2 varchar(20) check( CTW2 in ('complete','wip','incomplete')) NOT NULL,
	CNI1 varchar(20) check( CNI1 in ('complete','wip','incomplete')) NOT NULL,
	CNI2 varchar(20) check( CNI2 in ('complete','wip','incomplete')) NOT NULL,
	CNI3 varchar(20) check( CNI3 in ('complete','wip','incomplete')) NOT NULL,
	STS varchar(20) check( STS in ('complete','wip','incomplete')) NOT NULL,
	CIVICENGAGEMENT varchar(20) check( CIVICENGAGEMENT in ('complete','wip','incomplete')) NOT NULL,
	DIVERSITY varchar(20) check( DIVERSITY in ('complete','wip','incomplete')) NOT NULL,
	ETHICS varchar(20) check( ETHICS in ('complete','wip','incomplete')) NOT NULL,
	RTC1 varchar(20) check( RTC1 in ('complete','wip','incomplete')) NOT NULL,
	RTC2 varchar(20) check( RTC2 in ('complete','wip','incomplete')) NOT NULL,
	RTC3 varchar(20) check( RTC3 in ('complete','wip','incomplete')) NOT NULL,
	ELSJ varchar(20) check( ELSJ in ('complete','wip','incomplete')) NOT NULL,
	ADVANCEDWRITING varchar(20) check( ADVANCEDWRITING in ('complete','wip','incomplete')) NOT NULL,
	ARTS varchar(20) check( ARTS in ('complete','wip','incomplete')) NOT NULL,
	LANGUAGE varchar(20) check( LANGUAGE in ('complete','wip','incomplete')) NOT NULL,
	NATURALSCIENCE varchar(20) check( NATURALSCIENCE in ('complete','wip','incomplete')) NOT NULL,
	SOCIALSCIENCE varchar(20) check( SOCIALSCIENCE in ('complete','wip','incomplete')) NOT NULL,
	MATHEMATICS varchar(20) check( MATHEMATICS in ('complete','wip','incomplete')) NOT NULL,
 	foreign key (studentID) references Students(StudentID) 
 );

create table CoreCourse(
	SectionNO varchar(20) PRIMARY KEY,
 	Dept varchar(20),
 	CourseNo varchar(20),
 	C1 varchar(20),
 	C2 varchar(20),
 	C3 varchar(20)
 );

