-- liquibase formatted sql
-- changeset HR:1767786268312 stripComments:false  logicalFilePath:ticket-1\hr\ref_constraints\dept_loc_fk.sql
-- sqlcl_snapshot src/database/hr/ref_constraints/dept_loc_fk.sql:null:7753fe10ac301663f95b1a5d034c1582bdc2ed09:create

alter table hr.departments
    add constraint dept_loc_fk
        foreign key ( location_id )
            references hr.locations ( location_id )
        enable;

