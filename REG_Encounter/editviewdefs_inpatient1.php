<?php
$module_name = 'REG_Encounter';
$viewdefs [$module_name] = 
array (
  'EditView' => 
  array (
    'templateMeta' => 
    array (
      'form' => 
      array (

        'enctype' => 'multipart/form-data',
        'hidden' => 
        array (
        ),
      ),
      'maxColumns' => '3',
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
		 2 => 
        array (
          'label' => '10',
          'field' => '30',
        ),
      ),
      'useTabs' => false,
      'tabDefs' => 
      array (
        'DEFAULT' => 
        array (
          'newTab' => false,
          'panelDefault' => 'expanded',
        ),
      ),
    ),
    'panels' => 
    array (
      'default' => 
      array (
        0 => 
        array (
          0 => 
          array (
            'name' => 'reg_patient_reg_encounter_name',
			'displayParams' =>   
			array (  
				'field' =>   
				array (  
						'style' => 'visibility:hidden',  
					), 
				'label'=>
				array (  
						'style' => 'visibility:hidden',  
					), 
				
			), 
          ),
          1 => 'status_id',
        ),
        1 => 
        array (
          0 => 
          array (
            'name' => 'summary',
            'label' => 'LBL_SUMMARY',
          ),
         1 => 
          array (
            'name' => 'summary',
            'label' => 'LBL_SUMMARY',
			'customCode' => '<input type="text" readonly=readonly id="summary1"></input>',
          ),
		  2 => 
          array (
            'name' => 'summary',
            'label' => 'LBL_SUMMARY',
			'customCode' => '<input type="text" readonly=readonly id="summary2"></input>',
          ),
        ),
        2 => 
        array (
          0 => 
          array (
            'name' => 'description',
            'comment' => 'Full text of the note',
            'label' => 'LBL_DESCRIPTION',
          ),
        ),
      ),
    ),
  ),
);
?>
