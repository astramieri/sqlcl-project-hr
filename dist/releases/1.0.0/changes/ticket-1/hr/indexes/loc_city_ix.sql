-- liquibase formatted sql
-- changeset HR:1767786267444 stripComments:false  logicalFilePath:ticket-1\hr\indexes\loc_city_ix.sql
-- sqlcl_snapshot src/database/hr/indexes/loc_city_ix.sql:null:bf2c6f10db0a99dd0b3440b2173b8c08ef6690d1:create

create index hr.loc_city_ix on
    hr.locations (
        city
    );

