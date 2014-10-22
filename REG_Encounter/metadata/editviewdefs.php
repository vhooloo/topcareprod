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
            'name' => 'date_entered',
            'comment' => 'Date record created',
            'label' => 'LBL_DATE_ENTERED',
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
          1 => 
          array (
            'name' => 'uts_not_collected_c',
            'label' => 'LBL_UTS_NOT_COLLECTED',
          ),
        ),
        5 => 
        array (
          0 => 
          array (
            'name' => 'affect_c',
            'studio' => 'visible',
            'label' => 'LBL_AFFECT',
          ),
        ),
        6 => 
        array (
          0 => 
          array (
            'name' => 'adverse_behaviors_reported_c',
            'label' => 'LBL_ADVERSE_BEHAVIORS_REPORTED',
          ),
        ),
        7 => 
        array (
          0 => 
          array (
            'name' => 'assessment_summary_c',
            'studio' => 'visible',
            'label' => 'LBL_ASSESSMENT_SUMMARY',
          ),
        ),
        8 => 
        array (
          0 => 
          array (
            'name' => 'document_plan_c',
            'studio' => 'visible',
            'label' => 'LBL_DOCUMENT_PLAN',
          ),
        ),
        9 => 
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
