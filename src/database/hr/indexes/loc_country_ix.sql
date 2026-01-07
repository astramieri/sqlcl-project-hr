create index hr.loc_country_ix on
    hr.locations (
        country_id
    );


-- sqlcl_snapshot {"hash":"10a47eabd1eb724b3f685d8b71ad829af94461a7","type":"INDEX","name":"LOC_COUNTRY_IX","schemaName":"HR","sxml":"\n  <INDEX xmlns=\"http://xmlns.oracle.com/ku\" version=\"1.0\">\n   <SCHEMA>HR</SCHEMA>\n   <NAME>LOC_COUNTRY_IX</NAME>\n   <TABLE_INDEX>\n      <ON_TABLE>\n         <SCHEMA>HR</SCHEMA>\n         <NAME>LOCATIONS</NAME>\n      </ON_TABLE>\n      <COL_LIST>\n         <COL_LIST_ITEM>\n            <NAME>COUNTRY_ID</NAME>\n         </COL_LIST_ITEM>\n      </COL_LIST>\n   </TABLE_INDEX>\n</INDEX>"}