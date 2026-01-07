-- liquibase formatted sql
-- changeset HR:1767786274884 stripComments:false  logicalFilePath:ticket-1\hr\views\emp_history_view.sql
-- sqlcl_snapshot src/database/hr/views/emp_history_view.sql:null:70078808a65a9b7bcaf3174daacdb051ad584880:create

create or replace force editionable view hr.emp_history_view (
    employee_id,
    job_title,
    department_name,
    start_date,
    end_date
) as
    select
        h.employee_id,
        j.job_title,
        d.department_name,
        h.start_date,
        h.end_date
    from
             job_history h
        join departments d on d.department_id = h.department_id
        join jobs        j on j.job_id = h.job_id;

