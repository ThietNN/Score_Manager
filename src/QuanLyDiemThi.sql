create table student(
                        student_ID varchar(20) primary key,
                        student_name varchar(50),
                        dob datetime,
                        class varchar(20),
                        gender varchar(6)
);
create table subjects(
                         subject_ID varchar(20) primary key,
                         subject_name varchar(50)
);
create table scoreboard(
                           student_ID varchar(20),
                           subject_ID varchar(20),
                           score int,
                           exam_date datetime,
                           primary key (student_ID,subject_ID),
                           foreign key (student_ID) references student(student_ID),
                           foreign key (subject_ID) references subjects(subject_ID)
);
create table teacher(
                        teacher_ID varchar(20) primary key,
                        teacher_name varchar(50),
                        phone_number varchar(10)
);
alter table subjects add teacher_ID varchar(20);
alter table subjects add CONSTRAINT FK_teacher_ID foreign key (teacher_ID) references teacher(teacher_ID);