<?php
$module_name = 'REG_Patient';
$viewdefs [$module_name] = 
array (
  'DetailView' => 
  array (
    'templateMeta' => 
    array (
      'form' => 
      array (
        'buttons' => 
        array (
          0 => 'EDIT',
          1 => 'DUPLICATE',
          2 => 'DELETE',
          3 => 'FIND_DUPLICATES',
        ),
      ),
      'maxColumns' => '2',
      'widths' => 
      array (
        0 => 
        array (
          'label' => '10',
          'field' => '30',
        ),
        1 => 
        array (
          'label' => '10',
          'field' => '30',
        ),
      ),
      'useTabs' => false,
      'tabDefs' => 
      array (
        'LBL_CONTACT_INFORMATION' => 
        array (
          'newTab' => false,
          'panelDefault' => 'expanded',
        ),
      ),
      'syncDetailEditViews' => true,
    ),
    'panels' => 
    array (
      'lbl_contact_information' => 
      array (
        0 => 
        array (
          0 => 
          array (
            'name' => 'last_name',
            'comment' => 'Last name of the contact',
            'label' => 'LBL_LAST_NAME',
          ),
          1 => 
          array (
            'name' => 'first_name',
            'comment' => 'First name of the contact',
            'label' => 'LBL_FIRST_NAME',
          ),
        ),
        1 => 
        array (
          0 => 
          array (
            'name' => 'dob',
            'label' => 'LBL_DOB',
          ),
          1 => 
          array (
            'name' => 'mrn_c',
            'label' => 'LBL_MRN',
          ),
        ),
        2 => 
        array (
          0 => 
          array (
            'name' => 'gender',
            'studio' => 'visible',
            'label' => 'LBL_GENDER',
          ),
          1 => 
          array (
            'name' => 'phone_home',
            'label' => 'LBL_HOME_PHONE',
          ),
        ),
        3 => 
        array (
          0 => 
          array (
            'name' => 'reg_patient_status_c',
            'studio' => 'visible',
            'label' => 'LBL_REG_PATIENT_STATUS',
          ),
        ),
        4 => 
        array (
          0 => 
          array (
            'name' => 'race',
            'studio' => 'visible',
            'label' => 'LBL_RACE',
          ),
          1 => 
          array (
            'name' => 'ethnicity',
            'studio' => 'visible',
            'label' => 'LBL_ETHNICITY',
          ),
        ),
        5 => 
        array (
          0 => 
          array (
            'name' => 'primary_address_street',
            'label' => 'LBL_PRIMARY_ADDRESS',
            'type' => 'address',
            'displayParams' => 
            array (
              'key' => 'primary',
            ),
          ),
          1 => 
          array (
            'name' => 'location_c',
            'studio' => 'visible',
            'label' => 'LBL_LOCATION',
          ),
        ),
        6 => 
        array (
          0 => 
          array (
            'name' => 'active_c',
            'label' => 'LBL_ACTIVE',
          ),
          1 => 
          array (
            'name' => 'date_incative_c',
            'label' => 'LBL_DATE_INCATIVE_C',
          ),
        ),
        7 => 
        array (
          0 => 'description',
          1 => 'email1',
        ),
        8 => 
        array (
          0 => 'assigned_user_name',
          1 => 
          array (
            'name' => 'reg_provider_reg_patient_name',
          ),
        ),
      ),
    ),
  ),
);
?>
