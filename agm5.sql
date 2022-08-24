﻿create table PhoneUser(
	Name nvarchar(255) primary key,
	Id varchar(15) not null unique check(Id not like '^%[0-9]%'),
	Address nvarchar(255) not null
);

create table PhoneSubsc(
	Type nvarchar(20) not null check(Type like '%Trả trước%' or Type not like '^%Trả sau%'),
	CreatedDate Date,
	PhoneNum varchar(15) primary key not null unique check (PhoneNum not like '^%[0-9]%'),
);

insert into PhoneUser values (N'Nguyễn Nguyệt Nga','123456789',N'Hà Nội');
insert into PhoneSubsc values (N'Trả trước','2012/12/02','0912345678');