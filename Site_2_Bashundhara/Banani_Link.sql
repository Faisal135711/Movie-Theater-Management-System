drop database link Banani;
create database link Banani
connect to system identified by "rajessori"
using '(DESCRIPTION =
(ADDRESS_LIST =
(ADDRESS = (PROTOCOL = TCP)
(HOST = 192.168.31.12)
(PORT = 1521))
)
(CONNECT_DATA =(SID = XE))
)'
;