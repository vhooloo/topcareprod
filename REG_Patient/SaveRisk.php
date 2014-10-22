<?php
if(!defined('sugarEntry') || !sugarEntry) die('Not A Valid Entry Point');

require_once('custom/modules/REG_Patient/RiskEvaluation.php');

///////////////////////////////////////////////////////////////////////////////
////	SAVE RISK EVALUATIONS
$focus = new RiskEvaluation();

// if the id is set, then this is update, else generate new id
//var_dump($_POST);

if(isset($_POST['ORT-1A_check'])  ) {
	
	if  (!empty($_POST['ORT-1A_check'])) $focus->ort1a = 1; 
} else $focus->ort1a = null;


if(isset($_POST['ORT-1B_check']) ) {

	if ( !empty($_POST['ORT-1B_check'])) $focus->ort1b = 1; 
} else $focus->ort1b = null;

if(isset($_POST['ORT-1C_check'])) {

	if ( !empty($_POST['ORT-1C_check'])) $focus->ort1c = 1;
} else $focus->ort1c = null;

if(isset($_POST['ORT-2A_check']) ) {

 if ( !empty($_POST['ORT-2A_check'])) 	$focus->ort2a = 1;
} else $focus->ort2a = null;

if(isset($_POST['ORT-2B_check']) && !empty($_POST['ORT-2B_check'])) {
	
	$focus->ort2b = 1;
} else  $focus->ort2b = null;


if(isset($_POST['ORT-2C_check']) && !empty($_POST['ORT-2C_check'])) {
	
	$focus->ort2c = 1;
} else $focus->ort2c = null;

if(isset($_POST['ORT-3_check']) && !empty($_POST['ORT-3_check'])) {
	
	$focus->ort3 = 1;
}else $focus->ort3 = null;

if(isset($_POST['ORT-4_check']) && !empty($_POST['ORT-4_check'])) {
	
	$focus->ort4 = 1;
}else $focus->ort4 = null;

if(isset($_POST['ORT-5A_check']) && !empty($_POST['ORT-5A_check'])) {
	
	$focus->ort5a = 1;
}else $focus->ort5a = null;

if(isset($_POST['ORT-5B_check']) && !empty($_POST['ORT-5B_check'])) {
	
	$focus->ort5b = 1;
}else $focus->ort5b = null;

if(isset($_POST['medd']) && !empty($_POST['medd'])) {
	
	$focus->medd = $_POST['medd'];
}
if(isset($_POST['ortsum']) && !empty($_POST['ortsum'])) {
	
	$focus->ortsum = $_POST['ortsum'];
}
if(isset($_POST['pulmonary']) && !empty($_POST['pulmonary'])) {
	
	$focus->pulmonary = $_POST['pulmonary'];
}
if(isset($_POST['currentrx']) && !empty($_POST['currentrx'])) {
	
	$focus->currentrx = $_POST['currentrx'];
}
if(isset($_POST['histopioid']) && !empty($_POST['histopioid'])) {
	
	$focus->histopioid = $_POST['histopioid'];
}
if(isset($_POST['preocc']) && !empty($_POST['preocc'])) {
	
	$focus->preocc = $_POST['preocc'];
}
if(isset($_POST['unstable']) && !empty($_POST['unstable'])) {
	
	$focus->unstable = $_POST['unstable'];
}
if(isset($_POST['insecure']) && !empty($_POST['insecure'])) {
	
	$focus->insecure = $_POST['insecure'];
}
if(isset($_POST['prioraberrant']) && !empty($_POST['prioraberrant'])) {
	
	$focus->prioraberrant = $_POST['prioraberrant'];
}
if(isset($_POST['ncmscore']) && !empty($_POST['ncmscore'])) {
	
	$focus->ncmscore = $_POST['ncmscore'];
}
if(isset($_POST['finalscore']) && !empty($_POST['finalscore'])) {
	
	$focus->finalscore = $_POST['finalscore'];
}

if(isset($_POST['comment']) && !empty($_POST['comment'])) {
	
	$focus->comment = $_POST['comment'];
}

if(isset($_POST['pid']) && !empty($_POST['pid'])) {
	
	$focus->pid = $_POST['pid'];
}
if(isset($_POST['short_opioid']) && !empty($_POST['short_opioid'])) {
	
	$focus->short_opioid = $_POST['short_opioid'];
}
if(isset($_POST['long_opioid']) && !empty($_POST['long_opioid'])) {
	
	$focus->long_opioid = $_POST['long_opioid'];
}

if(isset($_POST['riskid']) && !empty($_POST['riskid'])) {
	
	$focus->new_with_id = false;
	$focus->id_c = $_POST['riskid'];
}
else
{
	$focus->new_with_id = false;
}

$focus->save();


///////////////////////////////////////////////////////////////////////////////
////	PAGE REDIRECTION; BAck to patient list
///////////////////////////////////////////////////////////////////////////////
if(isset($_POST['flag']) && $_POST['flag']==1)
{
echo "<script type='text/javascript'>
$(document).ready(function(){
window.close(); });</script>";
}
else
	header("Location: index.php?action=index&module=REG_Patient");
?>
