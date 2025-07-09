data aml_sample;
    infile datalines dlm=',' dsd;
    input customer_id $ txn_date : yymmdd10. txn_amount country $;
    format txn_date date9.;
    datalines;
C101,2024-06-01,9500,USA
C102,2024-06-02,12000,USA
C103,2024-06-03,9800,USA
C104,2024-06-04,15000,IRAN
C105,2024-06-05,10000,SYRIA
C106,2024-06-06,9900,USA
C107,2024-06-07,11000,NORTH KOREA
;
run;
