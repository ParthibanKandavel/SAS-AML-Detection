%macro flag_aml_transactions(input_ds=, output_ds=, threshold_amt=10000);

    data &output_ds.;
        set &input_ds.;

        /* Flag for large transaction */
        if txn_amount >= &threshold_amt. then high_txn_flag = 1;
        else high_txn_flag = 0;

        /* Flag for high-risk country */
        if upcase(country) in ('IRAN', 'SYRIA', 'NORTH KOREA') then hr_country_flag = 1;
        else hr_country_flag = 0;

        /* Structuring: multiple txns just below threshold */
        if txn_amount >= (&threshold_amt. - 500) and txn_amount < &threshold_amt. then near_threshold_flag = 1;
        else near_threshold_flag = 0;

        /* Aggregate risk score */
        risk_score = sum(of high_txn_flag hr_country_flag near_threshold_flag);
    run;

    proc print data=&output_ds.;
        where risk_score >= 2;
        title "Potential AML Transactions - Risk Score 2 or Higher";
    run;

%mend;
