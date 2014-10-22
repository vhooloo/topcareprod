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
            'name' => 'summary',
            'label' => 'LBL_SUMMARY',
			'displayParams' =>   
			array (  
				'field' =>   
				array (  
						'onblur' => 'set_session(this.id,this.value);',  
						'size' =>'20',
					), 
				
				
			), 
			'customLabel' => '&nbsp;&nbsp;Visit Type :',
          ),

		  1 => 
          array (
            'name' => 'patient_present_c',
            'label' => 'LBL_PATIENT_PRESENT',
			'customLabel' => '',
			'customCode' => 'Patient Present : <input type="hidden" name="patient_present_c" value="0"><input type="checkbox" id="patient_present_c" name="patient_present_c" value="1" title="" tabindex="0" checked="" onclick="toggle_entryfields(this.checked)">',
			'displayParams' =>   
			array (  
				'field' =>   
				array (  
						'onblur' => 'set_session(this.id,this.value);',  
					), 
			), 
          ),
		  
		  2=>
		  array(
		  ),
		   3=>
		  array(
		  ),
		  
        ),
		
		1 => 
        array (
          0 => 
          array (
            'name' => 'description',
            'comment' => 'Full text of the note',
            'label' => 'LBL_DESCRIPTION',
			'customLabel' => '<br/><br/><br/>Description : ',
			'customCode' => '<textarea id="description" name="description" rows="8" cols="130" title="" tabindex="0"></textarea>',
          ),
		
        ),
		
		
		
		2 => 
        array (
         0 => 
          array (
            'name' => 'date_entered',
            'label' => 'LBL_DATE_ENTERED',
			'customLabel' => '<span style="font-weight:bold;">Date Created :</span>',
          ),
          
        ),
        3 => 
        array (
          0 => 
          array (
            'name' => 'sf12_c',
            'label' => 'LBL_SF12',
			'customLabel' => '<span style="font-weight:bold;">SF2 :</span>',
			'displayParams' =>   
			array (  
				'field' =>   
				array (  
						'onblur' => 'set_session(this.id,this.value);',
					), 
				
				
			), 
			
          ),
         
        ),
        4 => 
        array (
          0 => 
          array (
            'name' => 'peg_c',
            'label' => 'LBL_PEG',
			'customLabel' => '<span style="font-weight:bold;">PEG :</span>',
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
            'name' => 'pillcount_c',
            'label' => 'LBL_PILLCOUNT',
			'customLabel' => '<span style="font-weight:bold;">PillCount :</span>',
			'displayParams' =>   
			array (  
				'field' =>   
				array (  
						'onblur' => 'set_session(this.id,this.value);',  
					), 
				
				
			), 
          ),
		  
        ),
		6 => 
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
