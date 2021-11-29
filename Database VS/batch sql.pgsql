create table associates 
(
    associateName varchar(100) not null,
    associateLocale varchar(2) not null,
    revaPoints int not null,
    id serial primary key
);

create table trainers 
(
    id serial primary key,
    trianerName varchar(100) not null,
    campus varchar (3) not null,
    caffeineLevel int not null
);

create table batch
(
    id serial primary key,
    associateID int references associates(id),
    trianerID int references trainers(id)
);


insert into associates (associateName, associateLocale, revaPoints) values 
('Ai', 'CA', -20), ('Osiris', 'CA', -20), ('Jacob', 'FL', 50),  ('Janel', 'AZ', 50), ('Colton', 'OK', -180), ('Niles', 'AL', 200), ('Timothy', 'CT', -20), ('Aaron', 'RI', 200);
insert into trainers (trianerName, campus, caffeineLevel) values
('Marielle', 'USF', 60), ('Pushpinder', 'UTA', 50), ('Nick', 'UTA', 75), ('Mark', 'WVU', 16), ('Fred', 'UTA', 25), ('Juniper', 'USF', 197);
insert into batch (associateID, trianerID) values
(25,15), (26,13), (27,15), (28,18),(29, 14), (30,17);

select * from associates;
select count(*), associatelocale
from associates
group by associatelocale
order by count(id) desc;
select * from trainers;
select * from batch;


select * from associates full join batch 
on associates.id = batch.associateid;

select * from associates cross join batch;
select trianername, associatename from trainers 
inner join batch on batch.trianerid = trainers.id 
inner join associates on batch.associateid = associates.id;

select associatename, trianername from associates cross join trainers;

