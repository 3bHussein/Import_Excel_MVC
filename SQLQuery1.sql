use CHSYSDB
select * from SubjectsTB
go

create database test
use test
truncate table tbl_registration
select  * from tbl_registration
create table tbl_registration(Email nvarchar(max),Password int,Name nvarchar(max),Address nvarchar(max),City nvarchar(max))


insert into tbl_registration
 
