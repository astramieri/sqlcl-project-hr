-- liquibase formatted sql
-- changeset hr:1767786265629 stripComments:false  logicalFilePath:ticket-1\hr\comments\jobs.sql
-- sqlcl_snapshot src/database/hr/comments/jobs.sql:null:57aa09d4e5c7f6365a39261ac0aba0311abe401b:create

comment on table hr.jobs is
    'jobs table with job titles and salary ranges.
References with employees and job_history table.';

comment on column hr.jobs.job_id is
    'Primary key of jobs table.';

comment on column hr.jobs.job_title is
    'A not null column that shows job title, e.g. AD_VP, FI_ACCOUNTANT';

comment on column hr.jobs.max_salary is
    'Maximum salary for a job title';

comment on column hr.jobs.min_salary is
    'Minimum salary for a job title.';

