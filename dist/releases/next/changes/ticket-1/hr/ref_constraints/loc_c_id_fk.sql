-- liquibase formatted sql
-- changeset HR:1767786269266 stripComments:false  logicalFilePath:ticket-1\hr\ref_constraints\loc_c_id_fk.sql
-- sqlcl_snapshot src/database/hr/ref_constraints/loc_c_id_fk.sql:null:22af5cb54c626fa04ed6ae8b3da6486d8e4960b1:create

alter table hr.locations
    add constraint loc_c_id_fk
        foreign key ( country_id )
            references hr.countries ( country_id )
        enable;

