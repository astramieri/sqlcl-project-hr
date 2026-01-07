-- liquibase formatted sql
-- changeset HR:1767786272769 stripComments:false  logicalFilePath:ticket-1\hr\tables\requests.sql
-- sqlcl_snapshot src/database/hr/tables/requests.sql:null:f999ad277578b2dd689be4d98de9a913a7f51ef1:create

create table hr.requests (
    request_id  number,
    employee_id number,
    start_date  date not null enable,
    end_date    date not null enable,
    reason      varchar2(100 byte),
    status      varchar2(50 byte),
    created     date,
    updated     date
);

alter table hr.requests
    add constraint requests_pk primary key ( request_id )
        using index enable;

