create database vault;
create user 'vault'@'%' identified by 'vault';
grant all privileges on *.* to 'vault'@'%' with grant option;
grant create user on *.* to 'vault'@'%';
