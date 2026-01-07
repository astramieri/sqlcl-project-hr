create index hr.jhist_employee_ix on
    hr.job_history (
        employee_id
    );


-- sqlcl_snapshot {"hash":"953335b1557db03a52c4787a210d51b01da067b4","type":"INDEX","name":"JHIST_EMPLOYEE_IX","schemaName":"HR","sxml":"\n  <INDEX xmlns=\"http://xmlns.oracle.com/ku\" version=\"1.0\">\n   <SCHEMA>HR</SCHEMA>\n   <NAME>JHIST_EMPLOYEE_IX</NAME>\n   <TABLE_INDEX>\n      <ON_TABLE>\n         <SCHEMA>HR</SCHEMA>\n         <NAME>JOB_HISTORY</NAME>\n      </ON_TABLE>\n      <COL_LIST>\n         <COL_LIST_ITEM>\n            <NAME>EMPLOYEE_ID</NAME>\n         </COL_LIST_ITEM>\n      </COL_LIST>\n   </TABLE_INDEX>\n</INDEX>"}