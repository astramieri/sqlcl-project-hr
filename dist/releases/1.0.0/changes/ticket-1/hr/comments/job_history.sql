-- liquibase formatted sql
-- changeset hr:1767786265484 stripComments:false  logicalFilePath:ticket-1\hr\comments\job_history.sql
-- sqlcl_snapshot src/database/hr/comments/job_history.sql:null:885e5f9b7f9c7ab04e3cc80b310e086f8d99c495:create

comment on table hr.job_history is
    'Table that stores job history of the employees. If an employee 
changes departments within the job or changes jobs within the department, 
new rows get inserted into this table with old job information of the 
employee. Contains a complex primary key: employee_id+start_date.
References with jobs, employees, and departments tables.';

comment on column hr.job_history.department_id is
    'Department id in which the employee worked in the past; foreign key to deparment_id column in the departments table';

comment on column hr.job_history.employee_id is
    'A not null column in the complex primary key employee_id+start_date. 
Foreign key to employee_id column of the employee table';

comment on column hr.job_history.end_date is
    'Last day of the employee in this job role. A not null column. Must be 
greater than the start_date of the job_history table. 
(enforced by constraint jhist_date_interval)';

comment on column hr.job_history.job_id is
    'Job role in which the employee worked in the past; foreign key to 
job_id column in the jobs table. A not null column.';

comment on column hr.job_history.start_date is
    'A not null column in the complex primary key employee_id+start_date. 
Must be less than the end_date of the job_history table. (enforced by 
constraint jhist_date_interval)';

