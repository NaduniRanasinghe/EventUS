create database Events;

create table Events.contactus(
id int auto_increment primary key,
name varchar(50),
email varchar(50),
contact varchar(15),
query varchar(1000)
);
 insert into Events.contactus values(null,'Naduni','nad@gmail.com','0716889954','Hello EventUs');
 insert into Events.contactus values(null,'Pavani','pav@gmail.com','0716889456','Hi How Are You?');
 insert into Events.contactus values(null,'Nadith','nadith@gmail.com','0711289954','Thank you for your service');
insert into Events.contactus values(null,'Anoma','anoma@gmail.com','0716129954','Send me your package details');
 insert into Events.contactus values(null,'Manuth','manuth@gmail.com','0714289954','Thank you for your mail');


CREATE TABLE Events.employees(
  id int auto_increment primary key,
  nic varchar(15),
  fname varchar(15), 
  lname varchar(15),
  appDate varchar(20),
  email varchar(50),
  contact varchar(20),
  gender varchar(10),
  department varchar(30)
);
insert into Events.employees values(null,'966740449V','Naduni','Ranasinghe','21/5/2018','nadu@gmail.com','0772889964',
'female','Marketing');
insert into Events.employees values(null,'956740449V','Niluni','De Silva','31/5/2018','nilu@gmail.com','0772889965',
'female','Entertainment');
insert into Events.employees values(null,'967740449V','Achinthya','Subasinghe','21/4/2017','achini@gmail.com','0762889964',
'female','Deco');
insert into Events.employees values(null,'966740449V','Sehani','Seneviratne','21/2/2018','sehani@gmail.com','0712889964',
'female','Deco');
insert into Events.employees values(null,'965740449V','Kamal','Sirisena','10/5/2018','kamal@gmail.com','0772882964',
'male','Marketing');


create table Events.admin(
id int auto_increment primary key,
fullname varchar(20),
Aduname varchar(20),
Adpwd varchar(20),
email varchar(30)
);
insert into admin values(null,'Naduni Rnasinghe','naduni','nadnew','nadu@gmail.com');
insert into admin values(null,'Niluni De Silva','niluni','nilnew','nilu@gmail.com');
insert into admin values(null,'Achini Subasinghe','achini','achinew','achini@gmail.com');
insert into admin values(null,'Pasindu Liyanage','pasindu','pasinew','pasi@gmail.com');
insert into admin values(null,'Shehani Seneviratne','sehani','sehinew','sehi@gmail.com');


create table Events.eventus1(
eventId int auto_increment primary key,
username varchar(20),
name varchar(50),
eventType varchar(20) default null,
deco varchar(30),
entertain varchar(30),
contact varchar(20)

);
insert into Events.eventus1 values(null,'nilu','Niluni De Silva','bday','balloons', 'DJ','0112889964');
insert into Events.eventus1 values(null,'nadu','Naduni Ranasinghe','party','flowers', 'band','0112689964');
insert into Events.eventus1 values(null,'achini','Achini De Silva','wedding','flowersballoons', 'no','0113289964');
insert into Events.eventus1 values(null,'pasi','Pasindu liyanage','wedding','balloons', 'DJ','011489964');
insert into Events.eventus1 values(null,'shehi','Shehani De Silva','bday','balloons', 'band','0112823964');


create table Events.eventloc(
 locId int auto_increment primary key,
 locName varchar(50),
 Quantity int,
 eventDate varchar(20)
 );

insert into Events.eventloc values(null,'Heaven kandy',150,'12/5/2017'); 
insert into Events.eventloc values(null,'Grand City',200,'12/1/2017'); 
insert into Events.eventloc values(null,'City Heaven',450,'12/5/2016'); 
insert into Events.eventloc values(null,'City view',500,'12/5/2017'); 
insert into Events.eventloc values(null,'Heaven kandy',150,'12/5/2018'); 

 
 create table Events.users(
 id int auto_increment primary key,
 fullname varchar(50),
 uname varchar(20),
 email varchar(50),
 pwd varchar(20)
 );
 
insert into Events.users values(null, 'Naduni Liyanage', 'keshy', 'keshy@gmail.com','keshy96');
insert into Events.users values(null, 'Keshani Liyanage', 'Ranz', 'ranz@gmail.com','ranz96');
insert into Events.users values(null, 'Maduranga Silva', 'pasi', 'madu@gmail.com','pasi96');
insert into Events.users values(null, 'Maduni Ranasinghe', 'madu', 'madu@gmail.com','madu96');
insert into Events.users values(null, 'Saduni Liyanage', 'sadu', 'sadu@gmail.com','sadu96');

drop table Events.admin;
drop table Events.contactus;
drop table Events.employees;
drop table Events.eventus1;
drop table Events.users;
drop table Events.eventloc;
