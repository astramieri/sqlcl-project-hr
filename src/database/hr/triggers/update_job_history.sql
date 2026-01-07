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


-- sqlcl_snapshot {"hash":"9cb68a51de5535473c71764f8b03be1f1ccb4d28","type":"TRIGGER","name":"UPDATE_JOB_HISTORY","schemaName":"HR","sxml":""}