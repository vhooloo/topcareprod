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
          'label' => '12',
          'field' => '30',
        ),
		2 => 
        array (
          'label' => '10',
          'field' => '30',
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
		  2 => '',
        ),
        1 => 
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
			'customLabel' => 'SF12 of last encounter',
          ),
		  2 =>  array (
            'name' => 'sf12_c',
            'label' => 'LBL_SF12',
			'customCode' => '<input type="text" readonly=readonly style="background-color:#ddd" id="sf12_2"></input>',
			'customLabel' => 'SF12 of 2nd last encounter',
          ),
        ),
        2 => 
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
			'customLabel' => 'PEG of last encounter',
          ),
		  2 =>  array (
            'name' => 'peg_c',
            'label' => 'LBL_PEG',
			'customCode' => '<input type="text" readonly=readonly style="background-color:#ddd" id="peg_2"></input>',
			'customLabel' => 'PEG of 2nd last encounter',
          ),
        ),
        3 => 
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
			'customLabel' => 'Pillcount of last encounter',
          ),
		  2 =>  array (
            'name' => 'pillcount_c',
            'label' => 'LBL_PILLCOUNT',
			'customCode' => '<input type="text" readonly=readonly style="background-color:#ddd" id="pillcount_2"></input>',
			'customLabel' => 'Pillcount of 2nd last encounter',
          ),
        ),
        4 => 
        array (
          0 => 
          array (
            'name' => 'urinetoxscreen_c',
            'label' => 'LBL_URINETOXSCREEN',
			'displayParams' =>   
			array (  
				'field' =>   
				array (  
						'onblur' => 'set_session(this.id,this.value);',  
					), 
				
				
			), 
          ),
        ),
        5 => 
        array (
          0 => 
          array (
            'name' => 'uts_validated_c',
            'studio' => 'visible',
            'label' => 'LBL_UTS_VALIDATED',
          ),
          1 => 
          array (
            'name' => 'uts_not_collected_c',
            'label' => 'LBL_UTS_NOT_COLLECTED',
          ),
        ),
        6 => 
        array (
          0 => 
          array (
            'name' => 'affect_c',
            'studio' => 'visible',
            'label' => 'LBL_AFFECT',
			'displayParams' =>   
			array (  
				'field' =>   
				array (  
						'onblur' => 'set_session(this.id,this.value);',  
					), 
				
				
			), 
          ),
        ),
        7 => 
        array (
          0 => 
          array (
            'name' => 'adverse_behaviors_reported_c',
            'label' => 'LBL_ADVERSE_BEHAVIORS_REPORTED',
          ),
          1 => 
          array (
            'name' => 'abherrent_behaviors_detected_c',
            'label' => 'LBL_ABHERRENT_BEHAVIORS_DETECTED',
          ),
        ),
        8 => 
        array (
          0 => 
          array (
            'name' => 'assessment_summary_c',
            'studio' => 'visible',
            'label' => 'LBL_ASSESSMENT_SUMMARY',
			'displayParams' =>   
			array (  
				'field' =>   
				array (  
						'onblur' => 'set_session(this.id,this.value);',  
					), 
				
				
			), 
          ),
        ),
        9 => 
        array (
          0 => 
          array (
            'name' => 'document_plan_c',
            'studio' => 'visible',
            'label' => 'LBL_DOCUMENT_PLAN',
			'displayParams' =>   
			array (  
				'field' =>   
				array (  
						'onblur' => 'set_session(this.id,this.value);',  
					), 
				
				
			), 
          ),
        ),
        10 => 
        array (
          0 => 
          array (
            'name' => 'review_revise_tp_c',
            'studio' => 'visible',
            'label' => 'LBL_REVIEW_REVISE_TP',
			'displayParams' =>   
			array (  
				'field' =>   
				array (  
						'onblur' => 'set_session(this.id,this.value);',  
					), 
				
				
			), 
          ),
        ),
      ),
    ),
  ),
);
?>
