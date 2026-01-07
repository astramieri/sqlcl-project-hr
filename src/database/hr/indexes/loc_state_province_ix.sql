create index hr.loc_state_province_ix on
    hr.locations (
        state_province
    );


-- sqlcl_snapshot {"hash":"5aaeb1d1b14f2a2b54a58d9c24daf8cedc296b0c","type":"INDEX","name":"LOC_STATE_PROVINCE_IX","schemaName":"HR","sxml":"\n  <INDEX xmlns=\"http://xmlns.oracle.com/ku\" version=\"1.0\">\n   <SCHEMA>HR</SCHEMA>\n   <NAME>LOC_STATE_PROVINCE_IX</NAME>\n   <TABLE_INDEX>\n      <ON_TABLE>\n         <SCHEMA>HR</SCHEMA>\n         <NAME>LOCATIONS</NAME>\n      </ON_TABLE>\n      <COL_LIST>\n         <COL_LIST_ITEM>\n            <NAME>STATE_PROVINCE</NAME>\n         </COL_LIST_ITEM>\n      </COL_LIST>\n   </TABLE_INDEX>\n</INDEX>"}