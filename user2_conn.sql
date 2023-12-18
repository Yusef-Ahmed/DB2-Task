-- 5
INSERT INTO user1.Employees VALUES (1, 'Ahemd', 20000, 1);
INSERT INTO user1.Employees VALUES (2, 'Youssef', 40000, 1);
INSERT INTO user1.Employees VALUES (3, 'Mohamed', 60000, 2);
INSERT INTO user1.Employees VALUES (4, 'Mostafa', 80000, 2);
INSERT INTO user1.Employees VALUES (5, 'Karim', 100000, 3);
commit;

-- 6.2
UPDATE user1.Employees SET salary = salary * 1.1 WHERE department_id = 1;

-- 7.2
UPDATE user1.Employees SET salary = salary * 1.1 WHERE department_id = 2;
-- 7.4
UPDATE user1.Employees SET salary = salary * 1.1 WHERE department_id = 1;

