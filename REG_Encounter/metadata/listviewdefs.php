<?php
$module_name = 'REG_Encounter';
$OBJECT_NAME = 'REG_ENCOUNTER';
$listViewDefs [$module_name] = 
array (
  'REG_PATIENT_REG_ENCOUNTER_NAME' => 
  array (
    'type' => 'relate',
    'link' => true,
    'label' => 'LBL_REG_PATIENT_REG_ENCOUNTER_FROM_REG_PATIENT_TITLE',
    'id' => 'REG_PATIENT_REG_ENCOUNTERREG_PATIENT_IDA',
    'width' => '10%',
    'default' => true,
  ),
  'SUMMARY' => 
  array (
    'type' => 'varchar',
    'label' => 'LBL_SUMMARY',
    'link' => true,
    'width' => '10%',
    'default' => true,
  ),
  'STATUS_ID' => 
  array (
    'type' => 'enum',
    'label' => 'LBL_DOC_STATUS',
    'width' => '10%',
    'default' => true,
  ),
  'DATE_ENTERED' => 
  array (
    'type' => 'datetime',
    'label' => 'LBL_DATE_ENTERED',
    'width' => '10%',
    'default' => true,
  ),
  'CREATED_BY_NAME' => 
  array (
    'type' => 'relate',
    'link' => true,
    'label' => 'LBL_CREATED',
    'id' => 'CREATED_BY',
    'width' => '10%',
    'default' => true,
  ),
  'MODIFIED_BY_NAME' => 
  array (
    'width' => '10%',
    'label' => 'LBL_MODIFIED_USER',
    'module' => 'Users',
    'id' => 'USERS_ID',
    'default' => false,
    'sortable' => false,
    'related_fields' => 
    array (
      0 => 'modified_user_id',
    ),
  ),
);
?>
