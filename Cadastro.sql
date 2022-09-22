create database cadastro;
use cadastro;
create table pessoa(
	id smallint unsigned auto_increment,
	Pnome varchar(30),
    Lnome varchar(30),
    sexo enum('M', 'F'),
    DNascimento date,
    Nacionalidade varchar(30),
    primary key(id)
    );
    
    select * from pessoa;
    desc pessoa;
    drop table pessoa;
    
    insert into pessoa values(default, 'José', 'Silva', 'M', '1991-11-14', 'Brasil'),
							 (default, 'Maria', 'Moura', 'F', '1981-01-14', 'Brasil'),
                             (default, 'João', 'Santos', 'F', '1979-10-23', 'Brasil');


create table favorite_food(
	id smallint unsigned auto_increment,
    food varchar(30),
    constraint pk_pessoa primary key(id, food),
    constraint fk_food foreign key(id)
    references pessoa (id)
    );
    
    drop table favorite_food;
    select * from favorite_food;
    
    insert into favorite_food values(default, 'Big Mac');