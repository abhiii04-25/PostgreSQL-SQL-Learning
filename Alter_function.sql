--Creating Table 
Create table students(
student_id serial primary key,
name varchar(100),
age bigint
);

--Inserting values
insert into students(name,age)
values('Abhi',23),
      ('Ansh',22),
	  ('Aryan',22);

Select*from students;
	  
--Adding new colunm
Alter table students
add column email varchar(100) Default 'Not Provided';

--Drop Column
Alter table students
Drop column email;

--Rename Column
Alter table students
rename column name to full_name;

--Change Datatype
Alter table students
alter column age type smallint;

--Default Values
Alter table students
alter column age set default 18;

--Remove Default values
Alter table students
alter column age drop default ;

--Add Contraints
Alter table students
add constraint age_check check(age>0);

--Drop constraints
Alter table students
Drop constraint age_check;

--Rename table name
Alter table students
rename to school_students;
	  
