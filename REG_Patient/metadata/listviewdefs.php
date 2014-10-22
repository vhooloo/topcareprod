<?php
$module_name = 'REG_Patient';
$listViewDefs [$module_name] = 
array (
  'NAME' => 
  array (
    'width' => '15%',
    'label' => 'LBL_NAME',
    'link' => true,
    'orderBy' => 'last_name',
    'default' => true,
    'related_fields' => 
    array (
      0 => 'first_name',
      1 => 'last_name',
      2 => 'salutation',
    ),
  ),
  'GENDER' => 
  array (
    'type' => 'radioenum',
    'default' => true,
    'studio' => 'visible',
    'label' => 'LBL_GENDER',
    'width' => '10%',
  ),
  'NEXT_RF_DATE' => 
  array (
    'type' => 'radioenum',
    'default' => true,
    'studio' => 'visible',
    'label' => 'Next Refill Date',
    'width' => '15%',
    'sortable' => false,
    'orderBy' => 'NEXT_RF_DATE',
    'sort_order' => 'asc',
  ),
  'RISK_LEVEL' => 
  array (
    'type' => 'radioenum',
    'default' => true,
    'studio' => 'visible',
    'label' => 'Risk Level',
    'width' => '20%',
    'sortable' => false,
  ),
  'PHONE_HOME' => 
  array (
    'width' => '10%',
    'label' => 'LBL_HOME_PHONE',
    'default' => true,
  ),
  'NAME1' => 
  array (
    'width' => '8%',
    'label' => 'Encounter',
    'default' => true,
    'sortable' => false,
    'studio' => 'visible',
    'link' => true,
    'customCode' => '<a href=./index.php?action=ajaxui#ajaxUILoc=index.php%3Fmodule%3DREG_Patient%26action%3DPatientEncounter%26record%3D{$ID}>Encounter</a>',
  ),
  'NAME2' => 
  array (
    'width' => '8%',
    'label' => 'Refill',
    'default' => true,
    'sortable' => false,
    'studio' => 'visible',
    'link' => true,
    'customCode' => '<a href=./index.php?action=ajaxui#ajaxUILoc=index.php%3Fmodule%3DREG_Patient%26action%3DPrescriptionRefill%26record%3D{$ID}>Rx Refill</a>',
  ),
  'PHONE_MOBILE' => 
  array (
    'width' => '10%',
    'label' => 'LBL_MOBILE_PHONE',
    'default' => false,
  ),
  'ASSIGNED_USER_NAME' => 
  array (
    'link' => true,
    'type' => 'relate',
    'label' => 'LBL_ASSIGNED_TO_NAME',
    'id' => 'ASSIGNED_USER_ID',
    'width' => '10%',
    'default' => false,
  ),
  'RISK_PATIENT_C' => 
  array (
    'type' => 'enum',
    'default' => false,
    'studio' => 'visible',
    'label' => 'LBL_RISK_PATIENT',
    'width' => '10%',
  ),
  'NEXT_RX_REFILL_DUE_PATIENT_C' => 
  array (
    'type' => 'date',
    'default' => false,
    'label' => 'LBL_NEXT_RX_REFILL_DUE_PATIENT',
    'width' => '10%',
  ),
  'MRN_C' => 
  array (
    'type' => 'varchar',
    'default' => false,
    'label' => 'LBL_MRN',
    'width' => '10%',
  ),
  'REG_PROVIDER_REG_PATIENT_NAME' => 
  array (
    'type' => 'relate',
    'link' => true,
    'label' => 'LBL_REG_PROVIDER_REG_PATIENT_FROM_REG_PROVIDER_TITLE',
    'id' => 'REG_PROVIDER_REG_PATIENTREG_PROVIDER_IDA',
    'width' => '10%',
    'default' => false,
  ),
  'SSN' => 
  array (
    'type' => 'varchar',
    'label' => 'LBL_SSN',
    'width' => '10%',
    'default' => false,
  ),
  'EMERGENCYNUMBER' => 
  array (
    'type' => 'phone',
    'label' => 'LBL_EMERGENCYNUMBER',
    'width' => '10%',
    'default' => false,
  ),
  'DO_NOT_CALL' => 
  array (
    'width' => '10%',
    'label' => 'LBL_DO_NOT_CALL',
    'default' => false,
  ),
  'PHONE_WORK' => 
  array (
    'width' => '15%',
    'label' => 'LBL_OFFICE_PHONE',
    'default' => false,
  ),
  'EMAIL1' => 
  array (
    'width' => '15%',
    'label' => 'LBL_EMAIL_ADDRESS',
    'sortable' => false,
    'link' => true,
    'customCode' => '{$EMAIL1_LINK}{$EMAIL1}</a>',
    'default' => false,
  ),
  'PHONE_OTHER' => 
  array (
    'width' => '10%',
    'label' => 'LBL_WORK_PHONE',
    'default' => false,
  ),
  'PHONE_FAX' => 
  array (
    'width' => '10%',
    'label' => 'LBL_FAX_PHONE',
    'default' => false,
  ),
  'ADDRESS_STREET' => 
  array (
    'width' => '10%',
    'label' => 'LBL_PRIMARY_ADDRESS_STREET',
    'default' => false,
  ),
  'ADDRESS_CITY' => 
  array (
    'width' => '10%',
    'label' => 'LBL_PRIMARY_ADDRESS_CITY',
    'default' => false,
  ),
  'ADDRESS_STATE' => 
  array (
    'width' => '10%',
    'label' => 'LBL_PRIMARY_ADDRESS_STATE',
    'default' => false,
  ),
  'ADDRESS_POSTALCODE' => 
  array (
    'width' => '10%',
    'label' => 'LBL_PRIMARY_ADDRESS_POSTALCODE',
    'default' => false,
  ),
  'DATE_ENTERED' => 
  array (
    'width' => '10%',
    'label' => 'LBL_DATE_ENTERED',
    'default' => false,
  ),
  'CREATED_BY_NAME' => 
  array (
    'width' => '10%',
    'label' => 'LBL_CREATED',
    'default' => false,
  ),
);
?>
