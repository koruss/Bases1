rem PL/SQL Developer Test Script

set feedback off
set autoprint off

rem Execute PL/SQL Block
-- Created on 14/10/2019 by ANNER 
declare 
  -- Local variables here
  i integer;
begin
  -- Test statements here
  DBMS_SCHEDULER.create_job (
     job_name => 'A01',
     job_type => 'PLSQL_BLOCK',
     job_action => 'BEGIN PKG_JOB.GET_JOB(); END;',
     start_date => SYSTIMESTAMP,
     repeat_interval => 'freq=minutely',
     end_date => NULL,
     enabled => TRUE,
     comments => 'JOB OF PROPOSAL');
end;
/
