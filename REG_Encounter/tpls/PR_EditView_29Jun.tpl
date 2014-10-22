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
    {/literal}
</script>
<div class="clear"></div>
<form action="index.php" method="POST" name="{$form_name}" id="{$form_id}" {$enctype}>
<table style="border-color: rgb( 100, 100, 255); border-style: solid none none none ; border-collapse:collapse; margin-top: 0;vertical-align: top;" width="100%" cellpadding="0" cellspacing="0" border="0" class="edit view panelContainer">

<tr >

<td style="width:50%;border-color: rgb( 100, 100, 255); border-style: solid solid solid none; border-width: 2px; margin-top: 0;vertical-align: top;" colspan="3" >
<table >
<tr>
<td width:100% colspan="3" scope="col">History<br>
<textarea autofocus  tabindex="1" name="history_c" id="history_c" rows="5" cols="100" maxlength="2000" ></textarea>
</td>
</tr>
<tr>
<td  width="100%" colspan="3" scope="col"> 
Assessment/Plan
<textarea tabindex="2" name="assessment_summary_c" id="assessment_summary_c" rows="5" cols="100" maxlength="2000" ></textarea>
</td>
</tr>
<tr>
<td style="width:33.3%;">
Days<br>
Dispensed<input type="text" tabindex="3"  name="pills_bottle_disp_c" id="pills_bottle_disp_c" size="4" maxlength="4" value="" title="">
</td>
<td style="width:33.3%;">
Next Rx Refill <br> 
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
<input class="date_input" autocomplete="off" tabindex="4" type="text" name="next_rx_refill_due_c" onchange='check_date(this);' id="next_rx_refill_due_c" value="" title="" size="11" maxlength="10">
<img src="themes/Sugar5/images/jscalendar.gif?v=GogGz9QEok1-e0Ft6rexxQ" alt="Enter Date" style="position:relative; top:6px" border="0" id="next_rx_refill_due_c_trigger">
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
<td style="width:33.3%;">
Next UTS due <br>
<span class="dateTime">
<input class="date_input" autocomplete="off" tabindex="5" type="text" onchange='check_date(this);' name="next_uts_due_c" id="next_uts_due_c" value="" title="" size="11" maxlength="10">
<img src="themes/Sugar5/images/jscalendar.gif?v=GogGz9QEok1-e0Ft6rexxQ" alt="Enter Date" style="position:relative; top:6px" border="0" id="next_uts_due_c_trigger">
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
</td></tr>

<tr><td width="33.3%">
Alternate Therapies to<br>address pain?<input type="hidden" name="alternative_therapy_c" value="0">
<input type="checkbox" tabindex="7" id="alternative_therapy_c" name="alternative_therapy_c" value="1" title=""  onclick="toggle_description(this.checked)">
{literal}
<script type="text/javascript">
function toggle_description(a){
			if(!a)
			{
			document.getElementById('alternative_therapy_des_c').value='';
			document.getElementById('description_row').style.display="none";
			}
			else{			
			document.getElementById('description_row').style.display="table-row";
			document.EditView.alternative_therapy_des_c.focus();
			}
}
</script>
{/literal}
</td>

<td  style="width:66.6%"  colspan="2">
<span id="description_row" style="width:80px;display:none;" >
Describe Alternative therapies
<textarea  tabindex="8" name="alternative_therapy_des_c" id="alternative_therapy_des_c" rows="3" cols="63" maxlength="500" ></textarea>
</span>
</td></tr>
</table >
<br>
<table style="width:100%;border-color: rgb( 100, 100, 255); border-style: solid none none none; border-width: 2px; margin-top: 0;vertical-align: top;">
<tr >
<td  style="width:33.3%;">
Patient Present   <input  valign="bottom" accesskey=""  type="hidden" name="patient_present_c" value="0"><input tabindex="10"  type="checkbox" id="patient_present_c" name="patient_present_c" value="1" title="" checked="" onclick="toggle_entryfields(this.checked)">
</td>

<td  width="66.6%" >Encounter Summary <input type="text"  tabindex="11" name="summary" id="summary" size="22" maxlength="255" value="" title=""  onblur="set_session(this.id,this.value);">
</td></tr>
</table >

<br><br>
{{sugar_button module="$module" id="SAVE" view="$view" form_id="$form_id" location="HEADER" appendTo="header_buttons"}}
{{sugar_button module="$module" id="CANCEL" view="$view" form_id="$form_id" location="HEADER" appendTo="header_buttons"}}

{{sugar_action_menu buttons=$header_buttons class="fancymenu" flat=true}}
</td>

<td style="width:50%;border-color: rgb( 100, 100, 255); border-style: solid none solid solid;border-width: 2px; margin-top: 0;vertical-align: top;">
<table style="width:100%;border-collapse:collapse;">

<tr >
<td style="width:33.3%;border-color: rgb( 100, 100, 255); border-style: none solid solid none;border-width: 2px;margin-top: 0;vertical-align: top;" >
<h3>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Refill Data</h3>
</td>
<td style="width:33.3%;border-color: rgb( 100, 100, 255); border-style: none solid solid none;border-width: 2px;margin-top: 0;vertical-align: top;" >
<h3>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Primary Care</h3>
</td>
<td style="width:33.3%;border-color: rgb( 100, 100, 255); border-style: none none solid none;border-width: 2px;margin-top: 0;vertical-align: top;" >
<h3>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Pain Management</h3>
</td>
</tr>
<tr>
<td style="width:33.3%;border-color: rgb( 100, 100, 255); border-style: none solid none none;border-width: 2px;margin-top: 0;vertical-align: top;" ><br/>
&nbsp;Last Rx generated <br/>
<span class="dateTime">
<input class="date_input" tabindex="12" autocomplete="off" type="text" name="last_rx_generated_c" id="last_rx_generated_c" value="" title=""  size="10" maxlength="10">
<img src="themes/Sugar5/images/jscalendar.gif?v=GogGz9QEok1-e0Ft6rexxQ" alt="Enter Date" style="position:relative; top:6px" border="0" id="last_rx_generated_c_trigger">
</span>
{literal}
<script type="text/javascript">
Calendar.setup ({
inputField : "last_rx_generated_c",
ifFormat : "%m/%d/%Y %I:%M%P",
daFormat : "%m/%d/%Y %I:%M%P",
button : "last_rx_generated_c_trigger",
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
<td style="width:33.3%;border-color: rgb( 100, 100, 255); border-style: none solid none none;border-width: 2px;margin-top: 0;margin-left: 5px;vertical-align: top;"><br/>
&nbsp;Last PCP visit<br>
<span class="dateTime"><pre style="margin-top:0; margin-bottom:0;">
<input class="date_input" tabindex="16" autocomplete="off" type="text" name="last_pcp_visit_c" id="last_pcp_visit_c" value="" title=""  size="11" maxlength="10">&thinsp;<img src="themes/Sugar5/images/jscalendar.gif?v=GogGz9QEok1-e0Ft6rexxQ" alt="Enter Date" style="position:relative; top:6px" border="0" id="last_pcp_visit_c_trigger"> </pre>
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
</td>
<td >

&nbsp;Next appointment for pain <br>&nbsp;(Pain Clinic)<br>
<span class="dateTime">
<input class="date_input" tabindex="20" autocomplete="off" type="text" name="nxt_appt_pain_c" id="nxt_appt_pain_c" onchange='check_date(this);' value="" title=""  size="10" maxlength="10">
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

<tr>
<td style="width:33.3%;border-color: rgb( 100, 100, 255); border-style: none solid none none;border-width: 2px;margin-top: 0;vertical-align: top;"><br><br/>
&nbsp;Last Rx by Whom?<br>
<input type="text" tabindex="13" name="last_rx_whom_c" id="last_rx_whom_c" size="22"   maxlength="20" value="" title="">
</td>
<td style="width:33.3%;border-color: rgb( 100, 100, 255); border-style: none solid none none;border-width: 2px;margin-top: 0;vertical-align: top;"><br/>
&nbsp;Last Pain <br>&nbsp;Nurse visit<span class="dateTime"><pre style="margin-top:0; margin-bottom:0;">
<input class="date_input" tabindex="17" autocomplete="off" type="text" name="last_pain_nurse_visit_c" id="last_pain_nurse_visit_c"  value="" title=""  size="11" maxlength="10">&thinsp;<img src="themes/Sugar5/images/jscalendar.gif?v=GogGz9QEok1-e0Ft6rexxQ" alt="Enter Date" style="position:relative; top:6px" border="0" id="last_pain_nurse_visit_c_trigger"> </pre></span>
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

<td ><br>
&nbsp;Next appointment for pain <br>&nbsp;(Physical Therapy)<br>
<select name="pretty" id="pretty" tabindex="" class="ui-selectmenu-menu">
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
<input class="date_input" tabindex="21" autocomplete="off" type="text" name="pretty_date" id="pretty_date" readonly onchange='check_date(this);' value="" title=""  size="11" maxlength="10">
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
<input title="Add" accesskey="a" class="button" onclick="add_date_to_list()" type="button" name="button" value="Add" id="Add_button">
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
<td style="width:33.3%;border-color: rgb( 100, 100, 255); border-style: none solid none none;border-width: 2px;margin-top: 0;vertical-align: top;"><br><br/>
&nbsp;Last Rx signed by MD<br>
<span class="dateTime">
<input class="date_input" tabindex="14" autocomplete="off" type="text" name="last_rx_signed_md_c" id="last_rx_signed_md_c" value="" title=""  size="11" maxlength="10">
<img src="themes/Sugar5/images/jscalendar.gif?v=GogGz9QEok1-e0Ft6rexxQ" alt="Enter Date" style="position:relative; top:6px" border="0" id="last_rx_signed_md_c_trigger">
</span>
{literal}
<script type="text/javascript">
Calendar.setup ({
inputField : "last_rx_signed_md_c",
ifFormat : "%m/%d/%Y %I:%M%P",
daFormat : "%m/%d/%Y %I:%M%P",
button : "last_rx_signed_md_c_trigger",
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
<td style="width:33.3%;border-color: rgb( 100, 100, 255); border-style: none solid none none;border-width: 2px;margin-top: 0;vertical-align: top;"><br>
&nbsp;Last Nurse <br/>&nbsp;phone contact <br>
<span class="dateTime"><pre style="margin-top:0; margin-bottom:0;">
<input class="date_input" tabindex="18" autocomplete="off" type="text" name="last_nurse_phone_contact_c" id="last_nurse_phone_contact_c" value="" title=""  size="11" maxlength="10">&thinsp;<img src="themes/Sugar5/images/jscalendar.gif?v=GogGz9QEok1-e0Ft6rexxQ" alt="Enter Date" style="position:relative;  top:6px" border="0" id="last_nurse_phone_contact_c_trigger"></pre>
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
<td style="width:33.3%;border-color: rgb( 100, 100, 255); border-style: none solid none none;border-width: 2px;margin-top: 0;vertical-align: top;"><br><br/>
&nbsp;Last Rx pickup by PT<br>
<span class="dateTime">
<input class="date_input" tabindex="15" autocomplete="off" type="text" name="last_rx_pickup_pt_c"  id="last_rx_pickup_pt_c" value="" title=""  size="11" maxlength="10">
<img src="themes/Sugar5/images/jscalendar.gif?v=GogGz9QEok1-e0Ft6rexxQ" alt="Enter Date" style="position:relative;  top:6px" border="0" id="last_rx_pickup_pt_c_trigger">
</span>
{literal}
<script type="text/javascript">
Calendar.setup ({
inputField : "last_rx_pickup_pt_c",
ifFormat : "%m/%d/%Y %I:%M%P",
daFormat : "%m/%d/%Y %I:%M%P",
button : "last_rx_pickup_pt_c_trigger",
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
<td style="width:33.3%;border-color: rgb( 100, 100, 255); border-style: none solid none none;border-width: 2px;margin-top: 0;vertical-align: top;"><br><br/>
&nbsp;Next PCP visit <br>
<span class="dateTime"><pre style="margin-top:0; margin-bottom:0;">
<input class="date_input" tabindex="19" autocomplete="off" type="text" name="next_pcp_visit_c" id="next_pcp_visit_c" onchange='check_date(this);' value="" title=""  size="11" maxlength="10">&thinsp;<img src="themes/Sugar5/images/jscalendar.gif?v=GogGz9QEok1-e0Ft6rexxQ" alt="Enter Date" style="position:relative; top:6px" border="0" id="next_pcp_visit_c_trigger"></pre>
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
</tr>

</table>
<table style="width:100%;border-color: rgb( 100, 100, 255); border-style: solid none none none; border-width: 2px; margin-top: 0;vertical-align: top;">
<tr>
<td><h3><span style="text-align:centre;" >Contract</span></h3></td>
</tr>

<tr><td>
<br>
<input type="hidden" name="pt_confirms_taking_c" value="0">
<input type="checkbox" tabindex="24" id="pt_confirms_taking_c" name="pt_confirms_taking_c" value="1" title=""   > Patient confirms taking medications as prescribed
</td></tr>


<tr><td>
<input type="hidden" name="narcotic_contract_in_chart_c" value="0"><input type="checkbox" tabindex="25" id="narcotic_contract_in_chart_c" name="narcotic_contract_in_chart_c" value="1" title=""   > <span> Narcotic contract in chart & contract signed on </span><span class="dateTime"> <input tabindex="26" class="date_input" autocomplete="off" type="text" name="narcotic_contract_sign_c" id="narcotic_contract_sign_c"   value="" title=""  size="10" maxlength="10">
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

<tr><td>
<input type="hidden" name="pt_confirms_storing_c" value="0"><input type="checkbox" tabindex="27" id="pt_confirms_storing_c" name="pt_confirms_storing_c"  value="1" title=""   > Patient confirms storing medications safely
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
