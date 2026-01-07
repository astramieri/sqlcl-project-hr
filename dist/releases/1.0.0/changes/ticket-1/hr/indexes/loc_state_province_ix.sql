-- liquibase formatted sql
-- changeset HR:1767786267691 stripComments:false  logicalFilePath:ticket-1\hr\indexes\loc_state_province_ix.sql
-- sqlcl_snapshot src/database/hr/indexes/loc_state_province_ix.sql:null:5aaeb1d1b14f2a2b54a58d9c24daf8cedc296b0c:create

create index hr.loc_state_province_ix on
    hr.locations (
        state_province
    );

