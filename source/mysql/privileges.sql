use mysql;
select host, user from user;
grant all on *.* to root@'%' with grant option;
-- 这一条命令一定要有：
flush privileges;
