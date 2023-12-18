-- 4
create table Department (
    ID INTEGER PRIMARY KEY,
    department_name VARCHAR2(50)
);

create table Employees (
    ID INTEGER PRIMARY KEY,
    name VARCHAR2(50),
    salary NUMBER,
    department_id NUMBER REFERENCES Department(ID)
);
insert into Department values(1,'HR');
insert into Department values(2,'IT');
insert into Department values(3,'Finance');
commit;
grant all on Employees to user2;

-- 6.1
update Employees set salary = salary * 1.1 where department_id = 1;

-- 7.1
update Employees set salary = salary * 1.1 where department_id = 1;
-- 7.3
update Employees set salary = salary * 1.1 where department_id = 2;





