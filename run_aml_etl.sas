%include 'aml_detection_macro.sas';
%include 'aml_sample_data.sas';

%flag_aml_transactions(input_ds=aml_sample, output_ds=flagged_txns, threshold_amt=10000);
