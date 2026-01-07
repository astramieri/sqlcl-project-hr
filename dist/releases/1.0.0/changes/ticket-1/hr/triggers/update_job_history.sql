-- liquibase formatted sql
-- changeset HR:1767786274109 stripComments:false  logicalFilePath:ticket-1\hr\triggers\update_job_history.sql
-- sqlcl_snapshot src/database/hr/triggers/update_job_history.sql:null:dd3b7a830d324f79c4ce135b0d340c83eaeba3e0:create

create or replace editionable trigger hr.update_job_history after
    update of job_id, department_id on hr.employees
    for each row
begin
    if :old.job_id <> :new.job_id
    or :old.department_id <> :new.department_id then
        add_job_history(:old.employee_id,
                        :old.hire_date,
                        sysdate,
                        :old.job_id,
                        :old.department_id);

    end if;
end update_job_history;
/

alter trigger hr.update_job_history enable;

