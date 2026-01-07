-- liquibase formatted sql
-- changeset HR:1767786270380 stripComments:false  logicalFilePath:ticket-1\hr\tables\countries.sql
-- sqlcl_snapshot src/database/hr/tables/countries.sql:null:3596bbced01346c1dc5126694f6ebafbdf31e959:create

create table hr.countries (
    country_id   char(2 byte)
        constraint country_id_nn not null enable,
    country_name varchar2(60 byte),
    region_id    number,
    constraint country_c_id_pk primary key ( country_id ) enable
)
organization index nocompress;

