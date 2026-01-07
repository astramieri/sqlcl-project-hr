-- liquibase formatted sql
-- changeset HR:1767786270523 stripComments:false  logicalFilePath:ticket-1\hr\tables\departments.sql
-- sqlcl_snapshot src/database/hr/tables/departments.sql:null:74c79f06dac5f4899628534d61657db4f413526c:create

create table hr.departments (
    department_id   number(4, 0),
    department_name varchar2(30 byte)
        constraint dept_name_nn not null enable,
    manager_id      number(6, 0),
    location_id     number(4, 0)
);

create unique index hr.dept_id_pk on
    hr.departments (
        department_id
    );

alter table hr.departments
    add constraint dept_id_pk
        primary key ( department_id )
            using index hr.dept_id_pk enable;

