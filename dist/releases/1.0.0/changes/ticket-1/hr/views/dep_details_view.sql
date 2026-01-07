-- liquibase formatted sql
-- changeset HR:1767786274485 stripComments:false  logicalFilePath:ticket-1\hr\views\dep_details_view.sql
-- sqlcl_snapshot src/database/hr/views/dep_details_view.sql:null:f1a97a1965d289e1f242494e11575c86d3f1eba6:create

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

