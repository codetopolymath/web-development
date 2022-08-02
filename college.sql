--@block this is a block creating in sql allow you to run queries in interactive way
 
--@block creating a database shemas for college database managment system

/*
the basic syntax for creating a table is as below:
create table table_name
(column_name datatype key_assignment extras
);

-- NOTE: foreign key of one table must be the primary key of another table
*/


--@ now it's time to create a table for courses
create table course
(course_id int primary key AUTO_INCREMENT,
course_year int not null,
course_duration varchar(20) not null,
created_at timestamp default current_timestamp,
updated_at timestamp default current_timestamp on update current_timestamp,
status bool not null default 0
);

/* 
the basic syntax for inserting data into tables is as below:
  insert into table_name (columns) values (entries);
*/
--@block inserting the value for course table
--course id will be created based on 10_ format where _ represent year of study
insert into course (course_id, course_year, course_duration, created_at, updated_at, status) values
(101,1,12,now(),now(),0),
(102,2,12,now(),now(),0),
(103,3,12,now(),now(),0),
(104,4,12,now(),now(),0);



--@block now we are going to create a table for subject for our academics
create table subject 
(subject_id int primary key AUTO_INCREMENT,
course_id int not null,
faculty_id int not null,
subject_name varchar(200) not null,
created_at timestamp default current_timestamp,
updated_at timestamp default current_timestamp on update current_timestamp,
status bool not null default 0,
foreign key (course_id) references course(course_id)
);

--@block inserting the value for subject table
-- let us consider subject for course are created in 2010 so the naming system for subject id will be following rule as 20100_ 
insert into subject (subject_id, course_id, faculty_id, subject_name, created_at, updated_at, status) values
(201001,101,1601,'physical chemistry',now(),now(),0),
(201002,101,1602,'engineering drawing',now(),now(),0),
(201003,101,1603,'computer programming in C++',now(),now(),0),
(201004,101,1604,'abstraction and paradigms in programming',now(),now(),0),
(201005,102,1701,'data structure and algorithms',now(),now(),0),
(201006,102,1702,'discrete structure',now(),now(),0),
(201007,102,1703,'computer networks',now(),now(),0),
(201008,102,1704,'the logic for computer science',now(),now(),0),
(201009,103,1801,'database and information systems',now(),now(),0),
(201010,103,1802,'computer architecture',now(),now(),0),
(201011,103,1803,'artificial intelligence',now(),now(),0),
(201012,103,1804,'operating systems',now(),now(),0),
(201013,104,1901,'digital signal processing',now(),now(),0),
(201014,104,1902,'machine learning',now(),now(),0),
(201015,104,1903,'natural language programming',now(),now(),0),
(201016,104,1904,'cryptography and network security',now(),now(),0);



--@block creating a table for student of first year
create table first_year
(student_id int primary key AUTO_INCREMENT,
first_name varchar(20) not null,
last_name varchar(20) not null,
roll_no int not null,
course_id int not null,
created_at timestamp default CURRENT_TIMESTAMP,
updated_at timestamp default CURRENT_TIMESTAMP on update CURRENT_TIMESTAMP,
status bool not null default 0,
foreign key (course_id) references course(course_id)
);

-- let's distribute the classes based on the addmission year of student and insert roll number acourding to year wise criterio
-- for timestamp entrie we will be using now() function
-- for first year addmission took place in 2016 so student id are based on 20160_
insert into first_year (student_id, first_name, last_name, roll_no, course_id, created_at, updated_at, status) values
(201601,'rajat','thapar',1,101,now(),now(),0),
(201602,'ishfaq','khan',2,101,now(),now(),0),
(201603,'vishav','singh',3,101,now(),now(),0),
(201604,'waseem','bhat',4,101,now(),now(),0),
(201605,'shubham','pandita',5,101,now(),now(),0);



--@block creating a table for student of second year
create table second_year
(student_id int primary key AUTO_INCREMENT,
first_name varchar(20) not null,
last_name varchar(20) not null,
roll_no int not null,
course_id int not null,
created_at timestamp default CURRENT_TIMESTAMP,
updated_at timestamp default CURRENT_TIMESTAMP on update CURRENT_TIMESTAMP,
status bool not null default 0,
foreign key (course_id) references course(course_id)
);

-- for second year addmission took place in 2017 so roll number are based on 20170_
insert into second_year (student_id, first_name, last_name, roll_no, course_id, created_at, updated_at, status) values
(201701,'asif','malik',1,102,now(),now(),0),
(201702,'avinash','sharma',2,102,now(),now(),0),
(201703,'waseem','ahmed',3,102,now(),now(),0),
(201704,'aafaq','aijaz',4,102,now(),now(),0),
(201705,'nakul','sharma',5,102,now(),now(),0);



--@block creating a table for student of third year
create table third_year
(student_id int primary key AUTO_INCREMENT,
first_name varchar(20) not null,
last_name varchar(20) not null,
roll_no int not null,
course_id int not null,
created_at timestamp default CURRENT_TIMESTAMP,
updated_at timestamp default CURRENT_TIMESTAMP on update CURRENT_TIMESTAMP,
status bool not null default 0,
foreign key (course_id) references course(course_id)
);

-- for third year addmission took place in 2018 so roll number are based on 20180_
insert into third_year (student_id, first_name, last_name, roll_no, course_id, created_at, updated_at, status) values
(201801,'parush','gupta',1,103,now(),now(),0),
(201802,'viniak','gupta',2,103,now(),now(),0),
(201803,'anil','sharma',3,103,now(),now(),0),
(201804,'charanjeev','singh',4,103,now(),now(),0),
(201805,'pyuish','saini',5,103,now(),now(),0);



--@block creating a table for student of fourth year
create table fourth_year
(student_id int primary key AUTO_INCREMENT,
first_name varchar(20) not null,
last_name varchar(20) not null,
roll_no int not null,
course_id int not null,
created_at timestamp default CURRENT_TIMESTAMP,
updated_at timestamp default CURRENT_TIMESTAMP on update CURRENT_TIMESTAMP,
status bool not null default 0,
foreign key (course_id) references course(course_id)
);

-- for fourth year addmission took place in 2019 so roll number are based on 20190_
insert into fourth_year (student_id, first_name, last_name, roll_no, course_id, created_at, updated_at, status) values
(201901,'shivam','sharma',1,104,now(),now(),0),
(201902,'tushyuanka','sharma',2,104,now(),now(),0),
(201903,'zaid','mushtaq',3,104,now(),now(),0),
(201904,'mayank','koul',4,104,now(),now(),0),
(201905,'malik','mushtaq',5,104,now(),now(),0);



--@ now it's time to create a table for faculty of college
create table faculty
(faculty_id int primary key AUTO_INCREMENT,
first_name varchar(20) not null,
last_name varchar(20) not null,
course_id int not null,
created_at timestamp default CURRENT_TIMESTAMP,
updated_at timestamp default CURRENT_TIMESTAMP on update CURRENT_TIMESTAMP,
status bool not null default 0,
foreign key (course_id) references course(course_id)
);

--@block inserting the value for faculty table
-- patern for faculty id is inverse to student id number followed by year they teach 
insert into faculty (faculty_id, first_name, last_name, course_id, created_at, updated_at, status) values 
(1601,'suraj','raina',101,now(),now(),0),
(1602,'abhinav','goswami',101,now(),now(),0),
(1603,'anubhav','peer',101,now(),now(),0),
(1604,'unmukat','sharma',101,now(),now(),0),
(1701,'rahul','koul',102,now(),now(),0),
(1702,'syed','shah',102,now(),now(),0),
(1703,'anmol','bhat',102,now(),now(),0),
(1704,'mohsin','khan',102,now(),now(),0),
(1801,'mohd','lone',103,now(),now(),0),
(1802,'aadil','rehman',103,now(),now(),0),
(1803,'ajaz','ganai',103,now(),now(),0),
(1804,'anil','kumar',103,now(),now(),0),
(1901, 'arif', 'sheikh', 104, now(),now(), 0),
(1902,'dravid','manotra',104,now(),now(),0),
(1903,'gaurav','boughal',104,now(),now(),0),
(1904,'ghulam','shah',104,now(),now(),0);









































