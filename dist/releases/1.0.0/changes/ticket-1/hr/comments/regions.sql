-- liquibase formatted sql
-- changeset hr:1767786265878 stripComments:false  logicalFilePath:ticket-1\hr\comments\regions.sql
-- sqlcl_snapshot src/database/hr/comments/regions.sql:null:4830fc11816901d0df794fe97556d84c9b35b5b1:create

comment on table hr.regions is
    'Regions table that contains region numbers and names. references with the Countries table.';

comment on column hr.regions.region_id is
    'Primary key of regions table.';

comment on column hr.regions.region_name is
    'Names of regions. Locations are in the countries of these regions.';

