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
          ),
        ),
        1 => 
        array (
          0 => 
          array (
            'name' => 'sf12_c',
            'label' => 'LBL_SF12',
          ),
          1 => '',
        ),
        2 => 
        array (
          0 => 
          array (
            'name' => 'peg_c',
            'label' => 'LBL_PEG',
          ),
          1 => '',
        ),
        3 => 
        array (
          0 => 
          array (
            'name' => 'pillcount_c',
            'label' => 'LBL_PILLCOUNT',
          ),
        ),
        4 => 
        array (
          0 => 
          array (
            'name' => 'urinetoxscreen_c',
            'label' => 'LBL_URINETOXSCREEN',
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
          ),
        ),
        9 => 
        array (
          0 => 
          array (
            'name' => 'document_plan_c',
            'studio' => 'visible',
            'label' => 'LBL_DOCUMENT_PLAN',
          ),
        ),
        10 => 
        array (
          0 => 
          array (
            'name' => 'review_revise_tp_c',
            'studio' => 'visible',
            'label' => 'LBL_REVIEW_REVISE_TP',
          ),
        ),
      ),
    ),
  ),
);
?>
