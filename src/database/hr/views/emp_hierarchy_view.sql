create or replace force editionable view hr.emp_hierarchy_view (
    employee_name,
    employee_id,
    manager_id,
    job_title,
    hierarchy_level,
    icon
) as
    select
        e.first_name
        || ' '
        || e.last_name
        || ' ('
        || j.job_title
        || ')'       as employee_name,
        e.employee_id,
        e.manager_id,
        j.job_title,
        level        as hierarchy_level,
        'fa fa-user' as icon
    from
             employees e
        join jobs j on e.job_id = j.job_id
    start with
        e.manager_id is null
    connect by
        prior e.employee_id = e.manager_id
    order siblings by
        e.last_name asc;


-- sqlcl_snapshot {"hash":"5c1249d729d764536d02a2c36f11ff487b7a0ed3","type":"VIEW","name":"EMP_HIERARCHY_VIEW","schemaName":"HR","sxml":""}