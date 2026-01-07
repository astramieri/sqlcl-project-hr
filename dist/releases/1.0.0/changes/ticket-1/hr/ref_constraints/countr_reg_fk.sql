-- liquibase formatted sql
-- changeset HR:1767786268159 stripComments:false  logicalFilePath:ticket-1\hr\ref_constraints\countr_reg_fk.sql
-- sqlcl_snapshot src/database/hr/ref_constraints/countr_reg_fk.sql:null:cd645bb78c0bf0280ccde8abd8b719cf39f96368:create

alter table hr.countries
    add constraint countr_reg_fk
        foreign key ( region_id )
            references hr.regions ( region_id )
        enable;

