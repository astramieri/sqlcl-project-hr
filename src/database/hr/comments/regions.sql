comment on table hr.regions is
    'Regions table that contains region numbers and names. references with the Countries table.';

comment on column hr.regions.region_id is
    'Primary key of regions table.';

comment on column hr.regions.region_name is
    'Names of regions. Locations are in the countries of these regions.';


-- sqlcl_snapshot {"hash":"4830fc11816901d0df794fe97556d84c9b35b5b1","type":"COMMENT","name":"regions","schemaName":"hr","sxml":""}