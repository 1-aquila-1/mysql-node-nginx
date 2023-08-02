use nodedb;

drop table if exists pessoa;

create table pessoa (
    id int not null auto_increment, 
    nome varchar(255),
    constraint pessoa_id primary key(id)
);

insert into pessoa values (null, "Nayane");
insert into pessoa values (null, "Paulo");
insert into pessoa values (null, "Clara");
insert into pessoa values (null, "Melk");