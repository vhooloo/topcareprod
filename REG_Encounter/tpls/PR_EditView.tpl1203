{*
/*********************************************************************************
 * SugarCRM Community Edition is a customer relationship management program developed by
 * SugarCRM, Inc. Copyright (C) 2004-2012 SugarCRM Inc.
 * 
 * This program is free software; you can redistribute it and/or modify it under
 * the terms of the GNU Affero General Public License version 3 as published by the
 * Free Software Foundation with the addition of the following permission added
 * to Section 15 as permitted in Section 7(a): FOR ANY PART OF THE COVERED WORK
 * IN WHICH THE COPYRIGHT IS OWNED BY SUGARCRM, SUGARCRM DISCLAIMS THE WARRANTY
 * OF NON INFRINGEMENT OF THIRD PARTY RIGHTS.
 * 
 * This program is distributed in the hope that it will be useful, but WITHOUT
 * ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or FITNESS
 * FOR A PARTICULAR PURPOSE.  See the GNU Affero General Public License for more
 * details.
 * 
 * You should have received a copy of the GNU Affero General Public License along with
 * this program; if not, see http://www.gnu.org/licenses or write to the Free
 * Software Foundation, Inc., 51 Franklin Street, Fifth Floor, Boston, MA
 * 02110-1301 USA.
 * 
 * You can contact SugarCRM, Inc. headquarters at 10050 North Wolfe Road,
 * SW2-130, Cupertino, CA 95014, USA. or at email address contact@sugarcrm.com.
 * 
 * The interactive user interfaces in modified source and object code versions
 * of this program must display Appropriate Legal Notices, as required under
 * Section 5 of the GNU Affero General Public License version 3.
 * 
 * In accordance with Section 7(b) of the GNU Affero General Public License version 3,
 * these Appropriate Legal Notices must retain the display of the "Powered by
 * SugarCRM" logo. If the display of the logo is not reasonably feasible for
 * technical reasons, the Appropriate Legal Notices must display the words
 * "Powered by SugarCRM".
 ********************************************************************************/

*}


<script>
    {literal}
    $(document).ready(function(){
	    $("ul.clickMenu").each(function(index, node){
	        $(node).sugarActionMenu();
	    });
    });


function copyToClipboard () {
    var appendTxt="";
    var date_value = document.getElementById("date_last_modified").value;
	var today="";
    if(date_value==""){
     today = new Date();
	var dd = today.getDate();
	var mm = today.getMonth()+1; //January is 0!
	var yyyy = today.getFullYear();
	if(dd<10){dd='0'+dd;} if(mm<10){mm='0'+mm;} today = mm+'/'+dd+'/'+yyyy;
	}
	else{
	today = date_value;
	}
	
	var name = document.getElementById('patient_name').value;
	var diff = document.getElementsByName('uts_not_collected_c')[0].value;
	var type="Prescription Refill";
	if(diff!= "NotApplicableInPrescription"){
	type="Patient Encounter";
	}
    //appendTxt =appendTxt +type +" of " + name + " on "+ today + "\r\n";
	appendTxt =appendTxt +type + " Date: "+ today + "\r\n";
	var summary = document.getElementById('summary').value;
	if(summary==""){
	summary= "Information Not Available"
	} else
	appendTxt =appendTxt + "Encounter Summary: " +summary+"\r\n";
	
    var history = document.getElementById('history_c').value;
	if(history==""){
	history= "Information Not Available"
	} else
	appendTxt =appendTxt + "Notes: " +history+"\r\n";
	
	/*var assessment = document.getElementById('assessment_summary_c').value;
	if(assessment==""){
	assessment= "Information Not Available"
	}
	appendTxt =appendTxt + "Assessment and plan include: " +assessment+"\r\n";
	*/
	
	var daysdispensed = document.getElementById('pills_bottle_disp_c').value;
	if(daysdispensed==""){
	daysdispensed= "Information Not Available"
	} else
	appendTxt =appendTxt + "Days of refill dispensed: " +daysdispensed+"\r\n";
	
	
		
	var nextRx = document.getElementById('next_rx_refill_due_c').value;
	if(nextRx==""){
	nextRx= "Information Not Available"
	} else
	appendTxt =appendTxt + "Next Rx refill: " +nextRx+"\r\n";

	var lastUTS = document.getElementById('last_uts_c').value;
	if(lastUTS==""){
	lastUTS= "Information Not Available"
	} else
	appendTxt =appendTxt + "Date of last UTS: " +lastUTS+"\r\n";

	var nextUTS = document.getElementById('next_uts_due_c').value;
	if(nextUTS==""){
	nextUTS= "Information Not Available"
	} else
	appendTxt =appendTxt + "Next UTS: " +nextUTS+"\r\n";

	var lastPCP = document.getElementById('last_pcp_visit_c').value;
	if(lastPCP==""){
	lastPCP= "Information Not Available"
	} else
	appendTxt =appendTxt + "Last PCP visit: " +lastPCP+"\r\n";
	
	var nextPCP = document.getElementById('next_pcp_visit_c').value;
	if(nextPCP==""){
	nextPCP= "Information Not Available"
	} else
	appendTxt =appendTxt + "Next PCP visit: " +nextPCP+"\r\n";

	var lastNCMVisit = document.getElementById('last_pain_nurse_visit_c').value;
	if(lastNCMVisit==""){
	lastNCMVisit= "Information Not Available"
	} else
	appendTxt =appendTxt + "Last NCM Visit: " +lastNCMVisit+"\r\n";
	
	var lastNCMContact = document.getElementById('last_nurse_phone_contact_c').value;
	if(lastNCMContact==""){
	lastNCMContact= "Information Not Available";
	} else
	appendTxt =appendTxt + "Last NCM Contact: " +lastNCMContact+"\r\n";

	var nextNCM = document.getElementById('nxt_appt_pain_c').value;
	if(nextNCM==""){
	nextNCM= "Information Not Available";
	} else
	appendTxt =appendTxt + "Next NCM Visit: " +nextNCM+"\r\n";
	
	var lastPMP = document.getElementById('last_pmp_review_done_c').value;
	if(lastPMP==""){
	lastPMP= "Information Not Available";
	} else
	appendTxt =appendTxt + "Last PMP review: " +lastPMP+"\r\n";
	
	var nextPMP = document.getElementById('next_pmp_review_due_c').value;
	//if(nextPMP==""){
	//nextPMP= "Information Not Available";
	//}
	
	var combine = document.getElementById('next_appt_other_c').value;
	if(combine==""){
		if(nextPMP!="") appendTxt =appendTxt + "Next PMP visit: " +nextPMP+"\r\n";
	}
	else{
		if(nextPMP!="") appendTxt =appendTxt + "Next PMP visit: " +nextPMP+"\r\n";
      var values_of = combine.split('#');
	  for (var i=0;i<values_of.length;i++){
	  var values_indi = values_of[i].split(',');
	  var selectedtext=document.getElementById(values_indi[0]).text;
	  var date_value=values_indi[1];
	  if(i==0)
	  appendTxt=appendTxt + "Next Appointment for " + selectedtext + ": " +date_value+"\r\n" ;
	  else
	  appendTxt=appendTxt + "Next Appointment for " + selectedtext + ": " +date_value+"\r\n" ;
	 }
	}

	 appendTxt=appendTxt+"\r\n"+"Safety Review "+"\r\n";
	 
	if( document.getElementById('med_safety_pulm_prob_c').checked)
	{
		appendTxt=appendTxt +"Pulmonary Problems (O2DEP, OSA, COPD): "	;
		appendTxt=appendTxt +"YES"+"\r\n";	
	} else {
	 //appendTxt=appendTxt +"NO"+"\r\n";		
	}
	 	
	if( document.getElementById('med_safety_sedatives_c').checked)
	{
	 appendTxt=appendTxt +"Taking Sedative Meds: "	;
	 appendTxt=appendTxt +"YES"+"\r\n";	
	} else {
	 //appendTxt=appendTxt +"NO"+"\r\n";		
	}
	
	
	
	if( document.getElementById('med_safety_high_medd_c').checked)
	{
	 appendTxt=appendTxt +"(>50) MEDD:  ";		
	 appendTxt=appendTxt +"YES"+"\r\n";	
	} else {
	 //appendTxt=appendTxt +"NO"+"\r\n";		
	}

	
	var risklevel = document.getElementById('risklvl_c').value;
	if(risklevel==""){
	risklevel= "Information Not Available";
	} 
	var risktext;
	var newrisk = 0;
	newrisk = parseInt(risklevel);
	if (newrisk >= 0 && newrisk <= 3) risktext = 'LOW';
	if (newrisk >= 4 && newrisk <= 6) risktext = 'MODERATE';
	if (newrisk > 7) risktext = 'HIGH';
	
	appendTxt =appendTxt + "Risk Level: " +risktext+"\r\n";
	
	
	appendTxt=appendTxt+"\r\n"+"Contract "+"\r\n";
	
	//appendTxt=appendTxt +"Aberrant behavior noted: ";	
	if( document.getElementById('aberrant_behavior_noted_c').checked)
	{
	 appendTxt=appendTxt +"Aberrant behavior noted: YES"+"\r\n";	
	} else {
	 //appendTxt=appendTxt +"NO"+"\r\n";		
	}
	//appendTxt=appendTxt +"Patient confirms taking medications as prescribed: ";	
	if( document.getElementById('pt_confirms_taking_c').checked)
	{
	 appendTxt=appendTxt +"Patient confirms taking medications as prescribed:YES"+"\r\n";	
	} else {
	 //appendTxt=appendTxt +"NO"+"\r\n";		
	}
	//appendTxt=appendTxt +"Patient confirms storing medications safely: ";
	if( document.getElementById('pt_confirms_storing_c').checked)
	{
	 appendTxt=appendTxt +"Patient confirms storing medications safely: YES"+"\r\n";	
	} else {
	 //appendTxt=appendTxt +"NO"+"\r\n";		
	}
	
	if(document.getElementById('narcotic_contract_in_chart_c').checked){
	var signeddate = document.getElementById('narcotic_contract_sign_c').value;
	if(signeddate==""){
	signeddate= "Information Not Available"
	}else 	
	appendTxt=appendTxt +"Controlled substance agreement signed: "+signeddate;
	}
	
	if (window.clipboardData) // Internet Explorer
    {  
        window.clipboardData.setData("Text", appendTxt);
		alert ("Text Copied to Clipboard");
    }
    else
	{
		alert ("Operation only supported in Internet Explorer!")
	}
	
	}
	
   
</script>

<script>
window.onload = function()
  {
     //alert( {/literal} '{$smarty.session.regnamesort}'); {literal}
	  var combine = {/literal} '{$datarow.next_appt_other_c}'; {literal}
	  
      var values_of = combine.split('#');
	  
	  
	  for (var i=0;i<values_of.length;i++){
	  var values_indi = values_of[i].split(',');
	  var selectedtext=document.getElementById(values_indi[0]).text;
	  var date_value=values_indi[1];
	  $('<li style=\"margin-left:0px;\"> <img src=\"custom/modules/REG_Encounter/tpls/cross.jpg\" class=\"remove\"></img>'+selectedtext+' - '+date_value+' </li>').appendTo('#entry_list');
	  }
 }
 

</script>

<script type="text/javascript">
var a = document.getElementById( "shortcuts" );
a.style.display = "none";
a = document.getElementById( "lastView" );
a.style.display = "none";
a = document.getElementById( "globalLinks" );
a.style.display = "none";
a = document.getElementById( "sitemapLink" );
a.style.display = "none";
a = document.getElementById( "search" );
a.style.display = "none";
</script>

 {/literal}	

{php}

session_start();
// store session data
if (!empty($_POST['regnamesort'])) $_SESSION['regnamesort']=$_POST['regnamesort'];
{/php}

<div class="clear"></div>
<form action="index.php" method="POST" name="{$form_name}" id="{$form_id}" {$enctype}>
<table style="border-color: rgb( 100, 100, 255); border-style: solid none none none ; border-collapse:collapse; margin-top: 0;vertical-align: top;" width="100%" cellpadding="0" cellspacing="0" border="0" class="edit view panelContainer">

<tr >

<td style="width:50%;border-color: rgb( 100, 100, 255); border-style: solid solid solid none; border-width: 2px; margin-top: 0;vertical-align: top;" colspan="3" >
<table style="width:100%;border-color: rgb( 100, 100, 255); border-style:  none none solid none; border-width: 2px; margin-top: 0;vertical-align: top;">
<tr >
{assign var=pro_summary value=":"|explode:$datarow.summary} 
<td  width="66.6%" >Encounter Summary <input type="text"  tabindex="04" name="summary" id="summary" size="22" maxlength="255" value="{$pro_summary[1]}" title=""  onblur="set_session(this.id,this.value);">
</td>
<td  style="width:33.3%;">
Patient Present   <input  valign="bottom" accesskey=""  type="hidden" name="patient_present_c" value="0"><input tabindex="08"  type="checkbox" id="patient_present_c" name="patient_present_c" value="1" title="" >
</td>

</tr>
</table >
<table >
<tr>
<td width:100% colspan="3" scope="col">Notes<br>
<textarea autofocus  tabindex="12" name="history_c" id="history_c" rows="12" cols="100" maxlength="20000" >{if  ($notes_flag == "true")} {$datarow.history_c} {/if}</textarea>
</td>
</tr>
<!-- only for refill -->
{if ($encountype == "refill") }
<tr>
<td style="width:33.3%;" ><br/>
Days Dispensed <input type="text" tabindex="16"  name="pills_bottle_disp_c" id="pills_bottle_disp_c" size="4" maxlength="4" value="{$datarow.pills_bottle_disp_c}" title="">
</td>
<td style="width:33.3%;" ><br/>
Prescription Refilled Early <input  valign="bottom" accesskey=""  type="hidden" name="presc_refill_early_c" value="0"><input tabindex="16"  type="checkbox" id="presc_refill_early_c" name="presc_refill_early_c" value="1" title=""  >
</td>
</tr>
{/if}
<!-- only for refill -->
<!-- only for encounter -->
{if ($encountype == "encounter") }
<tr>
<td style="width:33.3%;" ><br/>
<input type="checkbox" tabindex="80" id=" 	pt_ben_opioid_c" name="pt_ben_opioid_c" value="1" title=""   {if ( $datarow.pt_ben_opioid_c  > 0   )}  checked="checked" {/if} >&nbsp; Patient Benefits from Opioids 
</td></tr>
{/if}
</table >


<table style="width:100%;border-color: rgb( 100, 100, 255); border-style: solid none none none; border-width: 2px; margin-top: 0;vertical-align: top;">
<tr ><td ><h3>Risk Monitoring</h3></td><td><h3>Risk Level</h3></td></tr>

<tr>
<tr><td>
<br>
<input type="hidden" name="med_safety_pulm_prob_cx" value="0">

<input type="checkbox" tabindex="80" id="med_safety_pulm_prob_c" name="med_safety_pulm_prob_c" value="1" title=""   {if ( $datarow.med_safety_pulm_prob_c  > 0   )}  checked="checked" {/if} >&nbsp; Pulmonary Problems (O<sub>2</sub>DEP, OSA, COPD)
</td><td  style="width:33.3%;">
<select name='risklvl_c'  id='risklvl_c' >
<option label="NA" value="-1" {if ( ($datarow.risklvl_c  < 0)  OR ($datarow.risklvl_c) =="" )} selected="selected" {/if} >NA</option>
<option label="LOW" value="0" {if ( ($datarow.risklvl_c != "") AND $datarow.risklvl_c  >= 0 AND  $datarow.risklvl_c  < 4  )} selected="selected" {/if} >LOW</option>
<!--option label="1-LOW" value="1">1-LOW</option>
<option label="2-LOW" value="2">2-LOW</option>
<option label="3-LOW" value="3">3-LOW</option>
<option label="4-MEDIUM" value="4">4-MEDIUM</option-->
<option label="MODERATE" value="5" {if ( $datarow.risklvl_c  >= 4 AND  $datarow.risklvl_c  < 7  )} selected="selected" {/if} >MODERATE</option>
<!--option label="6-MEDIUM" value="6">6-MEDIUM</option>
<option label="7-HIGH" value="7">7-HIGH</option>
<option label="8-HIGH" value="8">8-HIGH</option-->
<option label="HIGH" value="9" {if ( $datarow.risklvl_c  >= 7   )} selected="selected" {/if} >HIGH</option-->
</select>
</td></tr>

<tr><td>
<img src= "" height="1" width ="1" alt="" vspace="2"/><br/>
<input type="hidden" name="med_safety_sedatives_cx" value="0">
<input type="checkbox" tabindex="84" id="med_safety_sedatives_c" name="med_safety_sedatives_c" value="1" title=""   {if ( $datarow.med_safety_sedatives_c  > 0   )} checked="checked" {/if}  > &nbsp;Taking Sedative Meds
</td>
<td>
<img src= "" height="1" width ="1" alt="" vspace="2"/><br/>
<input type="checkbox" tabindex="84" id="shortacting_c" name="shortacting_c" value="1" title=""   {if ( $datarow.shortacting_c  > 0   )} checked="checked" {/if}  > &nbsp;Multiple Short Acting Opioids
</td>

</tr>

<tr><td>
<img src= "" height="1" width ="1" alt="" vspace="4"/><br/>
<input type="hidden" name="med_safety_high_medd_cx" value="0">
<input type="checkbox" tabindex="88" id="med_safety_high_medd_c" name="med_safety_high_medd_c"  value="1" title=""    {if ( $datarow.med_safety_high_medd_c  > 0   )} checked="checked" {/if}  > &nbsp;(>50) MEDD
</td>
<td>
<img src= "" height="1" width ="1" alt="" vspace="2"/><br/>
<input type="checkbox" tabindex="84" id="longacting_c" name="longacting_c" value="1" title=""   {if ( $datarow.longacting_c  > 0   )} checked="checked" {/if}  > &nbsp;Multiple Long Acting Opioids
</td>

</tr>

</tr>
</table >

<br>
{{sugar_button module="$module" id="SAVE" view="$view" form_id="$form_id" location="HEADER" appendTo="header_buttons"}}
{{sugar_action_menu buttons=$header_buttons class="fancymenu" flat=true}}
<span id="copy_text_div"><input type="button" id="copy-button" onclick="copyToClipboard()" title="Copy information to Logician." value="Copy"></input>
<textarea id="clipboard_textarea" style="display:none"></textarea>	
</div></td>

<td style="width:50%;border-color: rgb( 100, 100, 255); border-style: solid none solid solid;border-width: 2px; margin-top: 0;vertical-align: top;">
<table style="width:100%;border-collapse:collapse;">

<tr>
<td style="width:33.3%;border-color: rgb( 100, 100, 255); border-style: none none solid none;border-width: 2px;margin-top: 0;vertical-align: top;text-align:center" colspan='3'>
<h3 style="margin-top: 5px;">Clinical Data</h3>
</td>
</tr>
<tr>
<td style="width:33.3%;border-color: rgb( 100, 100, 255); border-style: none solid none none;border-width: 2px;margin-top: 0;vertical-align: top;" >
&nbsp;Next Rx Refill <br> 
<span class="dateTime">
{literal}
<script type="text/javascript">
function check_date(element){

 //get today's date in string
 var todayDate = new Date();
 //need to add one to get current month as it is start with 0
 var todayMonth = todayDate.getMonth() + 1;
 var todayDay = todayDate.getDate();
 var todayYear = todayDate.getFullYear();
 var todayDateText = todayMonth + "/" + todayDay + "/" +  todayYear;
 //

//get date input from SharePoint DateTime Control
 var inputDateText = element.value;
 //
 
//Convert both input to date type
 var inputToDate = Date.parse(inputDateText);
 var todayToDate = Date.parse(todayDateText);
 //

//compare dates
 if (inputToDate > todayToDate) {element.style.color='black';}
 else if (inputToDate < todayToDate) {element.style.color='red';}
 else {element.style.color='black';}
}
</script>
{/literal}
<pre style="margin-top:0; margin-bottom:0;"><input class="date_input" autocomplete="off" tabindex="24" type="text" name="next_rx_refill_due_c" onchange='check_date(this);' id="next_rx_refill_due_c" value="{$datarow.next_rx_refill_due_c|date_format:'%m/%d/%Y'}" title="" size="11" maxlength="10" {if ( time() - strtotime($datarow.next_rx_refill_due_c)  > 0   )} style="color:red" {/if} >&thinsp;<img src="themes/Sugar5/images/jscalendar.gif?v=GogGz9QEok1-e0Ft6rexxQ" alt="Enter Date" style="position:relative; top:6px" border="0" id="next_rx_refill_due_c_trigger"></pre>
</span>
{literal}
<script type="text/javascript">
Calendar.setup ({
inputField : "next_rx_refill_due_c",
ifFormat : "%m/%d/%Y %I:%M%P",
daFormat : "%m/%d/%Y %I:%M%P",
button : "next_rx_refill_due_c_trigger",
singleClick : true,
dateStr : "",
startWeekday: 0,
step : 1,
weekNumbers:false
}
);
</script>
{/literal}

</td> 
<td style="width:33.3%;border-color: rgb( 100, 100, 255); border-style: none solid none none;border-width: 2px;margin-top: 0;margin-left: 5px;vertical-align: top;">
&nbsp;Last PCP visit
<span class="dateTime"><pre style="margin-top:0; margin-bottom:0;">
<input class="date_input" tabindex="36" autocomplete="off" type="text" name="last_pcp_visit_c" id="last_pcp_visit_c" value="{$datarow.last_pcp_visit_c|date_format:'%m/%d/%Y'}" title=""  size="11" maxlength="10" >&thinsp;<img src="themes/Sugar5/images/jscalendar.gif?v=GogGz9QEok1-e0Ft6rexxQ" alt="Enter Date" style="position:relative; top:6px" border="0" id="last_pcp_visit_c_trigger"> </pre>
</span>
{literal}
<script type="text/javascript">
Calendar.setup ({
inputField : "last_pcp_visit_c",
ifFormat : "%m/%d/%Y %I:%M%P",
daFormat : "%m/%d/%Y %I:%M%P",
button : "last_pcp_visit_c_trigger",
singleClick : true,
dateStr : "",
startWeekday: 0,
step : 1,
weekNumbers:false
}
);
</script>
{/literal}
</td><td>
&nbsp;Last PMP Review
<span class="dateTime"><pre style="margin-top:0; margin-bottom:0;">
<input class="date_input" tabindex="52" autocomplete="off" type="text" name="last_pmp_review_done_c" id="last_pmp_review_done_c" value="{$datarow.last_pmp_review_done_c|date_format:'%m/%d/%Y'}" title=""  size="11" maxlength="10"  >&thinsp;<img src="themes/Sugar5/images/jscalendar.gif?v=GogGz9QEok1-e0Ft6rexxQ" alt="Enter Date" style="position:relative; top:6px" border="0" id="last_pmp_review_done_c_trigger"> </pre>
</span>
{literal}
<script type="text/javascript">
Calendar.setup ({
inputField : "last_pmp_review_done_c",
ifFormat : "%m/%d/%Y %I:%M%P",
daFormat : "%m/%d/%Y %I:%M%P",
button : "last_pmp_review_done_c_trigger",
singleClick : true,
dateStr : "",
startWeekday: 0,
step : 1,
weekNumbers:false
}
);
</script>
{/literal}





</td>
</tr>
<tr>
<td style="width:33.3%;border-color: rgb( 100, 100, 255); border-style: none solid none none;border-width: 2px;margin-top: 0;vertical-align: top;""><br>
&nbsp;Date of last UTS<br/>
<span class="dateTime"><pre style="margin-top:0; margin-bottom:0;">
<input class="date_input" tabindex="28" autocomplete="off" type="text" name="last_uts_c"  id="last_uts_c" value="{$datarow.last_uts_c|date_format:'%m/%d/%Y'}" title=""  size="11" maxlength="10"  >&thinsp;<img src="themes/Sugar5/images/jscalendar.gif?v=GogGz9QEok1-e0Ft6rexxQ" alt="Enter Date" style="position:relative;  top:6px" border="0" id="last_uts_c_trigger">&nbsp;&nbsp;</pre>
</span>
{literal}
<script type="text/javascript">
Calendar.setup ({
inputField : "last_uts_c",
ifFormat : "%m/%d/%Y %I:%M%P",
daFormat : "%m/%d/%Y %I:%M%P",
button : "last_uts_c_trigger",
singleClick : true,
dateStr : "",
startWeekday: 0,
step : 1,
weekNumbers:false
}
);
</script>
{/literal}

</td>
<td style="width:33.3%;border-color: rgb( 100, 100, 255); border-style: none solid none none;border-width: 2px;margin-top: 0;vertical-align: top;"><br/>
&nbsp;Next PCP visit <br>
<span class="dateTime"><pre style="margin-top:0; margin-bottom:0;">
<input class="date_input" tabindex="40" autocomplete="off" type="text" name="next_pcp_visit_c" id="next_pcp_visit_c" onchange='check_date(this);' value="{$datarow.next_pcp_visit_c|date_format:'%m/%d/%Y'}" {if ( time() - strtotime($datarow.next_pcp_visit_c)  > 0   )} style="color:red" {/if} title=""  size="11" maxlength="10">&thinsp;<img src="themes/Sugar5/images/jscalendar.gif?v=GogGz9QEok1-e0Ft6rexxQ" alt="Enter Date" style="position:relative; top:6px" border="0" id="next_pcp_visit_c_trigger"></pre>
</span>
{literal}
<script type="text/javascript">
Calendar.setup ({
inputField : "next_pcp_visit_c",
ifFormat : "%m/%d/%Y %I:%M%P",
daFormat : "%m/%d/%Y %I:%M%P",
button : "next_pcp_visit_c_trigger",
singleClick : true,
dateStr : "",
startWeekday: 0,
step : 1,
weekNumbers:false
}
);
</script>
{/literal}
</td>

<td ><br>
&nbsp;Next PMP Review <a href='https://gateway.hhs.state.ma.us/authn/login.do' target='_blank' style='display: inline; text-align: right;'>Link to PMP</a><br>
<span class="dateTime"><pre style="margin-top:0; margin-bottom:0;">
<input class="date_input" tabindex="56" autocomplete="off" type="text" name="next_pmp_review_due_c" id="next_pmp_review_due_c" onchange='check_date(this);' value="{$datarow.next_pmp_review_due_c|date_format:'%m/%d/%Y'}" title=""  size="11" maxlength="10" {if ( time() - strtotime($datarow.next_pmp_review_due_c)  > 0   )} style="color:red" {/if} >&thinsp;<img src="themes/Sugar5/images/jscalendar.gif?v=GogGz9QEok1-e0Ft6rexxQ" alt="Enter Date" style="position:relative; top:6px" border="0" id="next_pmp_review_due_c_trigger" ></pre>
</span>
{literal}
<script type="text/javascript">
Calendar.setup ({
inputField : "next_pmp_review_due_c",
ifFormat : "%m/%d/%Y %I:%M%P",
daFormat : "%m/%d/%Y %I:%M%P",
button : "next_pmp_review_due_c_trigger",
singleClick : true,
dateStr : "",
startWeekday: 0,
step : 1,
weekNumbers:false
}
);
</script>
{/literal}

</td>
</tr>
<tr><td style="width:33.3%;border-color: rgb( 100, 100, 255); border-style: none solid none none;border-width: 2px;margin-top: 0;vertical-align: top;"><br/>&nbsp;Next UTS due <br>
<span class="dateTime"><pre style="margin-top:0; margin-bottom:0;">
<input class="date_input" autocomplete="off" tabindex="32" type="text" onchange='check_date(this);' name="next_uts_due_c" id="next_uts_due_c" value="{$datarow.next_uts_due_c|date_format:'%m/%d/%Y'}" title="" size="11" maxlength="10" {if ( time() - strtotime($datarow.next_uts_due_c)  > 0   )} style="color:red" {/if}>&thinsp;<img src="themes/Sugar5/images/jscalendar.gif?v=GogGz9QEok1-e0Ft6rexxQ" alt="Enter Date" style="position:relative; top:6px" border="0" id="next_uts_due_c_trigger"></pre>
</span>
{literal}<script type="text/javascript">
Calendar.setup ({
inputField : "next_uts_due_c",
ifFormat : "%m/%d/%Y %I:%M%P",
daFormat : "%m/%d/%Y %I:%M%P",
button : "next_uts_due_c_trigger",
singleClick : true,
dateStr : "",
startWeekday: 0,
step : 1,
weekNumbers:false
}
);
</script>{/literal}

</td>

<td style="width:33.3%;border-color: rgb( 100, 100, 255); border-style: none solid none none;border-width: 2px;margin-top: 0;vertical-align: top;"><br/>
&nbsp;Last NCM Visit<span class="dateTime"><pre style="margin-top:0; margin-bottom:0;">
<input class="date_input" tabindex="44" autocomplete="off" type="text" name="last_pain_nurse_visit_c" id="last_pain_nurse_visit_c"  value="{$datarow.last_pain_nurse_visit_c|date_format:'%m/%d/%Y'}" title=""  size="11" maxlength="10" >&thinsp;<img src="themes/Sugar5/images/jscalendar.gif?v=GogGz9QEok1-e0Ft6rexxQ" alt="Enter Date" style="position:relative; top:6px" border="0" id="last_pain_nurse_visit_c_trigger"> </pre></span>
{literal}
<script type="text/javascript">
Calendar.setup ({
inputField : "last_pain_nurse_visit_c",
ifFormat : "%m/%d/%Y %I:%M%P",
daFormat : "%m/%d/%Y %I:%M%P",
button : "last_pain_nurse_visit_c_trigger",
singleClick : true,
dateStr : "",
startWeekday: 0,
step : 1,
weekNumbers:false
}
);
</script>
{/literal}
</td>

<td>
<br/>
&nbsp;Next appointment for:<br/>
<select name="pretty" id="pretty" tabindex="60" class="ui-selectmenu-menu">
<option id="NOT">Please Select</option>
<option id="PT">Physical Therapy</option>
<option id="APC">Anesthesia Pain Clinic</option> 
<option id="INJ">Injection Clinic</option> 
<option id="BEH">Behavioral Health</option> 
<option id="STR">Stress Reduction Clinic</option> 
<option id="NEU">Neuro Pain Clinic</option> 
<option id="NNP">Non-Network Pain Clinic</option> 
<option id="OTH">Other</option>
</select>
<span class="dateTime">
<input class="date_input" autocomplete="off" type="text" name="pretty_date" id="pretty_date" tabindex="64" readonly onchange='check_date(this);' value="" title=""  size="11" maxlength="10">
<img src="themes/Sugar5/images/jscalendar.gif?v=GogGz9QEok1-e0Ft6rexxQ" alt="Enter Date" style="position:relative; top:6px" border="0" id="pretty_date_trigger">
</span>
{literal}<script type="text/javascript">
Calendar.setup ({
inputField : "pretty_date",
ifFormat : "%m/%d/%Y %I:%M%P",
daFormat : "%m/%d/%Y %I:%M%P",
button : "pretty_date_trigger",
singleClick : true,
dateStr : "",
startWeekday: 0,
step : 1,
weekNumbers:false
}
);
</script>{/literal}
<input title="Add" accesskey="a" class="button" onclick="add_date_to_list()" tabindex="68" type="button" name="button" value="Add" id="Add_button">
{literal}
<script type="text/javascript">
$('img.remove').live('click', function(){
	var inde=$(this).closest('li').index();
    $(this).closest('li').remove();
    var combine = document.getElementById('next_appt_other_c').value
	var values_of = combine.split('#');
	var final_value='';
	for (var i=0;i<values_of.length;i++)
	{ 
	 
	  if(i!=inde){
		if(final_value==''){
		final_value=values_of[i];
		}
		else{
	
		final_value=final_value+"#"+values_of[i];
		}
	  }	
	}
	document.getElementById('next_appt_other_c').value=final_value;
	});	
	
function add_date_to_list(){

var date_value = document.getElementById('pretty_date').value;
var type_value = document.getElementById('pretty');
var selectedid = type_value.options[type_value.selectedIndex].id;
var selectedtext = type_value.options[type_value.selectedIndex].text;
if(selectedid == "NOT"){
alert("Please Select the Type");
return;
}
if(date_value == "")
{
alert("Please enter the date");
return;
}
else{
	var completevalue = document.getElementById('next_appt_other_c').value;
	if(completevalue==""){
	completevalue=selectedid+","+date_value;
	}
	else{
	completevalue=completevalue+"#"+selectedid+","+date_value;
	}
    
    $('<li style="margin-left:0px;"> <img src="custom/modules/REG_Encounter/tpls/cross.jpg" class="remove"></img>'+selectedtext+' - '+date_value+' </li>').appendTo('#entry_list');

    
document.getElementById('next_appt_other_c').value = completevalue;
document.getElementById('pretty_date').value="";

}

}
</script>

{/literal}





</td>
</tr>
<tr>
<!-- added pill count -->
<td style="width:33.3%;border-color: rgb( 100, 100, 255); border-style: none solid none none;border-width: 2px;margin-top: 0;vertical-align: top;">
&nbsp;Next Pill Count <br>
<span class="dateTime"><pre style="margin-top:0; margin-bottom:0;">
<input class="date_input" autocomplete="off" tabindex="32" type="text" onchange='check_date(this);' name="next_pill_ct_c" id="next_pill_ct_c" value="{$datarow.next_pill_ct_c|date_format:'%m/%d/%Y'}" title="" size="11" maxlength="10" {if ( time() - strtotime($datarow.next_pill_ct_c)  > 0   )} style="color:red" {/if}>&thinsp;<img src="themes/Sugar5/images/jscalendar.gif?v=GogGz9QEok1-e0Ft6rexxQ" alt="Enter Date" style="position:relative; top:6px" border="0" id="next_pill_ct_c_trigger"></pre>
</span>
{literal}<script type="text/javascript">
Calendar.setup ({
inputField : "next_pill_ct_c",
ifFormat : "%m/%d/%Y %I:%M%P",
daFormat : "%m/%d/%Y %I:%M%P",
button : "next_pill_ct_c_trigger",
singleClick : true,
dateStr : "",
startWeekday: 0,
step : 1,
weekNumbers:false
}
);
</script>{/literal}
</td>

<td style="width:33.3%;border-color: rgb( 100, 100, 255); border-style: none solid none none;border-width: 2px;margin-top: 0;vertical-align: top;">
&nbsp;Last NCM contact <br>
<span class="dateTime"><pre style="margin-top:0; margin-bottom:0;">
<input class="date_input" tabindex="48" autocomplete="off" type="text" name="last_nurse_phone_contact_c" id="last_nurse_phone_contact_c" value="{$datarow.last_nurse_phone_contact_c|date_format:'%m/%d/%Y'}" title=""  size="11" maxlength="10">&thinsp;<img src="themes/Sugar5/images/jscalendar.gif?v=GogGz9QEok1-e0Ft6rexxQ" alt="Enter Date" style="position:relative;  top:6px" border="0" id="last_nurse_phone_contact_c_trigger"></pre>
</span>
{literal}
<script type="text/javascript">
Calendar.setup ({
inputField : "last_nurse_phone_contact_c",
ifFormat : "%m/%d/%Y %I:%M%P",
daFormat : "%m/%d/%Y %I:%M%P",
button : "last_nurse_phone_contact_c_trigger",
singleClick : true,
dateStr : "",
startWeekday: 0,
step : 1,
weekNumbers:false
}
);
</script>
{/literal}
</td>
<td rowspan='2'>
<div style="overflow: auto; overflow-y: scroll;max-width:300px;max-height:130px;">
&nbsp;<ul id="entry_list" style="margin-left:0px;padding-left:1px;"></ul>
</div>
<input type="hidden" tabindex="23" name="next_appt_other_c" id="next_appt_other_c" size="22" maxlength="20" value="" title="">
</td>

</tr>
<tr>

<td style="width:33.3%;border-color: rgb( 100, 100, 255); border-style: none solid none none;border-width: 2px;margin-top: 0;vertical-align: top;"></td>

<td style="width:33.3%;border-color: rgb( 100, 100, 255); border-style: none solid none none;border-width: 2px;margin-top: 0;vertical-align: top;">
<br/>&nbsp;Next NCM Visit<br/>
<span class="dateTime">
<input class="date_input" tabindex="48" autocomplete="off" type="text" name="nxt_appt_pain_c" id="nxt_appt_pain_c" onchange='check_date(this);' value="{$datarow.nxt_appt_pain_c|date_format:'%m/%d/%Y'}" title=""  size="11" maxlength="10" {if ( time() - strtotime($datarow.nxt_appt_pain_c)  > 0   )} style="color:red" {/if}>
<img src="themes/Sugar5/images/jscalendar.gif?v=GogGz9QEok1-e0Ft6rexxQ" alt="Enter Date" style="position:relative; top:6px" border="0" id="nxt_appt_pain_c_trigger">
</span>
{literal}
<script type="text/javascript">
Calendar.setup ({
inputField : "nxt_appt_pain_c",
ifFormat : "%m/%d/%Y %I:%M%P",
daFormat : "%m/%d/%Y %I:%M%P",
button : "nxt_appt_pain_c_trigger",
singleClick : true,
dateStr : "",
startWeekday: 0,
step : 1,
weekNumbers:false
}
);
</script>
{/literal}
</td>
</tr>

</table>
<table style="width:100%;border-color: rgb( 100, 100, 255); border-style: solid none none none; border-width: 2px; margin-top: 0;vertical-align: top;">
<tr>
<td><h3><span style="text-align:centre;" >Contract</span></h3></td>
</tr>

<tr><td>
<br>
<input type="hidden" name="aberrant_behavior_noted_cx" value="0">
<input type="checkbox" tabindex="72" id="aberrant_behavior_noted_c" name="aberrant_behavior_noted_c" value="1" title="" {if ( $datarow.aberrant_behavior_noted_c  > 0   )} checked="checked" {/if}    > &nbsp;Aberrant Behavior Noted
</td></tr>

<tr><td>
<img src= "" height="1" width ="1" alt="" vspace="2"/><br/>
<input type="hidden" name="pt_confirms_taking_cx" value="0">
<input type="checkbox" tabindex="74" id="pt_confirms_taking_c" name="pt_confirms_taking_c" value="1" title=""   {if ( $datarow.pt_confirms_storing_c  > 0   )} checked="checked" {/if} > &nbsp;Patient confirms taking medications as prescribed
</td></tr>

<tr><td>
<img src= "" height="1" width ="1" alt="" vspace="2"/><br/>
<input type="hidden" name="pt_confirms_storing_cx" value="0"><input type="checkbox" tabindex="76" id="pt_confirms_storing_c" name="pt_confirms_storing_c"  value="1" title=""  {if ( $datarow.pt_confirms_storing_c  > 0   )} checked="checked" {/if}  > &nbsp;Patient confirms storing medications safely
</td></tr>

<tr><td>
<input type="hidden" name="narcotic_contract_in_chart_cx" value="0"><input type="checkbox" tabindex="78" id="narcotic_contract_in_chart_c" name="narcotic_contract_in_chart_c" value="1" title=""  {if ( $datarow.narcotic_contract_in_chart_c  > 0   )} checked="checked" {/if}  > <span> &nbsp;Controlled Substance Agreement signed on </span><span class="dateTime"> <input tabindex="79" class="date_input" autocomplete="off" type="text" name="narcotic_contract_sign_c" id="narcotic_contract_sign_c"   value="{$datarow.narcotic_contract_sign_c|date_format:'%m/%d/%Y'}" title=""  size="10" maxlength="10">
<img src="themes/Sugar5/images/jscalendar.gif?v=GogGz9QEok1-e0Ft6rexxQ" alt="Enter Date" style="position:relative; top:6px" border="0" id="narcotic_contract_sign_c_trigger">
</span>
{literal}
<script type="text/javascript">
Calendar.setup ({
inputField : "narcotic_contract_sign_c",
ifFormat : "%m/%d/%Y %I:%M%P",
daFormat : "%m/%d/%Y %I:%M%P",
button : "narcotic_contract_sign_c_trigger",
singleClick : true,
dateStr : "",
startWeekday: 0,
step : 1,
weekNumbers:false
}
);
</script>
{/literal}
</td></tr>

</table>


</td></tr>

<tr>
<td class="buttons">
<input type="hidden" name="module" value="{$module}">
{if isset($smarty.request.isDuplicate) && $smarty.request.isDuplicate eq "true"}
<input type="hidden" name="record" value="">
<input type="hidden" name="duplicateSave" value="true">
<input type="hidden" name="duplicateId" value="{$fields.id.value}">
{else}
<input type="hidden" name="record" value="{$fields.id.value}">
{/if}
<input type="hidden" name="isDuplicate" value="false">
<input type="hidden" name="action">
<input type="hidden" name="return_module" value="{$smarty.request.return_module}">
<input type="hidden" name="return_action" value="{$smarty.request.return_action}">
<input type="hidden" name="return_id" value="{$smarty.request.return_id}">
<input type="hidden" name="module_tab"> 
<input type="hidden" name="contact_role">
{if (!empty($smarty.request.return_module) || !empty($smarty.request.relate_to)) && !(isset($smarty.request.isDuplicate) && $smarty.request.isDuplicate eq "true")}
<input type="hidden" name="relate_to" value="{if $smarty.request.return_relationship}{$smarty.request.return_relationship}{elseif $smarty.request.relate_to && empty($smarty.request.from_dcmenu)}{$smarty.request.relate_to}{elseif empty($isDCForm) && empty($smarty.request.from_dcmenu)}{$smarty.request.return_module}{/if}">
<input type="hidden" name="relate_id" value="{$smarty.request.return_id}">
{/if}
<input type="hidden" name="offset" value="{$offset}">
{assign var='place' value="_HEADER"} <!-- to be used for id for buttons with custom code in def files-->
{{if isset($form.hidden)}}
{{foreach from=$form.hidden item=field}}
{{$field}}   
{{/foreach}}
{{/if}}
{{if empty($form.button_location) || $form.button_location == 'top'}}
{{if !empty($form) && !empty($form.buttons)}}
   {{foreach from=$form.buttons key=val item=button}}
      {{sugar_button module="$module" id="$button" form_id="$form_id" view="$view" appendTo="header_buttons" location="HEADER"}}
   {{/foreach}}
{{else}}
{{sugar_button module="$module" id="SAVE" view="$view" form_id="$form_id" location="HEADER" appendTo="header_buttons"}}
{{sugar_button module="$module" id="CANCEL" view="$view" form_id="$form_id" location="HEADER" appendTo="header_buttons"}}
{{/if}}
{{if empty($form.hideAudit) || !$form.hideAudit}}
{{sugar_button module="$module" id="Audit" view="$view" form_id="$form_id" appendTo="header_buttons"}}
{{/if}}
{{/if}}

</td>
<td align='right'>{{$ADMIN_EDIT}}
{{if $panelCount == 0}}
    {{* Render tag for VCR control if SHOW_VCR_CONTROL is true *}}
	{{if $SHOW_VCR_CONTROL}}
		{$PAGINATION}
	{{/if}}
{{/if}}
</td>
</tr>
</table>

<span id='tabcounterJS'><script>SUGAR.TabFields=new Array();//this will be used to track tabindexes for references</script></span>

<div id="{{$form_name}}_tabs"
{{if $useTabs}}
class="yui-navset"
{{/if}}
>
    {{if $useTabs}}
    {* Generate the Tab headers *}
    {{counter name="tabCount" start=-1 print=false assign="tabCount"}}
    <ul class="yui-nav">
    {{foreach name=section from=$sectionPanels key=label item=panel}}
        {{counter name="tabCount" print=false}}
        {{capture name=label_upper assign=label_upper}}{{$label|upper}}{{/capture}}
        {{if (isset($tabDefs[$label_upper].newTab) && $tabDefs[$label_upper].newTab == true)}}
        <li class="selected"><a id="tab{{$tabCount}}" href="javascript:void({{$tabCount}})"><em>{sugar_translate label='{{$label}}' module='{{$module}}'}</em></a></li>
        {{/if}}
    {{/foreach}}
    </ul>
    {{/if}}
    <div {{if $useTabs}}class="yui-content"{{/if}}>

{{assign var='tabIndexVal' value=0}}
{{* Loop through all top level panels first *}}
{{counter name="panelCount" start=-1 print=false assign="panelCount"}}
{{counter name="tabCount" start=-1 print=false assign="tabCount"}}
{{foreach name=section from=$sectionPanels key=label item=panel}}
{{counter name="panelCount" print=false}}
{{capture name=label_upper assign=label_upper}}{{$label|upper}}{{/capture}}
  {{if (isset($tabDefs[$label_upper].newTab) && $tabDefs[$label_upper].newTab == true)}}
    {{counter name="tabCount" print=false}}
    {{if $tabCount != 0}}</div>{{/if}}
    <div id='tabcontent{{$tabCount}}'>
  {{/if}}

{{* Print out the table data *}}
{{if $label == 'DEFAULT'}}
  <div id="detailpanel_{{$smarty.foreach.section.iteration}}" >
{{else}}
  <div id="detailpanel_{{$smarty.foreach.section.iteration}}" class="{$def.templateMeta.panelClass|default:'edit view edit508'}">
{{/if}}

{counter name="panelFieldCount" start=0 print=false assign="panelFieldCount"}
{{* Check to see if the panel variable is an array, if not, we'll attempt an include with type param php *}}
{{* See function.sugar_include.php *}}
{{if !is_array($panel)}}
    {sugar_include type='php' file='{{$panel}}'}
{{else}}

{{* Only show header if it is not default or an int value *}}
{{if !empty($label) && !is_int($label) && $label != 'DEFAULT' && $showSectionPanelsTitles && (!isset($tabDefs[$label_upper].newTab) || (isset($tabDefs[$label_upper].newTab) && $tabDefs[$label_upper].newTab == false)) && $view != "QuickCreate"}}
<h4>&nbsp;&nbsp;
  <a href="javascript:void(0)" class="collapseLink" onclick="collapsePanel({{$smarty.foreach.section.iteration}});">
  <img border="0" id="detailpanel_{{$smarty.foreach.section.iteration}}_img_hide" src="{sugar_getimagepath file="basic_search.gif"}"></a>
  <a href="javascript:void(0)" class="expandLink" onclick="expandPanel({{$smarty.foreach.section.iteration}});">
  <img border="0" id="detailpanel_{{$smarty.foreach.section.iteration}}_img_show" src="{sugar_getimagepath file="advanced_search.gif"}"></a>
  {sugar_translate label='{{$label}}' module='{{$module}}'}
  {{if ( isset($tabDefs[$label_upper].panelDefault) && $tabDefs[$label_upper].panelDefault == "collapsed" && isset($tabDefs[$label_upper].newTab) && $tabDefs[$label_upper].newTab == false) }}
    {{assign var='panelState' value=$tabDefs[$label_upper].panelDefault}}
  {{else}}
    {{assign var='panelState' value="expanded"}}
  {{/if}}
  {{if isset($panelState) && $panelState == 'collapsed'}}
    <script>
      document.getElementById('detailpanel_{{$smarty.foreach.section.iteration}}').className += ' collapsed';
    </script>
    {{else}}
    <script>
      document.getElementById('detailpanel_{{$smarty.foreach.section.iteration}}').className += ' expanded';
    </script>
  {{/if}}
</h4>
 {{/if}}
<input accesskey=""  type="hidden" name="uts_not_collected_c" size="30" maxlength="255" value="NotApplicableInPrescription" title="">
<input type='hidden' name='reg_patient_reg_encounterreg_patient_ida' id='reg_patient_reg_encounterreg_patient_ida' >
<input type='hidden' name='date_last_modified' id='date_last_modified' >
<input type='hidden' name='pcp_name_c' id='pcp_name_c' value='{$provrow.provname}'>
<input  type="hidden" name="pt_active_c" value="0">
<input type="checkbox" style="display:none" id="pt_active_c" name="pt_active_c" value="1"  checked="" >

{{if !empty($label) && !is_int($label) && $label != 'DEFAULT' && $showSectionPanelsTitles && (!isset($tabDefs[$label_upper].newTab) || (isset($tabDefs[$label_upper].newTab) && $tabDefs[$label_upper].newTab == false)) && $view != "QuickCreate"}}
<script type="text/javascript">SUGAR.util.doWhen("typeof initPanel == 'function'", function() {ldelim} initPanel({{$smarty.foreach.section.iteration}}, '{{$panelState}}'); {rdelim}); </script>
{{/if}}

{{/if}}

</div>
{if $panelFieldCount == 0}


{/if}
{{/foreach}}
</div></div>
<script language="javascript">
    var _form_id = '{$form_id}';
    {literal}
    SUGAR.util.doWhen(function(){
        _form_id = (_form_id == '') ? 'EditView' : _form_id;
        return document.getElementById(_form_id) != null;
    }, SUGAR.themes.actionMenu);
    {/literal}
</script>

</form>
{{if $externalJSFile}}
{sugar_include include=$externalJSFile}
{{/if}}

{$set_focus_block}

{{if isset($scriptBlocks)}}
<!-- Begin Meta-Data Javascript -->
{{$scriptBlocks}}
<!-- End Meta-Data Javascript -->
{{/if}}
<script>SUGAR.util.doWhen("document.getElementById('EditView') != null",
        function(){ldelim}SUGAR.util.buildAccessKeyLabels();{rdelim});
</script>
{{if $useTabs}}
{sugar_getscript file="cache/include/javascript/sugar_grp_yui_widgets.js"}
<script type="text/javascript">
var {{$form_name}}_tabs = new YAHOO.widget.TabView("{{$form_name}}_tabs");
{{$form_name}}_tabs.selectTab(0);
</script>
{{/if}}
<script type="text/javascript">
YAHOO.util.Event.onContentReady("{{$form_name}}",
    function () {ldelim} initEditView(document.forms.{{$form_name}}) {rdelim});
//window.setTimeout(, 100);
{{if $module == "Users"}}
window.onbeforeunload = function () {ldelim} return disableOnUnloadEditView(); {rdelim};
{{else}}
window.onbeforeunload = function () {ldelim} return onUnloadEditView(); {rdelim};
{{/if}}
// bug 55468 -- IE is too aggressive with onUnload event
if ($.browser.msie) {ldelim}
$(document).ready(function() {ldelim}
    $(".collapseLink,.expandLink").click(function (e) {ldelim} e.preventDefault(); {rdelim});
  {rdelim});
{rdelim}


</script>


