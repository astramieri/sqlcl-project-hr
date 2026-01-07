-- liquibase formatted sql
-- changeset HR:1767786271302 stripComments:false  logicalFilePath:ticket-1\hr\tables\job_history.sql
-- sqlcl_snapshot src/database/hr/tables/job_history.sql:null:411bf36dfad8ead5fadda5279cb7c6c07f0274ef:create

create table hr.job_history (
    employee_id   number(6, 0)
        constraint jhist_employee_nn not null enable,
    start_date    date
        constraint jhist_start_date_nn not null enable,
    end_date      date
        constraint jhist_end_date_nn not null enable,
    job_id        varchar2(10 byte)
        constraint jhist_job_nn not null enable,
    department_id number(4, 0)
);

create unique index hr.jhist_emp_id_st_date_pk on
    hr.job_history (
        employee_id,
        start_date
    );

alter table hr.job_history add constraint jhist_date_interval check ( end_date > start_date ) enable;

alter table hr.job_history
    add constraint jhist_emp_id_st_date_pk
        primary key ( employee_id,
                      start_date )
            using index hr.jhist_emp_id_st_date_pk enable;

