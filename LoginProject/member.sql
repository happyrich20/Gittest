drop table member PURGE;

create table member(
	memberId VARCHAR2(16) primary key,
	memberName VARCHAR2(15) not null,
	memberAge NUMBER not null,
	memberEmail VARCHAR2(30) not null,
	zipCode VARCHAR2(5) not null,
	memberAddr1 VARCHAR2(50) not null,
	memberAddr2 VARCHAR2(50) not null,
	memberTel VARCHAR2(15) not null,
	memberGender CHAR(1) not null,
	memberCountry VARCHAR2(15) not null,
	memberPassword VARCHAR2(16)
)

create table zipCodeTable(
	zipCodeId NUMBER primary key,
	zipCode VARCHAR2(5) unique not null,
	do VARCHAR2(21) not null,
	si VARCHAR2(21) not null,
	gu VARCHAR2(15) not null,
	ro VARCHAR2(20) not null,
	bunzi VARCHAR2(21) not null
)

alter table member
add constraint member_zipCode_fk
foreign key (zipCode)
references zipCodeTable(zipCode);

create SEQUENCE zipCodeTable_seq;

insert into zipCodeTable values(zipCodeTable_seq.nextval, '11111', '경상북도', '경산시', ' ', '하양로', '13-13');
insert into zipCodeTable values(zipCodeTable_seq.nextval, '11112', '경상북도', '경산시', ' ', '하양로', '13-13');
insert into zipCodeTable values(zipCodeTable_seq.nextval, '11113', '경상북도', '경산시', ' ', '하양로', '13-13');
insert into zipCodeTable values(zipCodeTable_seq.nextval, '11114', '경상북도', '경산시', ' ', '하양로', '13-13');
commit


