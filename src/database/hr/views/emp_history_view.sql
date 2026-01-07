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


-- sqlcl_snapshot {"hash":"70078808a65a9b7bcaf3174daacdb051ad584880","type":"VIEW","name":"EMP_HISTORY_VIEW","schemaName":"HR","sxml":""}