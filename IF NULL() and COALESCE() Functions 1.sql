SET autocommit  = 0;
COMMIT;

SELECT *
FROM departments_dup
ORDER BY dept_no ASC;

ALTER TABLE departments_dup
CHANGE COLUMN dept_name dept_name VARCHAR(40) NULL;

INSERT INTO departments_dup(dept_no) 
VALUES ('d010'), ('d011');

ALTER TABLE employees.departments_dup
ADD COLUMN dept_manager VARCHAR(225) NULL AFTER dept_name;

COMMIT;