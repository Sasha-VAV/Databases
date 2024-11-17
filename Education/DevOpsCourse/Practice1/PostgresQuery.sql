drop table if exists enemy;
create table enemy (
	id_enemy SERIAL PRIMARY KEY,
	enemy_name varchar(40) not null,
	health smallint default 0,
	strength smallint default 0,
	agility smallint default 0,
	intelligence smallint default 0,
	base_attack smallint default 0,
	enemy_class varchar(40) default 'Evil'
);
insert into enemy(id_enemy, enemy_name, strength, intelligence, agility, health, base_attack) values (
1,
'Orc-Warriour',
0,
100,
50,
500,
10
);

insert into enemy(id_enemy, enemy_name, strength, intelligence, agility, health, base_attack) values (
2,
'Orc-Shaman',
100,
50,
0,
250,
5
);

delete from enemy where id_enemy in (1, 2);

INSERT INTO enemy (id_enemy, enemy_name, strength, intelligence, agility, health, base_attack)
VALUES
	(1, 'Orc tank', 0, 100, 50, 500, 10),
	(2, 'Orc shaman', 100, 50, 0, 250, 5),
	(3, 'Darc elf assasin', 50, 0, 250, 100, 15),
	(4, 'Blood elf wizard', 0, 100, 300, 50, 5),
	(5, 'Forest elf archer', 50, 0, 250, 100, 15);

ALTER TABLE enemy ADD COLUMN level_enemy smallint DEFAULT -1;
	
select * from enemy;