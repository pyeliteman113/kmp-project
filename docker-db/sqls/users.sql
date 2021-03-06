ALTER SESSION SET "_ORACLE_SCRIPT"=true;
CREATE TABLESPACE CMSTR_TABLESPACE DATAFILE 'cmstr_tabspace.dat' size 5M autoextend on;
CREATE TEMPORARY TABLESPACE CMSTR_TABLESPACE_TEMP tempfile 'cmstr_tabspace_temp.dat' size 5M autoextend on;
CREATE USER CMSTR IDENTIFIED BY CMSTR default tablespace CMSTR_TABLESPACE temporary tablespace CMSTR_TABLESPACE_TEMP;
GRANT CREATE SESSION, CREATE TABLE, CREATE SEQUENCE, UNLIMITED TABLESPACE TO CMSTR;