-- liquibase formatted sql
-- changeset HR:1767786272026 stripComments:false  logicalFilePath:ticket-1\hr\tables\locations.sql
-- sqlcl_snapshot src/database/hr/tables/locations.sql:null:c13d0f2002d38f472b40b1452536dd12fc42ad25:create

create table hr.locations (
    location_id    number(4, 0),
    street_address varchar2(40 byte),
    postal_code    varchar2(12 byte),
    city           varchar2(30 byte)
        constraint loc_city_nn not null enable,
    state_province varchar2(25 byte),
    country_id     char(2 byte),
    latitude       number,
    longitude      number
);

create unique index hr.loc_id_pk on
    hr.locations (
        location_id
    );

alter table hr.locations
    add constraint loc_id_pk
        primary key ( location_id )
            using index hr.loc_id_pk enable;

