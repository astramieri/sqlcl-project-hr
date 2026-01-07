-- liquibase formatted sql
-- changeset hr:1767786262143 stripComments:false  logicalFilePath:ticket-1\hr\comments\countries.sql
-- sqlcl_snapshot src/database/hr/comments/countries.sql:null:2c7ea127823384a2334cdff22c9bef3443695e67:create

comment on table hr.countries is
    'country table. References with locations table.';

comment on column hr.countries.country_id is
    'Primary key of countries table.';

comment on column hr.countries.country_name is
    'Country name';

comment on column hr.countries.region_id is
    'Region ID for the country. Foreign key to region_id column in the departments table.';

