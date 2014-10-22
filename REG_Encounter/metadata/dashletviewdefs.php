<?php
$dashletData['REG_EncounterDashlet']['searchFields'] = array (
  'date_entered' => 
  array (
    'default' => '',
  ),
  'date_modified' => 
  array (
    'default' => '',
  ),
  'assigned_user_id' => 
  array (
    'type' => 'assigned_user_name',
    'default' => 'Administrator',
  ),
);
$dashletData['REG_EncounterDashlet']['columns'] = array (
  'document_name' => 
  array (
    'width' => '40%',
    'label' => 'LBL_NAME',
    'link' => true,
    'default' => true,
    'name' => 'document_name',
  ),
  'date_entered' => 
  array (
    'width' => '15%',
    'label' => 'LBL_DATE_ENTERED',
    'default' => true,
    'name' => 'date_entered',
  ),
  'reg_patient_reg_encounter_name' => 
  array (
    'type' => 'relate',
    'link' => true,
    'label' => 'LBL_REG_PATIENT_REG_ENCOUNTER_FROM_REG_PATIENT_TITLE',
    'id' => 'REG_PATIENT_REG_ENCOUNTERREG_PATIENT_IDA',
    'width' => '10%',
    'default' => true,
    'name' => 'reg_patient_reg_encounter_name',
  ),
  'active_date' => 
  array (
    'type' => 'date',
    'label' => 'LBL_DOC_ACTIVE_DATE',
    'width' => '10%',
    'default' => true,
    'name' => 'active_date',
  ),
  'next_rx_refill_due_c' => 
  array (
    'type' => 'date',
    'default' => true,
    'label' => 'LBL_NEXT_RX_REFILL_DUE',
    'width' => '10%',
  ),
  'risk_level_c' => 
  array (
    'type' => 'varchar',
    'default' => true,
    'label' => 'LBL_RISK_LEVEL',
    'width' => '10%',
  ),
  'date_modified' => 
  array (
    'width' => '15%',
    'label' => 'LBL_DATE_MODIFIED',
    'name' => 'date_modified',
    'default' => false,
  ),
  'created_by' => 
  array (
    'width' => '8%',
    'label' => 'LBL_CREATED',
    'name' => 'created_by',
    'default' => false,
  ),
  'assigned_user_name' => 
  array (
    'width' => '8%',
    'label' => 'LBL_LIST_ASSIGNED_USER',
    'name' => 'assigned_user_name',
    'default' => false,
  ),
);
