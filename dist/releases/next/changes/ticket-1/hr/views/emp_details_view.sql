-- liquibase formatted sql
-- changeset HR:1767786274620 stripComments:false  logicalFilePath:ticket-1\hr\views\emp_details_view.sql
-- sqlcl_snapshot src/database/hr/views/emp_details_view.sql:null:ee3f41740709c0fdd404c56e12a677ecccd8dc34:create

create or replace force editionable view hr.emp_details_view (
    employee_id,
    job_id,
    manager_id,
    department_id,
    location_id,
    country_id,
    first_name,
    last_name,
    salary,
    commission_pct,
    department_name,
    job_title,
    city,
    state_province,
    country_name,
    region_name
) as
    select
        e.employee_id,
        e.job_id,
        e.manager_id,
        e.department_id,
        d.location_id,
        l.country_id,
        e.first_name,
        e.last_name,
        e.salary,
        e.commission_pct,
        d.department_name,
        j.job_title,
        l.city,
        l.state_province,
        c.country_name,
        r.region_name
    from
        employees   e,
        departments d,
        jobs        j,
        locations   l,
        countries   c,
        regions     r
    where
            e.department_id = d.department_id
        and d.location_id = l.location_id
        and l.country_id = c.country_id
        and c.region_id = r.region_id
        and j.job_id = e.job_id
with read only;

