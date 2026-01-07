create index hr.jhist_job_ix on
    hr.job_history (
        job_id
    );


-- sqlcl_snapshot {"hash":"6e5ccccf8f1814fffd9e0ce1d1b87fdc5d479acc","type":"INDEX","name":"JHIST_JOB_IX","schemaName":"HR","sxml":"\n  <INDEX xmlns=\"http://xmlns.oracle.com/ku\" version=\"1.0\">\n   <SCHEMA>HR</SCHEMA>\n   <NAME>JHIST_JOB_IX</NAME>\n   <TABLE_INDEX>\n      <ON_TABLE>\n         <SCHEMA>HR</SCHEMA>\n         <NAME>JOB_HISTORY</NAME>\n      </ON_TABLE>\n      <COL_LIST>\n         <COL_LIST_ITEM>\n            <NAME>JOB_ID</NAME>\n         </COL_LIST_ITEM>\n      </COL_LIST>\n   </TABLE_INDEX>\n</INDEX>"}