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
      'maxColumns' => '4',
      'widths' => 
      array (
        0 => 
        array (
          'label' => '20',
          'field' => '20',
        ),
        1 => 
        array (
          'label' => '20',
          'field' => '20',
        ),
		2 => 
        array (
          'label' => '20',
          'field' => '20',
        ),
		3 => 
        array (
          'label' => '20',
          'field' => '20',
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
            'name' => 'reg_patient_reg_encounter_name',
			
          ),
          1 => 
          array (
            'name' => 'summary',
            'label' => 'LBL_SUMMARY',
			'displayParams' =>   
			array (  
				'field' =>   
				array (  
						'onblur' => 'set_session(this.id,this.value);',  
					), 
				
				
			), 
          ),
		
		 
        ),
		1 => 
        array (
         0 => 
          array (
            'name' => 'date_entered',
            'label' => 'LBL_DATE_ENTERED',
          ),
          1 =>  array (
            'name' => 'date_entered',
            'label' => 'LBL_DATE_ENTERED',
			'customCode' => '<input type="text" readonly=readonly  style="background-color:#ddd" id="date_1"></input>',
			'customLabel' => '2nd Past :',
          ),
		  2 =>  array (
            'name' => 'date_entered',
            'label' => 'LBL_DATE_ENTERED',
			'customCode' => '<input type="text" readonly=readonly style="background-color:#ddd" id="date_2"></input>',
			'customLabel' => '3rd Past :',
          ),
		  3 =>  array (
            'name' => 'date_entered',
            'label' => 'LBL_DATE_ENTERED',
			'customCode' => '<input type="text" readonly=readonly  style="background-color:#ddd" id="date_3"></input>',
			'customLabel' => '4th Past :',
          ),
        ),
        2 => 
        array (
          0 => 
          array (
            'name' => 'sf12_c',
            'label' => 'LBL_SF12',
			'displayParams' =>   
			array (  
				'field' =>   
				array (  
						'onblur' => 'set_session(this.id,this.value);',  
					), 
				
				
			), 
			
          ),
          1 =>  array (
            'name' => 'sf12_c',
            'label' => 'LBL_SF12',
			'customCode' => '<input type="text" readonly=readonly style="background-color:#ddd" id="sf12_1"></input>',
			'customLabel' => '2nd Past :',
          ),
		  2 =>  array (
            'name' => 'sf12_c',
            'label' => 'LBL_SF12',
			'customCode' => '<input type="text" readonly=readonly style="background-color:#ddd" id="sf12_2"></input>',
			'customLabel' => '3rd Past :',
          ),
		  3 =>  array (
            'name' => 'sf12_c',
            'label' => 'LBL_SF12',
			'customCode' => '<input type="text" readonly=readonly style="background-color:#ddd" id="sf12_3"></input>',
			'customLabel' => '4th Past :',
          ),
        ),
        3 => 
        array (
          0 => 
          array (
            'name' => 'peg_c',
            'label' => 'LBL_PEG',
			'displayParams' =>   
			array (  
				'field' =>   
				array (  
						'onblur' => 'set_session(this.id,this.value);',  
					), 
				
				
			), 
          ),
          1 =>  array (
            'name' => 'peg_c',
            'label' => 'LBL_PEG',
			'customCode' => '<input type="text" readonly=readonly  style="background-color:#ddd" id="peg_1"></input>',
			'customLabel' => '2nd Past :',
          ),
		  2 =>  array (
            'name' => 'peg_c',
            'label' => 'LBL_PEG',
			'customCode' => '<input type="text" readonly=readonly style="background-color:#ddd" id="peg_2"></input>',
			'customLabel' => '3rd Past :',
          ),
		  3 =>  array (
            'name' => 'peg_c',
            'label' => 'LBL_PEG',
			'customCode' => '<input type="text" readonly=readonly  style="background-color:#ddd" id="peg_3"></input>',
			'customLabel' => '4th Past :',
          ),
        ),
        4 => 
        array (
          0 => 
          array (
            'name' => 'pillcount_c',
            'label' => 'LBL_PILLCOUNT',
			'displayParams' =>   
			array (  
				'field' =>   
				array (  
						'onblur' => 'set_session(this.id,this.value);',  
					), 
				
				
			), 
          ),
		  1 =>  array (
            'name' => 'pillcount_c',
            'label' => 'LBL_PILLCOUNT',
			'customCode' => '<input type="text" readonly=readonly style="background-color:#ddd"  id="pillcount_1"></input>',
			'customLabel' => '2nd Past :',
          ),
		  2 =>  array (
            'name' => 'pillcount_c',
            'label' => 'LBL_PILLCOUNT',
			'customCode' => '<input type="text" readonly=readonly style="background-color:#ddd" id="pillcount_2"></input>',
			'customLabel' => '3rd Past :',
          ),
		  3 =>  array (
            'name' => 'pillcount_c',
            'label' => 'LBL_PILLCOUNT',
			'customCode' => '<input type="text" readonly=readonly style="background-color:#ddd"  id="pillcount_3"></input>',
			'customLabel' => '4th Past :',
          ),
        ),
		5 => 
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
