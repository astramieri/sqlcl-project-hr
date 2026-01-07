-- liquibase formatted sql
-- changeset hr:1767786265734 stripComments:false  logicalFilePath:ticket-1\hr\comments\locations.sql
-- sqlcl_snapshot src/database/hr/comments/locations.sql:null:a0556813feda6f0d3e0130026d0ba6f18a5de232:create

comment on table hr.locations is
    'Locations table that contains specific address of a specific office,
warehouse, and/or production site of a company. Does not store addresses /
locations of customers. references with the departments and countries tables. ';

comment on column hr.locations.city is
    'A not null column that shows city where an office, warehouse, or 
production site of a company is located. ';

comment on column hr.locations.country_id is
    'Country where an office, warehouse, or production site of a company is
located. Foreign key to country_id column of the countries table.';

comment on column hr.locations.location_id is
    'Primary key of locations table';

comment on column hr.locations.postal_code is
    'Postal code of the location of an office, warehouse, or production site 
of a company. ';

comment on column hr.locations.state_province is
    'State or Province where an office, warehouse, or production site of a 
company is located.';

comment on column hr.locations.street_address is
    'Street address of an office, warehouse, or production site of a company.
Contains building number and street name';

