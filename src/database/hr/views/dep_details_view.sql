create or replace force editionable view hr.dep_details_view (
    department_id,
    department_name,
    street_address,
    city,
    state_province,
    country_name,
    region_name
) as
    select
        d.department_id,
        d.department_name,
        l.street_address,
        l.city,
        l.state_province,
        c.country_name,
        r.region_name
    from
             departments d
        join locations l on l.location_id = d.location_id
        join countries c on c.country_id = l.country_id
        join regions   r on r.region_id = c.region_id;


-- sqlcl_snapshot {"hash":"f1a97a1965d289e1f242494e11575c86d3f1eba6","type":"VIEW","name":"DEP_DETAILS_VIEW","schemaName":"HR","sxml":""}