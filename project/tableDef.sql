
drop table CoreRequirements;
drop table corecourse;
drop table corestudents;

create table CoreStudents(
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
 	foreign key (studentID) references CoreStudents(StudentID) 
 );

create table CoreCourse(
	SectionNO varchar(20) PRIMARY KEY,
 	Dept varchar(20),
 	CourseNo varchar(20),
 	C1 varchar(20),
 	C2 varchar(20),
 	C3 varchar(20)
 );

insert into CoreCourse values('63202','COEN','10','','','');
insert into CoreCourse values('63176','COEN','11','','','');
insert into CoreCourse values('63215','COEN','12','','','');
insert into CoreCourse values('64180','COEN','79','','','');
insert into CoreCourse values('63222','COEN','20','','','');
insert into CoreCourse values('63378','COEN','21','','','');
insert into CoreCourse values('62874','TESP','4','RTC1','','');
insert into CoreCourse values('62871','TESP','4','RTC1','','');
insert into CoreCourse values('62872','TESP','4','RTC1','','');
insert into CoreCourse values('62873','TESP','4','RTC1','','');
insert into CoreCourse values('63594','TESP','34','RTC2','','');
insert into CoreCourse values('63595','TESP','50','RTC2','','');
insert into CoreCourse values('63596','TESP','60','RTC2','','');
insert into CoreCourse values('62876','TESP','71','RTC2','','');
insert into CoreCourse values('63668','TESP','103','RTC3','','');
insert into CoreCourse values('63598','TESP','130','RTC3','','');
insert into CoreCourse values('63597','TESP','130','RTC3','','');
insert into CoreCourse values('62743','POLI','','','','');
insert into CoreCourse values('62738','POLI','1','CivicEngagement','','');
insert into CoreCourse values('62751','POLI','1','CivicEngagement','','');
insert into CoreCourse values('62742','POLI','2','SocialScience','CNI3','');
insert into CoreCourse values('62753','POLI','2','SocialScience','CNI3','');
insert into CoreCourse values('62754','POLI','2','SocialScience','CNI3','');
insert into CoreCourse values('62747','POLI','30','','','');
insert into CoreCourse values('62740','POLI','30','','','');
insert into CoreCourse values('63502','ETHN','153','Diversity','','');
insert into CoreCourse values('62570','ETHN','5','Diversity','','');
insert into CoreCourse values('62573','ETHN','20','Diversity','','');
insert into CoreCourse values('62572','ETHN','165','Diversity','CivicEngagement','');
insert into CoreCourse values('63514','HIST','143','CNI3','','');
insert into CoreCourse values('63544','PHIL','28','Ethics','','');
insert into CoreCourse values('62031','HIST','11A','CNI1','','');
insert into CoreCourse values('62592','ITAL','2','Language','Mathematics','');
insert into CoreCourse values('62595','ITAL','22','SocialScience','Language','Mathematics');
insert into CoreCourse values('62108','PHIL','2A','CTW2','','');
insert into CoreCourse values('62046','PHIL','11A','CNI1','','');
insert into CoreCourse values('62051','PHIL','12A','CNI2','','');
insert into CoreCourse values('62049','PHIL','12A','CNI2','','');
insert into CoreCourse values('62216','ANTH','1','NaturalScience','','');
insert into CoreCourse values('63361','ANTH','2','SocialScience','NaturalScience','');
insert into CoreCourse values('62215','ANTH','3','ELSJ','SocialScience','');
insert into CoreCourse values('64273','ANTH','5','STS','','');
insert into CoreCourse values('62003','ANTH','11A','CNI1','','');
insert into CoreCourse values('62005','ANTH','12A','CNI2','','');
insert into CoreCourse values('62221','ANTH','50','CNI3','','');
insert into CoreCourse values('62218','ANTH','110','','','');
insert into CoreCourse values('62227','ANTH','186','CNI3','','');
insert into CoreCourse values('62008','ARTH','11A','CNI1','','');
insert into CoreCourse values('62011','ARTH','12A','CNI2','','');
insert into CoreCourse values('63426','ARTH','21','','','');
insert into CoreCourse values('62548','ENVS','23','NaturalScience','','');
insert into CoreCourse values('62545','ENVS','22','CivicEngagement','','');
insert into CoreCourse values('63489','ENVS','79','','','');
insert into CoreCourse values('63032','FNCE','174','','','');
insert into CoreCourse values('63388','COMM','1','','','');
insert into CoreCourse values('62465','COMM','2','','','');
insert into CoreCourse values('62428','COMM','12','STS','','');
insert into CoreCourse values('62458','COMM','20','','','');
insert into CoreCourse values('62437','COMM','30','','','');
insert into CoreCourse values('62457','COMM','40','','','');
insert into CoreCourse values('52442','COMM','130B','AdvancedWriting','','');
insert into CoreCourse values('62440','COMM','131B','Arts','','');
insert into CoreCourse values('62438','COMM','146B','AdvancedWriting','','');
insert into CoreCourse values('62069','ENGL','1A','CTW1','','');
insert into CoreCourse values('62101','ENGL','2A','CTW2','','');
insert into CoreCourse values('53478','ENGL','100','AdvancedWriting','','');
insert into CoreCourse values('63488','ENGL','162','RTC2','','');
insert into CoreCourse values('63288','ENGR','1','STS','','');
insert into CoreCourse values('62719','PHYS','31','NaturalScience','','');
insert into CoreCourse values('62589','GERM','2','Language','','');
insert into CoreCourse values('62590','GERM','22','Language','SocialScience','');
insert into CoreCourse values('63517','HIST','162','CNI3','','');
insert into CoreCourse values('63522','HIST','177','Diversity','','');
insert into CoreCourse values('62600','JAPN','2','Language','Mathematics','');
insert into CoreCourse values('62257','ARTS','75','Arts','','');
insert into CoreCourse values('62604','MATH','6','Mathematics','','');
insert into CoreCourse values('63402','MATH','8','Mathematics','','');
insert into CoreCourse values('63403','MATH','11','','','');
insert into CoreCourse values('62609','MATH','12','Mathematics','','');
insert into CoreCourse values('62615','MATH','13','','','');
insert into CoreCourse values('62616','MATH','14','','','');	
insert into CoreCourse values('62656','MUSC','1','Arts','','');
insert into CoreCourse values('62657','MUSC','1A','Arts','','');
insert into CoreCourse values('63530','MUSC','3A','','','');
insert into CoreCourse values('62652','MUSC','43','Arts','','');
insert into CoreCourse values('62691','PHSC','1','STS','','');
insert into CoreCourse values('63412','PHSC','2','CivicEngagement','','');
insert into CoreCourse values('63956','PHSC','125','Diversity','','');
insert into CoreCourse values('62800','RSOC','9','RTC1','','');
insert into CoreCourse values('62804','RSOC','135','ELSJ','RTC3','');
insert into CoreCourse values('62816','SCTR','19','RTC1','','');
insert into CoreCourse values('63957','SCTR','28','','','');
insert into CoreCourse values('63589','SCTR','165R','AdvancedWriting','RTC3','');
insert into CoreCourse values('62837','SOCI','1','SocialScience','','');
insert into CoreCourse values('62827','SOCI','30','ELSJ','CivicEngagement','');
insert into CoreCourse values('62821','SOCI','33','Diversity','','');
insert into CoreCourse values('62824','SOCI','49','STS','','');
insert into CoreCourse values('62830','SOCI','165','ELSJ','','');
insert into CoreCourse values('63676','SOCI','175','Diversity','','');
insert into CoreCourse values('62904','THTR','8','Arts','','');
insert into CoreCourse values('64314','THTR','170','AdvancedWriting','','');
insert into CoreCourse values('63611','WGST','47','RTC2','','');
insert into CoreCourse values('63613','WGST','104','CNI3','','');
insert into CoreCourse values('64208','WGST','131','Diversity','','');




insert into CoreStudents values('s1','Pedro','incomplete');
insert into CoreStudents values('s2','Matias','incomplete');
insert into CoreStudents values('s3','Aditya','incomplete');
insert into CoreStudents values('s4','Joe','incomplete');
insert into CoreStudents values('s5','Clark','incomplete');

insert into CoreRequirements values('s1',
'incomplete',
'incomplete',
'incomplete',
'incomplete',
'incomplete',
'incomplete',
'incomplete',
'incomplete',
'incomplete',
'incomplete',
'incomplete',
'incomplete',
'incomplete',
'incomplete',
'incomplete',
'incomplete',
'incomplete',
'incomplete',
'incomplete');
insert into CoreRequirements values('s2',
'incomplete',
'incomplete',
'incomplete',
'incomplete',
'incomplete',
'incomplete',
'incomplete',
'incomplete',
'incomplete',
'incomplete',
'incomplete',
'incomplete',
'incomplete',
'incomplete',
'incomplete',
'incomplete',
'incomplete',
'incomplete',
'incomplete');
insert into CoreRequirements values('s3',
'incomplete',
'incomplete',
'incomplete',
'incomplete',
'incomplete',
'incomplete',
'incomplete',
'incomplete',
'incomplete',
'incomplete',
'incomplete',
'incomplete',
'incomplete',
'incomplete',
'incomplete',
'incomplete',
'incomplete',
'incomplete',
'incomplete');
insert into CoreRequirements values('s4',
'incomplete',
'incomplete',
'incomplete',
'incomplete',
'incomplete',
'incomplete',
'incomplete',
'incomplete',
'incomplete',
'incomplete',
'incomplete',
'incomplete',
'incomplete',
'incomplete',
'incomplete',
'incomplete',
'incomplete',
'incomplete',
'incomplete');
insert into CoreRequirements values('s5',
'incomplete',
'incomplete',
'incomplete',
'incomplete',
'incomplete',
'incomplete',
'incomplete',
'incomplete',
'incomplete',
'incomplete',
'incomplete',
'incomplete',
'incomplete',
'incomplete',
'incomplete',
'incomplete',
'incomplete',
'incomplete',
'incomplete');




