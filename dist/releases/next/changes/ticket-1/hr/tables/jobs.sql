-- liquibase formatted sql
-- changeset HR:1767786271705 stripComments:false  logicalFilePath:ticket-1\hr\tables\jobs.sql
-- sqlcl_snapshot src/database/hr/tables/jobs.sql:null:c8afe6f00b9f06bb258da929d1b11e1b975c0fee:create

create table hr.jobs (
    job_id     varchar2(10 byte),
    job_title  varchar2(35 byte)
        constraint job_title_nn not null enable,
    min_salary number(6, 0),
    max_salary number(6, 0)
);

create unique index hr.job_id_pk on
    hr.jobs (
        job_id
    );

alter table hr.jobs
    add constraint job_id_pk
        primary key ( job_id )
            using index hr.job_id_pk enable;

