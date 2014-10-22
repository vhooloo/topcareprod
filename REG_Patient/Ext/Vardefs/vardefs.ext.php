<?php 
 //WARNING: The contents of this file are auto-generated


// created: 2013-11-18 05:29:17
$dictionary["REG_Patient"]["fields"]["reg_labresults_reg_patient"] = array (
  'name' => 'reg_labresults_reg_patient',
  'type' => 'link',
  'relationship' => 'reg_labresults_reg_patient',
  'source' => 'non-db',
  'side' => 'right',
  'vname' => 'LBL_REG_LABRESULTS_REG_PATIENT_FROM_REG_LABRESULTS_TITLE',
);


// created: 2013-11-18 05:29:17
$dictionary["REG_Patient"]["fields"]["reg_patient_reg_encounter"] = array (
  'name' => 'reg_patient_reg_encounter',
  'type' => 'link',
  'relationship' => 'reg_patient_reg_encounter',
  'source' => 'non-db',
  'side' => 'right',
  'vname' => 'LBL_REG_PATIENT_REG_ENCOUNTER_FROM_REG_ENCOUNTER_TITLE',
);


// created: 2013-11-18 05:29:16
$dictionary["REG_Patient"]["fields"]["reg_patient_reg_sf12"] = array (
  'name' => 'reg_patient_reg_sf12',
  'type' => 'link',
  'relationship' => 'reg_patient_reg_sf12',
  'source' => 'non-db',
  'side' => 'right',
  'vname' => 'LBL_REG_PATIENT_REG_SF12_FROM_REG_SF12_TITLE',
);


// created: 2013-11-18 05:29:16
$dictionary["REG_Patient"]["fields"]["reg_provider_reg_patient"] = array (
  'name' => 'reg_provider_reg_patient',
  'type' => 'link',
  'relationship' => 'reg_provider_reg_patient',
  'source' => 'non-db',
  'vname' => 'LBL_REG_PROVIDER_REG_PATIENT_FROM_REG_PROVIDER_TITLE',
  'id_name' => 'reg_provider_reg_patientreg_provider_ida',
);
$dictionary["REG_Patient"]["fields"]["reg_provider_reg_patient_name"] = array (
  'name' => 'reg_provider_reg_patient_name',
  'type' => 'relate',
  'source' => 'non-db',
  'vname' => 'LBL_REG_PROVIDER_REG_PATIENT_FROM_REG_PROVIDER_TITLE',
  'save' => true,
  'id_name' => 'reg_provider_reg_patientreg_provider_ida',
  'link' => 'reg_provider_reg_patient',
  'table' => 'reg_provider',
  'module' => 'REG_Provider',
  'rname' => 'name',
);
$dictionary["REG_Patient"]["fields"]["reg_provider_reg_patientreg_provider_ida"] = array (
  'name' => 'reg_provider_reg_patientreg_provider_ida',
  'type' => 'link',
  'relationship' => 'reg_provider_reg_patient',
  'source' => 'non-db',
  'reportable' => false,
  'side' => 'right',
  'vname' => 'LBL_REG_PROVIDER_REG_PATIENT_FROM_REG_PATIENT_TITLE',
);


// created: 2013-11-18 05:29:12
$dictionary["REG_Patient"]["fields"]["reg_treatment_plan_reg_patient"] = array (
  'name' => 'reg_treatment_plan_reg_patient',
  'type' => 'link',
  'relationship' => 'reg_treatment_plan_reg_patient',
  'source' => 'non-db',
  'side' => 'right',
  'vname' => 'LBL_REG_TREATMENT_PLAN_REG_PATIENT_FROM_REG_TREATMENT_PLAN_TITLE',
);


 // created: 2014-06-09 19:32:54

 

 // created: 2013-06-23 16:53:02
$dictionary['REG_Patient']['fields']['assistant']['audited']=true;
$dictionary['REG_Patient']['fields']['assistant']['comments']='Name of the assistant of the contact';
$dictionary['REG_Patient']['fields']['assistant']['merge_filter']='disabled';
$dictionary['REG_Patient']['fields']['assistant']['unified_search']=false;

 

 // created: 2014-06-09 19:32:54

 

 // created: 2014-06-09 19:32:54

 

 // created: 2014-06-09 19:32:54

 

 // created: 2014-01-14 12:36:42
$dictionary['REG_Patient']['fields']['ethnicity']['default']='';

 

 // created: 2014-06-09 19:32:54

 

 // created: 2014-06-09 19:32:53

 

 // created: 2014-03-04 16:49:39

 

 // created: 2014-06-09 19:32:54

 

 // created: 2014-01-14 12:36:28
$dictionary['REG_Patient']['fields']['race']['default']='';

 

 // created: 2014-06-09 19:32:54

 

 // created: 2014-06-09 19:32:54

 

 // created: 2013-11-18 14:02:33
$dictionary['REG_Patient']['fields']['ssn']['required']=false;
$dictionary['REG_Patient']['fields']['ssn']['audited']=false;

 
?>