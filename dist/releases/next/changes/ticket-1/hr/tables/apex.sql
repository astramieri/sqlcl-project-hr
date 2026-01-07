-- liquibase formatted sql
-- changeset HR:1767786270154 stripComments:false  logicalFilePath:ticket-1\hr\tables\apex.sql
-- sqlcl_snapshot src/database/hr/tables/apex.sql:null:9b497481fefecbee1de7d8c51eda025279f4276b:create

create table hr.apex (
    id          number(10, 0) not null enable,
    protocol    varchar2(100 byte) not null enable,
    hostname    varchar2(100 byte) not null enable,
    port        varchar2(100 byte),
    workspace   varchar2(100 byte) not null enable,
    application varchar2(100 byte) not null enable,
    created     timestamp(6) not null enable,
    updated     timestamp(6) not null enable
);

alter table hr.apex
    add constraint apex_pk primary key ( id )
        using index enable;

