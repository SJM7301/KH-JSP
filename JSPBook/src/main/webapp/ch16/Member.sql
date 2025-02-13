create table if not exists Member(
	id varchar(20) not null,
	passwd varchar(20),
	name varchar(30),
	primary key (id)
);

select * from Member;
desc Member;
