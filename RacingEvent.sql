drop database if exists racingEvent;
create database racingEvent DEFAULT CHARACTER SET utf8;

use racingEvent;

drop table if exists racing_event;

drop table if exists sponsor;

# drop table if exists racer;
#
# drop table if exists viewer;

create table racing_event (
    event_id bigint not null auto_increment,
    event_name varchar(45) null comment '',
    event_date date null comment '',
    location varchar(60) null comment '',
    primary key (event_id) comment '');

insert into racing_event (event_id, event_name, event_date, location) values (1, 'Formula1', '2024-10-28', 'Vitebsk');
insert into racing_event (event_id, event_name, event_date, location) values (2, 'Drift', '2024-07-14', 'Minsk');

create table sponsor (
    sp_id bigint not null auto_increment,
    sp_name varchar(45) null comment '',
    sp_budget float null comment '',
    date_contract date null comment '',
    event_id bigint null comment '',
    primary key (sp_id) comment '',
    foreign key (event_id)
    references racing_event(event_id)
    on delete no action
    on update no action);

insert into sponsor (sp_id, sp_name, sp_budget, date_contract, event_id) values ('1','Westmotors','100000','2024-10-14','1');
insert into sponsor (sp_id, sp_name, sp_budget, date_contract, event_id) values ('2','Евроопт','69999.9','2024-10-10','1');
