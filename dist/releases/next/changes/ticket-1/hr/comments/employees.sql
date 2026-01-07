-- liquibase formatted sql
-- changeset hr:1767786265337 stripComments:false  logicalFilePath:ticket-1\hr\comments\employees.sql
-- sqlcl_snapshot src/database/hr/comments/employees.sql:null:abdfac30c5deff981257af032037fd81ef38fdba:create

comment on table hr.employees is
    'employees table. References with departments,
jobs, job_history tables. Contains a self reference.';

comment on column hr.employees.commission_pct is
    'Commission percentage of the employee; Only employees in sales 
department elgible for commission percentage';

comment on column hr.employees.department_id is
    'Department id where employee works; foreign key to department_id 
column of the departments table';

comment on column hr.employees.email is
    'Email id of the employee';

comment on column hr.employees.employee_id is
    'Primary key of employees table.';

comment on column hr.employees.first_name is
    'First name of the employee. A not null column.';

comment on column hr.employees.hire_date is
    'Date when the employee started on this job. A not null column.';

comment on column hr.employees.job_id is
    'Current job of the employee; foreign key to job_id column of the 
jobs table. A not null column.';

comment on column hr.employees.last_name is
    'Last name of the employee. A not null column.';

comment on column hr.employees.manager_id is
    'Manager id of the employee; has same domain as manager_id in 
departments table. Foreign key to employee_id column of employees table. 
(useful for reflexive joins and CONNECT BY query)';

comment on column hr.employees.phone_number is
    'Phone number of the employee; includes country code and area code';

comment on column hr.employees.salary is
    'Monthly salary of the employee. Must be greater 
than zero (enforced by constraint emp_salary_min)';

