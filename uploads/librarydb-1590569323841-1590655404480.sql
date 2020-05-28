create table login(
	login_ID int,
	username varchar(30),
	password varchar(30),
	user_ID int,
	constraint pk_login PRIMARY KEY (login_ID)
);


create table shelf(
	shelf_ID int,
	snumber int,
	constraint pk_shelf PRIMARY KEY (shelf_ID)
);


create table research_papers(
	research_id int,
	topic varchar(50),
	faculty_name varchar(30),
	faculty_ID int,
	constraint pk_research PRIMARY KEY (research_id)
);


create table recommended_books(
	book_ID int,
	book_name varchar(30),
	faculty_id int,
	faculty_name varchar(30),
	constraint pk_recommended PRIMARY KEY (book_ID)
);


create table admin(
	admin_ID int,
	salary int,
	constraint pk_admin PRIMARY KEY (admin_ID)
);


create table reference_books(
	CR_ID int,
	constraint pk_CR PRIMARY KEY (CR_ID)
);


create table borrowable_books(
	bbook_ID int,
	status boolean,
	constraint pk_bbook PRIMARY KEY (bbook_ID)
);


create table books(
	ISBN int,
	bookname varchar(30),
	author varchar(30),
	edition_b char(9),
	shelf_ID int,
	constraint pk_book PRIMARY KEY (ISBN)
);


create table student(
	student_ID int,
	program varchar(30),
	rollno varchar(15),
	constraint pk_student PRIMARY KEY (student_ID)
);


create table faculty(
	faculty_ID int,
	department varchar(30),
	constraint pk_faculty PRIMARY KEY (faculty_ID)
);


create table librarian(
	librarian_ID int,
	salary int,
	work_shift varchar(10),
	constraint pk_librarian PRIMARY KEY (librarian_ID)
);


create table users(
	users_ID int,
	username varchar(30),
	profession varchar(30),
	constraint pk_user PRIMARY KEY (users_ID)
);


create table borrower(
	b_ID int,
	borrower_type varchar(20),
	constraint pk_borrower PRIMARY KEY (b_ID)
);


create table issue_log(
	issue_ID int,
	book_ID int,
	student_ID int,
	date_issued date,
	expected_return date,
	return_date date,
	status boolean,
	constraint pk_issue PRIMARY KEY (issue_ID)
);


create table penalty(
	penalty_ID int,
	issue_ID int,
	amount int,
	description varchar(30),
	constraint pk_penalty PRIMARY KEY (penalty_ID)
);



alter table login
	add constraint fk_user_ID FOREIGN KEY (user_ID) REFERENCES users(users_ID)
	ON DELETE CASCADE;

alter table books
	add constraint fk_shelf_ID FOREIGN KEY (shelf_ID) REFERENCES shelf(shelf_ID) 
	ON DELETE SET NULL;

alter table research_papers
	add constraint fk_faculty_ID FOREIGN KEY (faculty_ID) REFERENCES faculty(faculty_ID)
	ON DELETE SET NULL;

alter table recommended_books
	add constraint fk_f_ID FOREIGN KEY (faculty_ID) REFERENCES faculty(faculty_ID)
	ON DELETE SET NULL;

alter table reference_books
	add constraint fk_CR_ID FOREIGN KEY (CR_ID) REFERENCES books(ISBN)
	ON DELETE CASCADE;

alter table borrowable_books
	add constraint fk_bbook_ID FOREIGN KEY (bbook_ID) REFERENCES books(ISBN)
	ON DELETE CASCADE;

alter table student
	add constraint fk_student_ID FOREIGN KEY (student_ID) REFERENCES users(users_ID)
	ON DELETE CASCADE;

alter table faculty
	add constraint fk_facul_ID FOREIGN KEY (faculty_ID) REFERENCES users(users_ID)
	ON DELETE CASCADE;

alter table librarian
	add constraint fk_librarian_ID FOREIGN KEY (librarian_ID) REFERENCES users(users_ID)
	ON DELETE CASCADE;

alter table borrower
	add constraint fk_b_ID FOREIGN KEY (b_ID) REFERENCES users(users_ID)
	ON DELETE CASCADE;

alter table issue_log
	add constraint fk_issuebook_ID FOREIGN KEY (book_ID) REFERENCES books(ISBN);
	
alter table issue_log
	add constraint fk_stud_ID FOREIGN KEY (student_ID) REFERENCES student(student_ID);

alter table penalty
	add constraint fk_issue_ID FOREIGN KEY (issue_ID) REFERENCES issue_log(issue_ID)
	ON DELETE CASCADE;


insert into shelf(shelf_ID,snumber)
VALUES(1,1);

insert into shelf(shelf_ID,snumber)
VALUES(2,2);

insert into shelf(shelf_ID,snumber)
VALUES(3,3);


insert into users(users_ID,username,profession)
VALUES(1,'srujan','student');

insert into users(users_ID,username,profession)
VALUES(2,'siddarth','student');

insert into users(users_ID,username,profession)
VALUES(3,'puneeth','student');

insert into users(users_ID,username,profession)
VALUES(4,'rohith','student');

insert into users(users_ID,username,profession)
VALUES(5,'prof:rc','faculty');

insert into users(users_ID,username,profession)
VALUES(6,'prof:gsr','faculty');

insert into users(users_ID,username,profession)
VALUES(7,'yasasvi','librarian');

insert into users(users_ID,username,profession)
VALUES(8,'sumanth','librarian');

insert into users(users_ID,username,profession)
VALUES(9,'admin1','admin');

insert into users(users_ID,username,profession)
VALUES(10,'admin2','admin');




insert into admin(admin_ID,salary)
VALUES(9,745852);

insert into admin(admin_ID,salary)
VALUES(10,125634);

insert into librarian(librarian_ID ,salary ,work_shift)
VALUES(7,60000,"8:00-9:00");

insert into librarian(admin_ID,salary)
VALUES(8,61000,"8:00-6:00");



insert into student(student_ID,program,rollno)
VALUES(1,'IMTECH','IMT2016033');

insert into student(student_ID,program,rollno)
VALUES(2,'IMTECH','IMT2016037');

insert into student(student_ID,program,rollno)
VALUES(3,'IMTECH','IMT2016018');

insert into student(student_ID,program,rollno)
VALUES(4,'IMTECH','IMT2016072');




insert into faculty(faculty_ID,department)
VALUES(5,"DS");

insert into faculty(faculty_ID,department)
VALUES(6,"CS");








insert into login(Login_ID,username,password,user_ID)
VALUES(1,"srujan","pass",1);

insert into login(Login_ID,username,password,user_ID)
VALUES(2,"siddu","pass",2);

insert into login(Login_ID,username,password,user_ID)
VALUES(3,"puneeth","pass",3);

insert into login(Login_ID,username,password,user_ID)
VALUES(4,"rohith","pass",4);

insert into login(Login_ID,username,password,user_ID)
VALUES(5,"rc","pass",5);

insert into login(Login_ID,username,password,user_ID)
VALUES(6,"gsr","pass",6);

insert into login(Login_ID,username,password,user_ID)
VALUES(7,"admin","admin",7);

insert into login(Login_ID,username,password,user_ID)
VALUES(8,"admin1","admin1",8);





insert into books(ISBN,bookname,author,edition_b,shelf_ID)
VALUES(1,'CLRS','Stein',4,1);

insert into books(ISBN,bookname,author,edition_b,shelf_ID)
VALUES(2,'DBMS','Navathe',2,2);

insert into books(ISBN,bookname,author,edition_b,shelf_ID)
VALUES(3,'SE','Hipcroft',2,3);

insert into books(ISBN,bookname,author,edition_b,shelf_ID)
VALUES(4,'ML','Thomas',2,3);

insert into issue_log(issue_ID,book_ID,student_ID,date_issued,expected_return,return_date,status)
VALUES(1,1,1,'2018/05/01','2018/05/08',null,1);

insert into issue_log(issue_ID,book_ID,student_ID,date_issued,expected_return,return_date,status)
VALUES(2,2,1,'2018/05/01','2018/05/08',null,1);

insert into issue_log(issue_ID,book_ID,student_ID,date_issued,expected_return,return_date,status)
VALUES(3,2,2,'2018/05/10','2018/05/17','2018/05/20',1);

insert into issue_log(issue_ID,book_ID,student_ID,date_issued,expected_return,return_date,status)
VALUES(4,2,3,'2018/05/10','2018/05/17','2018/05/20',1);

insert into issue_log(issue_ID,book_ID,student_ID,date_issued,expected_return,return_date,status)
VALUES(5,3,4,'2018/06/01','2018/06/08','2018/06/10',0);

insert into penalty(penalty_ID,issue_ID,amount,description)
VALUES(1,1,30,,'Late-Return');

insert into penalty(penalty_ID,issue_ID,amount,description)
VALUES(2,2,40,'Tampering');

insert into penalty(penalty_ID,issue_ID,amount,description
VALUES(3,3,50,'Late-Return');



















