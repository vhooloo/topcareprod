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
<table width="100%" cellpadding="0" cellspacing="0" border="0" class="edit view panelContainer">
<tr style="outline: 2px solid rgb(171, 195, 215);">
<td style="width:300px;">
Last Rx generated <br/>
<span class="dateTime">
<input class="date_input" autocomplete="off" type="text" name="last_rx_generated_c" id="last_rx_generated_c" value="" title="" tabindex="1" size="10" maxlength="10">
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
<td style="width:300px;">
Last Rx by Whom?<br>
<input type="text" name="last_rx_whom_c" id="last_rx_whom_c" size="22"  tabindex="2" maxlength="20" value="" title="">
</td>
<td style="width:300px;">
Last Rx signed by MD<br>
<span class="dateTime">
<input class="date_input" autocomplete="off" type="text" name="last_rx_signed_md_c" id="last_rx_signed_md_c" value="" title="" tabindex="3" size="11" maxlength="10">
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
<td style="width:300px;">
Last Rx pickup by PT<br>
<span class="dateTime">
<input class="date_input" autocomplete="off" type="text" name="last_rx_pickup_pt_c" tabindex="7" id="last_rx_pickup_pt_c" value="" title=""  size="11" maxlength="10">
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
<td style="width:300px;">
Next Rx Refill <br> 
<span class="dateTime">
<input class="date_input" autocomplete="off" type="text" tabindex="6" name="next_rx_refill_due_c" id="next_rx_refill_due_c" value="" title="" size="11" maxlength="10">
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


</tr>

<tr style="outline: 2px solid rgb(171, 195, 215);">

<td style="width:300px;">
Last PCP visit<br>
<span class="dateTime">
<input class="date_input" autocomplete="off" type="text" name="last_pcp_visit_c" id="last_pcp_visit_c" value="" title="" tabindex="5" size="10" maxlength="10">
<img src="themes/Sugar5/images/jscalendar.gif?v=GogGz9QEok1-e0Ft6rexxQ" alt="Enter Date" style="position:relative; top:6px" border="0" id="last_pcp_visit_c_trigger">
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

<td style="width:300px;">
Last Pain Nurse visit<br>
<span class="dateTime">
<input class="date_input" autocomplete="off" type="text" name="last_pain_nurse_visit_c" id="last_pain_nurse_visit_c" tabindex="4" value="" title="" tabindex="0" size="11" maxlength="10">
<img src="themes/Sugar5/images/jscalendar.gif?v=GogGz9QEok1-e0Ft6rexxQ" alt="Enter Date" style="position:relative; top:6px" border="0" id="last_pain_nurse_visit_c_trigger">
</span>
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
<td style="width:300px;">
Last Nurse phone contact <br> 
<span class="dateTime">
<input class="date_input" autocomplete="off" type="text" name="last_nurse_phone_contact_c" id="last_nurse_phone_contact_c" value="" title="" tabindex="0" size="11" maxlength="10">
<img src="themes/Sugar5/images/jscalendar.gif?v=GogGz9QEok1-e0Ft6rexxQ" alt="Enter Date" style="position:relative;  top:6px" border="0" id="last_nurse_phone_contact_c_trigger">
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
<td style="width:300px;">
Next PCP visit <br> 
<span class="dateTime">
<input class="date_input" autocomplete="off" type="text" name="next_pcp_visit_c" id="next_pcp_visit_c" value="" title="" tabindex="0" size="11" maxlength="10">
<img src="themes/Sugar5/images/jscalendar.gif?v=GogGz9QEok1-e0Ft6rexxQ" alt="Enter Date" style="position:relative; top:6px" border="0" id="next_pcp_visit_c_trigger">
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


<tr style="outline: 2px solid rgb(171, 195, 215);">
<td width="300px">

Next appointment for pain <br>(Pain Clinic)<br>
<span class="dateTime">
<input class="date_input" autocomplete="off" type="text" name="nxt_appt_pain_c" id="nxt_appt_pain_c" value="" title="" tabindex="0" size="10" maxlength="10">
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

<td width="300px">
Next appointment for pain <br>(Physical Therapy)<br>
<span class="dateTime">
<input class="date_input" autocomplete="off" type="text" name="nxt_appt_phy_c" id="nxt_appt_phy_c" value="" title="" tabindex="0" size="11" maxlength="10">
<img src="themes/Sugar5/images/jscalendar.gif?v=GogGz9QEok1-e0Ft6rexxQ" alt="Enter Date" style="position:relative; top:6px" border="0" id="nxt_appt_phy_c_trigger">
</span>
{literal}
<script type="text/javascript">
Calendar.setup ({
inputField : "nxt_appt_phy_c",
ifFormat : "%m/%d/%Y %I:%M%P",
daFormat : "%m/%d/%Y %I:%M%P",
button : "nxt_appt_phy_c_trigger",
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
<td width="300px" >
Next appointment for pain <br>(Behavioral Health)<br>  
<span class="dateTime">
<input class="date_input" autocomplete="off" type="text" name="nxt_appt_behav_c" id="nxt_appt_behav_c" value="" title="" tabindex="0" size="11" maxlength="10">
<img src="themes/Sugar5/images/jscalendar.gif?v=GogGz9QEok1-e0Ft6rexxQ" alt="Enter Date" style="position:relative;  top:6px" border="0" id="nxt_appt_behav_c_trigger">
</span>
{literal}
<script type="text/javascript">
Calendar.setup ({
inputField : "nxt_appt_behav_c",
ifFormat : "%m/%d/%Y %I:%M%P",
daFormat : "%m/%d/%Y %I:%M%P",
button : "nxt_appt_behav_c_trigger",
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

<td width="300px">
Next appointment for pain <br>(Others) Describe <br> 
<input type="text" name="next_appt_other_c" id="next_appt_other_c" size="22" maxlength="20" value="" title="">
</td></tr>




<tr style="outline: 2px solid rgb(171, 195, 215);">

<td style="width:300px;">
Narcotic contract signed<br>
<span class="dateTime">
<input class="date_input" autocomplete="off" type="text" name="narcotic_contract_sign_c" id="narcotic_contract_sign_c" value="" title="" tabindex="0" size="10" maxlength="10">
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
</td>

<td style="width:300px;">
Narcotic contract in chart<br/>
<input type="hidden" name="narcotic_contract_in_chart_c" value="0">
<input type="checkbox" id="narcotic_contract_in_chart_c" name="narcotic_contract_in_chart_c" value="1" title="" tabindex="0"  >

</td>
<td style="width:300px;">
Patient confirms storing medications safely<input type="hidden" name="pt_confirms_storing_c" value="0">
<input type="checkbox" id="pt_confirms_storing_c" name="pt_confirms_storing_c" value="1" title="" tabindex="0"  >
</td>
<td style="width:300px;" colspan="2">
Patient confirms taking <br/>medications as prescribed
&nbsp;<input type="hidden" name="pt_confirms_taking_c" value="0">
<input type="checkbox" id="pt_confirms_taking_c" name="pt_confirms_taking_c" value="1" title="" tabindex="0"  >

</td></tr>





<tr style="outline: 2px solid rgb(171, 195, 215);">

<td style="width:300px;">
<h3>Pills in bottle : </h3>
(Dispensed) 
<input type="text" name="pills_bottle_disp_c" id="pills_bottle_disp_c" size="4" maxlength="4" value="" title="">
</td>

<td style="width:300px;">
Last UTS <br>
<span class="dateTime">
<input class="date_input" autocomplete="off" type="text" name="last_uts_c" id="last_uts_c" value="" title="" tabindex="0" size="10" maxlength="10">
<img src="themes/Sugar5/images/jscalendar.gif?v=GogGz9QEok1-e0Ft6rexxQ" alt="Enter Date" style="position:relative; top:6px" border="0" id="last_uts_c_trigger">
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

<td style="width:300px;">
Next UTS due<br>
<span class="dateTime">
<input class="date_input" autocomplete="off" type="text" name="next_uts_due_c" id="next_uts_due_c" value="" title="" tabindex="0" size="10" maxlength="10">
<img src="themes/Sugar5/images/jscalendar.gif?v=GogGz9QEok1-e0Ft6rexxQ" alt="Enter Date" style="position:relative; top:6px" border="0" id="next_uts_due_c_trigger">
</span>
{literal}
<script type="text/javascript">
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
</script>
{/literal}
</td>

<td width="300px">
Alternative Therapies to address pain?<input type="hidden" name="alternative_therapy_c" value="0">
<input type="checkbox" id="alternative_therapy_c" name="alternative_therapy_c" value="1" title="" tabindex="0"  onclick="toggle_description(this.checked)">
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
			
			}
}
</script>
{/literal}
</td>
</tr>
<tr id="description_row" style="display:none;">
<td width="300px"></td>
<td  width="300px" colspan="4"><br>
Describe Alternative therapies
<textarea  name="alternative_therapy_des_c" id="alternative_therapy_des_c" rows="3" cols="90" maxlength="500" ></textarea>
</td></tr>


<tr style="outline: 2px solid rgb(171, 195, 215);">
<td colspan="5" width="300px">
<table>
<tr><td width="300px" colspan = "2" scope="col">History</td><td  width="300px" colspan = "3" scope="col">Assessment/Plan</td>
</tr>
<tr><td>
<textarea  name="history_c" id="history_c" rows="5" cols="80" maxlength="2000" ></textarea>
</td>
<td colspan="5" width="300px" scope="col"> 
<textarea  name="assessment_summary_c" id="assessment_summary_c" rows="5" cols="80" maxlength="2000" ></textarea>
</td>
</tr>
</table>
</td>
</tr>





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
<table width="100%" border="0" cellspacing="1" cellpadding="0" {{if $label == 'DEFAULT'}} id='Default_{$module}_Subpanel' {{else}} id='{{$label}}' {{/if}} class="edit view panelContainer">


{{assign var='rowCount' value=0}}
{{assign var='ACCKEY' value=''}}
{{foreach name=rowIteration from=$panel key=row item=rowData}}
{{if $rowCount<1}}
{counter name="fieldsUsed" start=0 print=false assign="fieldsUsed"}
{capture name="tr" assign="tableRow"}
<tr>

	{{math assign="rowCount" equation="$rowCount + 1"}}
	
	{{assign var='columnsInRow' value=$rowData|@count}}
	{{assign var='columnsUsed' value=0}}

    {{* Loop through each column and display *}}
    {{counter name="colCount" start=0 print=false assign="colCount"}}

	{{foreach name=colIteration from=$rowData key=col item=colData}}

	{{counter name="colCount" print=false}}

	{{if count($rowData) == $colCount}}
		{{assign var="colCount" value=0}}
	{{/if}}

    {{if !empty($colData.field.hideIf)}}
    	{if !({{$colData.field.hideIf}}) }
    {{/if}}

		{{if empty($def.templateMeta.labelsOnTop) && empty($colData.field.hideLabel)}}
		<td valign="top" id='{{$colData.field.name}}_label' width='{{$def.templateMeta.widths[$smarty.foreach.colIteration.index].label}}%' scope="col">
			{{if isset($colData.field.customLabel)}}
			   <label for="{{$fields[$colData.field.name].name}}">{{$colData.field.customLabel}}</label>
			{{elseif isset($colData.field.label)}}
			   {capture name="label" assign="label"}{sugar_translate label='{{$colData.field.label}}' module='{{$module}}'}{/capture}
			   {$label|strip_semicolon}:
			{{elseif isset($fields[$colData.field.name])}}
			   {capture name="label" assign="label"}{sugar_translate label='{{$fields[$colData.field.name].vname}}' module='{{$module}}'}{/capture}
			   {$label|strip_semicolon}:
			{{else}}
			    &nbsp;
			{{/if}}
			{{* Show the required symbol if field is required, but override not set.  Or show if override is set *}}
				{{if ($fields[$colData.field.name].required && (!isset($colData.field.displayParams.required) || $colData.field.displayParams.required)) ||
				     (isset($colData.field.displayParams.required) && $colData.field.displayParams.required)}}
			    <span class="required">{{$APP.LBL_REQUIRED_SYMBOL}}</span>
			{{/if}}
            {{if isset($colData.field.popupHelp) || isset($fields[$colData.field.name]) && isset($fields[$colData.field.name].popupHelp) }}
              {{if isset($colData.field.popupHelp) }}
                {capture name="popupText" assign="popupText"}{sugar_translate label="{{$colData.field.popupHelp}}" module='{{$module}}'}{/capture}
              {{elseif isset($fields[$colData.field.name].popupHelp)}}
                {capture name="popupText" assign="popupText"}{sugar_translate label="{{$fields[$colData.field.name].popupHelp}}" module='{{$module}}'}{/capture}
              {{/if}}
              {sugar_help text=$popupText WIDTH=-1}
            {{/if}}

		</td>
		{{/if}}
		{counter name="fieldsUsed"}
		{{math assign="tabIndexVal" equation="$tabIndexVal + 1"}}
		{{if $tabIndexVal==1}} {{assign var='ACCKEY' value=$APP.LBL_FIRST_INPUT_EDIT_VIEW_KEY}}{{else}}{{assign var='ACCKEY' value=''}}{{/if}}
		{{if !empty($colData.field.tabindex)  && $colData.field.tabindex !=0}}
		    {{assign var='tabindex' value=$colData.field.tabindex}}
            {{** instead of tracking tabindex values for all fields, just track for email as email does not get created directly from
                a tpl that has access to smarty values.  Email gets created through addEmailAddress() function in SugarEmailAddress.js
                which will use the value in tabFields array
             **}}
            {{if $colData.field.name == 'email1'}}<script>SUGAR.TabFields['{{$colData.field.name}}'] = '{{$tabindex}}';</script>{{/if}}
		{{else}}
		    {** if not explicitly assigned, we will default to 0 for 508 compliance reasons, instead of the calculated tabIndexVal value **}
		    {{assign var='tabindex' value=0}}
		{{/if}}
		<td valign="top" width='{{$def.templateMeta.widths[$smarty.foreach.colIteration.index].field}}%' {{if $colData.colspan}}colspan='{{$colData.colspan}}'{{/if}}>
			{{if !empty($def.templateMeta.labelsOnTop)}}
				{{if isset($colData.field.label)}}
				    {{if !empty($colData.field.label)}}
			   		    <label for="{{$fields[$colData.field.name].name}}">{sugar_translate label='{{$colData.field.label}}' module='{{$module}}'}:</label>
				    {{/if}}
				{{elseif isset($fields[$colData.field.name])}}
			  		<label for="{{$fields[$colData.field.name].name}}">{sugar_translate label='{{$fields[$colData.field.name].vname}}' module='{{$module}}'}:</label>
				{{/if}}

				{{* Show the required symbol if field is required, but override not set.  Or show if override is set *}}
				{{if ($fields[$colData.field.name].required && (!isset($colData.field.displayParams.required) || $colData.field.displayParams.required)) ||
				     (isset($colData.field.displayParams.required) && $colData.field.displayParams.required)}}
				    <span class="required" title="{{$APP.LBL_REQUIRED_TITLE}}">{{$APP.LBL_REQUIRED_SYMBOL}}</span>
				{{/if}}
				{{if !isset($colData.field.label) || !empty($colData.field.label)}}
				<br>
				{{/if}}
			{{/if}}

		{{$colData.field.prefix}}

			{{if $fields[$colData.field.name] && !empty($colData.field.fields) }}
			    {{foreach from=$colData.field.fields item=subField}}
			        {{if $fields[$subField.name]}}
			        	{counter name="panelFieldCount"}
			            {{sugar_field parentFieldArray='fields'  accesskey=$ACCKEY tabindex=$tabindex vardef=$fields[$subField.name] displayType='EditView' displayParams=$subField.displayParams formName=$form_name}}&nbsp;
			        {{/if}}
			    {{/foreach}}
			{{elseif !empty($colData.field.customCode) && empty($colData.field.customCodeRenderField)}}
				{counter name="panelFieldCount"}
				{{sugar_evalcolumn var=$colData.field.customCode colData=$colData  accesskey=$ACCKEY tabindex=$tabindex}}
			{{elseif $fields[$colData.field.name]}}
				{counter name="panelFieldCount"}
			    {{$colData.displayParams}}
				{{sugar_field parentFieldArray='fields'  accesskey=$ACCKEY tabindex=$tabindex vardef=$fields[$colData.field.name] displayType='EditView' displayParams=$colData.field.displayParams typeOverride=$colData.field.type formName=$form_name}}
			{{/if}}
	{{if !empty($colData.field.customCode) && !empty($colData.field.customCodeRenderField)}}
	    {counter name="panelFieldCount"}
	    {{sugar_evalcolumn var=$colData.field.customCode colData=$colData tabindex=$tabindex}}
    {{/if}}
    {{if !empty($colData.field.hideIf)}}
		{else}
		<td></td><td></td>
		{/if}
    {{/if}}

	{{/foreach}}
</tr>
{/capture}

{if $fieldsUsed > 0 }
{$tableRow}
{/if}
{{else}}


{{/if}}
{{/foreach}}

<!--Add Code here to modify table -->

</td><td></td></tr></table>
<input accesskey="" tabindex="0" type="hidden" name="uts_not_collected_c" size="30" maxlength="255" value="NotApplicableInPrescription" title="">
<input type='hidden' name='reg_patient_reg_encounterreg_patient_ida' id='reg_patient_reg_encounterreg_patient_ida' >

{{if !empty($label) && !is_int($label) && $label != 'DEFAULT' && $showSectionPanelsTitles && (!isset($tabDefs[$label_upper].newTab) || (isset($tabDefs[$label_upper].newTab) && $tabDefs[$label_upper].newTab == false)) && $view != "QuickCreate"}}
<script type="text/javascript">SUGAR.util.doWhen("typeof initPanel == 'function'", function() {ldelim} initPanel({{$smarty.foreach.section.iteration}}, '{{$panelState}}'); {rdelim}); </script>
{{/if}}

{{/if}}

</div>
{if $panelFieldCount == 0}

<script>document.getElementById("{{$label}}").style.display='none';</script>
{/if}
{{/foreach}}
</div></div>
{{include file=$footerTpl}}
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
