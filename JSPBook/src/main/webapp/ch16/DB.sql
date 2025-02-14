create table if not exists Student(
   num int not null,
   depart varchar(20),
   name varchar(30),
   address varchar(20),
   phone varchar(20),
   primary key(num)
);

show tables;

desc Student;

insert into Student values(20230001, "모바일과", "홍길순", "서울시", "010-9002-1234");
insert into Student values(20230002, "모바일과", "홍길동", "경기도", "010-2009-4321");
insert into Student values(20232001, "영어과", "수여인", "인천시", "010-3918-0007");
insert into Student values(20232002, "영어과", "김다운", "서울시", "010-3002-0101");

select * from Student;
select * from member;

delete from Student;