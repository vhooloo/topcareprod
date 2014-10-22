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
          'label' => '15',
          'field' => '15',
        ),
        1 => 
        array (
          'label' => '15',
          'field' => '15',
        ),
		2 => 
        array (
          'label' => '15',
          'field' => '15',
        ),
		
      ),
      'javascript' => '{sugar_getscript file="include/javascript/popup_parent_helper.js"}
	{sugar_getscript file="cache/include/javascript/sugar_grp_jsolait.js"}
	{sugar_getscript file="modules/Documents/documents.js"}',
      'useTabs' => false,
      'tabDefs' => 
      array (
        'DEFAULT' => 
        array (
          'newTab' => false,
          'panelDefault' => 'expanded',
        ),
      ),
      'syncDetailEditViews' => false,
    ),
    'panels' => 
    array (
      'default' => 
      array (
	  
	  
	  
        
		0 => 
        array (
          0 => 
          array (
            'name' => 'uts_not_collected_c',
            'studio' => 'visible',
            'label' => 'LBL_UTS_NOT_COLLECTED',
			//'customCode' => '<input type="text" name="uts_not_collected_c" id="uts_not_collected_c" size="30" maxlength="255" value="test" title=""></input>',
			'customCode' => '<input type="hidden" name="uts_not_collected_c"    size="30" maxlength="255" value="NotApplicableInPrescription" title=""></input>',
			'customLabel' => '',
          ),
		),  
		
	
      ),
    ),
  ),
);
?>
