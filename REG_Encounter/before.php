<?php
require_once('data/SugarBean.php');
//require_once('modules/Cases/case.php');
require_once('include/utils.php');
Class before{

function before (&$bean, $event, $arguments)
{


if($bean->uts_not_collected_c != "NotApplicableInPrescription")
	{
		echo $bean->summary;
	$bean->summary="PEnc:".$bean->summary;
	$bean->last_pain_nurse_visit_c = date("Y-m-d"); //if encounter default last visit date 
	}
	else{
	
	echo $bean->summary;
	$bean->summary="RxRF:".$bean->summary;
	
	}
    $bean->last_pain_nurse_visit_c = date("Y-m-d");
}

}

?>