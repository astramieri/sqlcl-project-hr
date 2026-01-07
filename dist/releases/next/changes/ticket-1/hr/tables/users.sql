-- liquibase formatted sql
-- changeset HR:1767786273017 stripComments:false  logicalFilePath:ticket-1\hr\tables\users.sql
-- sqlcl_snapshot src/database/hr/tables/users.sql:null:bd0e98e79bb94bc946a40fca633d0aa0d757a8a2:create

create table hr.users (
    id       number(10, 0) default hr.users_seq.nextval not null enable,
    username varchar2(100 byte) not null enable,
    password varchar2(100 byte) not null enable,
    role     varchar2(100 byte) not null enable,
    created  timestamp(6) not null enable,
    updated  timestamp(6) not null enable
);

alter table hr.users
    add constraint users_pk primary key ( id )
        using index enable;

alter table hr.users add constraint users_uk_01 unique ( username )
    using index enable;

