set termout off
set exitcommit off
--define _editor=C:\winvi\winvi32.exe
--define _editor=C:\emacs-22.3\bin\emacs.exe
--define _editor="gvim"
define _editor=vim
--define _editor="c:\users\frank.hoeben\apps\emacs\bin\emacsclientw"
--define _editor="atom -a"
set serveroutput on size 1000000 format wrapped
set editfile "c:\temp\sql-temp.sql"
column object_name format a40
column segment_name format a40
column file_name format a40
column name format a40
column value format a40
column what format a30 word_wrapped
column plan_plus_exp format a100
set trimspool on
set long 5000
set linesize 131
set pagesize 0
define gname=idle
column global_name new_value gname
select lower(user) || '@' || substr( global_name, 1, decode( dot, 0, length(global_name),
	dot-1) ) global_name from
	(select global_name, instr(global_name,'.') dot from global_name );
set sqlprompt '&gname> '
alter session set NLS_DATE_FORMAT='DD-MM-YYYY HH24:MI:SS';
set termout on
