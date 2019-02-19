drop table id EXISTS s_users;

CREATE TABLE s_users(
	id INT PRIMARY KEY AUTO_INCREMENT,
	username VARCHAR(100) UNICODE NOT NULL,
	password VARCHAR(255) not NULL,
	active BOOLEAN
)Engine= INNODB


insert into s_users(username,PASSWORD,active)
values('ikhsan','hikari29',TRUE)

insert into s_users(username,PASSWORD,active)
values('hikari','hikari29',TRUE)


CREATE TABLE s_permissions(
	id INT PRIMARY KEY AUTO_INCREMENT,
	id_user VARCHAR(100) not NULL REFERENCES s_users(id),
	user_role VARCHAR(255) not NULL
) ENGINE = INNODB


insert into s_permissions(id_user,user_role)
values(1,'ROLE_SUPERVISOR');

insert into s_permissions(id_user,user_role)
values(1,'ROLE_OPERATOR');


select username,PASSWORD,active from s_users where username = 'hikari'

select u.username, p.user_role from s_users u
inner join s_permissions p on u.id = p.id_user
Where u.username = 'ikhsan'