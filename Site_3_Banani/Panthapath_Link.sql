drop database link Panthapath;
create database link Panthapath
connect to system identified by "forgetmenot"
using '(DESCRIPTION =
(ADDRESS_LIST =
(ADDRESS = (PROTOCOL = TCP)
(HOST = 192.168.31.150)
(PORT = 1521))
)
(CONNECT_DATA =(SID = XE))
)'
;