-- liquibase formatted sql
-- changeset HR:1767786275037 stripComments:false  logicalFilePath:ticket-1\hr\views\job_details_view.sql
-- sqlcl_snapshot src/database/hr/views/job_details_view.sql:null:3c3fc6659bea21e0d94b17ad87d12d3efd51feba:create

create or replace force editionable view hr.job_details_view (
    job_id,
    job_title,
    current_employees,
    past_employees,
    min_salary,
    avg_salary,
    max_salary
) as
    select
        j.job_id,
        j.job_title,
        c.cnt_employees as current_employees,
        p.cnt_employees as past_employees,
        c.min_salary,
        c.avg_salary,
        c.max_salary
    from
        jobs j
        outer apply (
            select
                count(distinct e.employee_id) as cnt_employees,
                min(e.salary)                 as min_salary,
                max(e.salary)                 as max_salary,
                avg(e.salary)                 as avg_salary
            from
                employees e
            where
                e.job_id = j.job_id
        )    c
        outer apply (
            select
                count(distinct h.employee_id) as cnt_employees
            from
                job_history h
            where
                h.job_id = j.job_id
        )    p
    order by
        j.job_title asc;

