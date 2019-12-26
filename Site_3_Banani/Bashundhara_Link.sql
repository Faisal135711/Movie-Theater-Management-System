drop database link Bashundhara;
create database link Bashundhara
connect to system identified by "123456"
using '(DESCRIPTION =
(ADDRESS_LIST =
(ADDRESS = (PROTOCOL = TCP)
(HOST = 192.168.31.141)
(PORT = 1521))
)
(CONNECT_DATA =(SID = XE))
)'
;