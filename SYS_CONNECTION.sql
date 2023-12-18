-- 1
create user manager_user identified by 123;
create role create_users_role;
grant create session,create user to create_users_role;
grant create_users_role to manager_user;

-- 3
grant create session, create table to user1;
alter user user1 quota 50M on system;
grant create session to user2;

-- 6.3
--select username, sid, serial# from v$session where username = 'USER1' or username = 'USER2';
select username, sid, serial#, blocking_session, seconds_in_wait from v$session where blocking_session is not null;

-- 8
set serveroutput on;

CREATE OR REPLACE FUNCTION avg_salary(req_id INTEGER) 
RETURN NUMBER IS avg_salary NUMBER;
BEGIN
    SELECT AVG(salary) INTO avg_salary FROM user1.Employees WHERE req_id = department_id;
    RETURN avg_salary;
END;
/

begin
dbms_output.put_line(avg_salary(1));
end;

-- 9
CREATE OR REPLACE FUNCTION total_salary(req_id INTEGER) RETURN NUMBER IS
    total_salary NUMBER;
BEGIN
    SELECT SUM(salary) INTO total_salary FROM user1.Employees WHERE req_id = department_id;
    RETURN total_salary;
END;
/

begin
dbms_output.put_line(total_salary(1));
end;

-- 10
CREATE OR REPLACE FUNCTION max_salary RETURN NUMBER IS
    max_salary_val NUMBER;
BEGIN
    SELECT MAX(salary) INTO max_salary_val FROM user1.Employees;
    RETURN max_salary_val;
END;
/

begin
dbms_output.put_line(max_salary);
end;
