comment on table hr.countries is
    'country table. References with locations table.';

comment on column hr.countries.country_id is
    'Primary key of countries table.';

comment on column hr.countries.country_name is
    'Country name';

comment on column hr.countries.region_id is
    'Region ID for the country. Foreign key to region_id column in the departments table.';


-- sqlcl_snapshot {"hash":"2c7ea127823384a2334cdff22c9bef3443695e67","type":"COMMENT","name":"countries","schemaName":"hr","sxml":""}