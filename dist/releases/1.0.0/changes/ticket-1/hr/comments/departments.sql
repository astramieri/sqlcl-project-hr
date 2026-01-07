-- liquibase formatted sql
-- changeset hr:1767786265195 stripComments:false  logicalFilePath:ticket-1\hr\comments\departments.sql
-- sqlcl_snapshot src/database/hr/comments/departments.sql:null:d0f2428d158a9b6cde29384cb53c9f1f71f45eda:create

comment on table hr.departments is
    'Departments table that shows details of departments where employees 
work. references with locations, employees, and job_history tables.';

comment on column hr.departments.department_id is
    'Primary key column of departments table.';

comment on column hr.departments.department_name is
    'A not null column that shows name of a department. Administration, 
Marketing, Purchasing, Human Resources, Shipping, IT, Executive, Public 
Relations, Sales, Finance, and Accounting. ';

comment on column hr.departments.location_id is
    'Location id where a department is located. Foreign key to location_id column of locations table.';

comment on column hr.departments.manager_id is
    'Manager_id of a department. Foreign key to employee_id column of employees table. The manager_id column of the employee table references this column.'
    ;

