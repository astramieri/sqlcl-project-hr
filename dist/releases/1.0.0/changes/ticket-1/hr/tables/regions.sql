-- liquibase formatted sql
-- changeset HR:1767786272523 stripComments:false  logicalFilePath:ticket-1\hr\tables\regions.sql
-- sqlcl_snapshot src/database/hr/tables/regions.sql:null:827724a1134c1ae3b70ac455832a4b1539320280:create

create table hr.regions (
    region_id   number
        constraint region_id_nn not null enable,
    region_name varchar2(25 byte)
);

create unique index hr.reg_id_pk on
    hr.regions (
        region_id
    );

alter table hr.regions
    add constraint reg_id_pk
        primary key ( region_id )
            using index hr.reg_id_pk enable;

