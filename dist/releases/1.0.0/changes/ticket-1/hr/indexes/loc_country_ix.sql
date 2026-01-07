-- liquibase formatted sql
-- changeset HR:1767786267579 stripComments:false  logicalFilePath:ticket-1\hr\indexes\loc_country_ix.sql
-- sqlcl_snapshot src/database/hr/indexes/loc_country_ix.sql:null:10a47eabd1eb724b3f685d8b71ad829af94461a7:create

create index hr.loc_country_ix on
    hr.locations (
        country_id
    );

