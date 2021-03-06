
{literal}
 <style type="text/css">
body{font-family:Verdana,Arial,sans-serif !important}
table.view { border-collapse:collapse; }
table.view td, table.view th { font-size:100%; } 
table.list th div {  font-size: 10px; }
table.view tr:nth-of-type(odd) {  background-color: #def;}
.dateTime{vertical-align:top !important; margin:0 !important; padding:0 !important}
</style>
{/literal} 
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
	
	var daysdispensed="";
	if(daysdispensed==""){
	daysdispensed= "Information Not Available"
	} else
	appendTxt =appendTxt + "Days of refill dispensed: " +daysdispensed+"\r\n";
	
	
		
	var nextRx = document.getElementById('next_rx_refill_due_c').value;
	if(nextRx==""){
	nextRx= "Information Not Available"
	} else
	appendTxt =appendTxt + "Next Rx refill: " +nextRx+"\r\n";
	
	var nextPMP = document.getElementById('next_pmp_review_due_c').value;
	if(nextPMP==""){
	nextPMP= "Information Not Available";
	}else
	appendTxt =appendTxt + "PMP review: " +nextPMP+"\r\n";
	
	var nextPILL = document.getElementById('next_pill_ct_c').value;
	if(nextPILL==""){
	nextPILL= "Information Not Available";
	}else
	appendTxt =appendTxt + "Pill Count: " +nextPILL+"\r\n";
	
	 appendTxt=appendTxt+"\r\n"+"Safety Review "+"\r\n";
	 
	var risklevel = document.getElementById('risklvl_c').value;
	
	if(risklevel=="" || risklevel=="N/A"){
		risklevel= "Undetermined";
	} 
	appendTxt =appendTxt + "Risk Level: " +risklevel.toUpperCase()+"\r\n";
	
	var aberrantBehavior="";
	if ( document.getElementById('abck1').checked ) { aberrantBehavior +=document.getElementById('abtxt1').value; aberrantBehavior += ", ";}
		if ( document.getElementById('abck2').checked ) { aberrantBehavior +=document.getElementById('abtxt2').value;  aberrantBehavior += ", ";}
		if ( document.getElementById('abck3').checked ) { aberrantBehavior +=document.getElementById('abtxt3').value;  aberrantBehavior += ", ";}
		if ( document.getElementById('abck4').checked ) { aberrantBehavior +=document.getElementById('abtxt4').value;  aberrantBehavior += ", ";}
		if ( document.getElementById('abck5').checked ) { aberrantBehavior +=document.getElementById('abtxt5').value;  aberrantBehavior += ", ";}
		if ( document.getElementById('abck6').checked ) { aberrantBehavior +=document.getElementById('abtxt6').value;  aberrantBehavior += ", ";}
		if ( document.getElementById('abck7').checked ) { aberrantBehavior +=document.getElementById('abtxt7').value;  }
	
	
	if (aberrantBehavior != "" ) {
		appendTxt = appendTxt +"\r\n"+ "Aberrant behavior noted:"+"\r\n" + aberrantBehavior;
	}
		
	if(document.getElementById('narcotic_contract_in_chart_c').checked){
	appendTxt=appendTxt+"\r\n"+"Contract "+"\r\n";	
	var signeddate = document.getElementById('narcotic_contract_sign_c').value;
	if(signeddate==""){
	signeddate= "Information Not Available";
	}
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
	
	//new code for risk update 06/05/14
	$(window).focus(function() {
	
	var xmlhttp;
	if (window.XMLHttpRequest)
	  {// code for IE7+, Firefox, Chrome, Opera, Safari
	  xmlhttp=new XMLHttpRequest();
	  }
	else
	  {// code for IE6, IE5
	  xmlhttp=new ActiveXObject("Microsoft.XMLHTTP");
	  }
	xmlhttp.onreadystatechange=function()
	  {
	  if (xmlhttp.readyState==4 && xmlhttp.status==200)
		{
			document.getElementById("risklvl_c").value= xmlhttp.responseText; 
			//alert(xmlhttp.responseText);
		}
	  }
	
	{/literal} //alert("here {$smarty.request.record}" );
	xmlhttp.open("GET","index.php?entryPoint=getriskajax&patid={$smarty.request.record}",true);{literal}
	xmlhttp.send();
	
	});
	
</script> 


{/literal}	

    
	<script type="text/javascript" src="custom/topcarejs/jquery-sticky-notes/script/jquery.stickynotes.js?version=5"></script>
	<link rel="stylesheet" href="custom/topcarejs/jquery-sticky-notes/css/jquery.stickynotes.css?version=5" type="text/css">
	<!-- Latest compiled and minified CSS -->
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.0/css/bootstrap.min.css">
	<!-- Optional theme -->
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.0/css/bootstrap-theme.min.css">
	<!-- Latest compiled and minified JavaScript -->
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.0/js/bootstrap.min.js"></script>

	<div class="clear"></div>
<form action="index.php" method="POST" name="{$form_name}" id="{$form_id}" {$enctype}>
 <table id="notes" style="border-color: rgb( 100, 100, 255); border-style: solid none none none ; border-collapse:collapse; margin-top: 0;vertical-align: top;" width="100%" cellpadding="0" cellspacing="0" border="0" class="edit view panelContainer">
   <tr >
  
  <td style="width:100%;border-color: rgb( 100, 100, 255); border-style: solid solid solid solid; border-width: 2px; margin-top: 0;vertical-align: top;" colspan="3" ><table width="100%" style="width:100%;border-color: rgb( 100, 100, 255); border-style:  none none solid none; border-width: 2px; margin-top: 0;vertical-align: top;">
    <tr > {assign var=pro_summary value=":"|explode:$datarow.summary}
     <td  width="66.6%" >Encounter Summary
      <input type="text"  tabindex="04" name="summary" id="summary" size="22" maxlength="255" value="{if ($encountype == "refill") } Refill {/if}" title=""  onblur="set_session(this.id,this.value);"></td>
     <td  style="width:33.3%;"> Patient Present
      <input  valign="bottom" accesskey=""  type="hidden" name="patient_present_c" value="0">
      <input tabindex="08"  type="checkbox" id="patient_present_c" name="patient_present_c" {if ( $datarow.patient_present_c > 0 )} checked="checked" {/if} value="1" title="" ></td>
    </tr>
   </table >
         <!-- style="display:none;" -->
         <textarea tabindex="999" name="stickynotes_history_c" id="stickynotes_history_c" rows="8"  style="display:none;" maxlength="20000">{$datarow.stickynotes_history_c}</textarea>
   <table width="100%" >
    <tr>
	 <td width= "50%"> Notes<br>
      <textarea tabindex="12" name="history_c" id="history_c" rows="11" style="width:95%"  maxlength="20000" >{if  ($notes_flag == "true")} {$datarow.history_c} {/if}</textarea> </td>
	 <td id = "mainsticky-container" width = "50%">
	    <b> {if  ($datarow.pills_bottle_disp_c ne 28)} <img src='custom/themes/default/images/aberrant_behavior.gif'> <span style="white-space: nowrap;"> ALERT DAYS DISPENSED NOT 28 {/if} </span></b> 
	    <div id = "sticky-container" />
	  </td> 	
    </tr>
    
    <!-- only for refill --> 
    
    {if ($encountype == "refill") }
    <tr>
     <td style="width:50%;" ><br/>
      Days Dispensed
      <input type="text" tabindex="16"  name="pills_bottle_disp_c" id="pills_bottle_disp_c" size="4" maxlength="4" value="{$datarow.pills_bottle_disp_c}" title=""></td>
     <td style="width:50%;" ><br/>
      Prescription Refilled Early
      <input  valign="bottom" accesskey=""  type="hidden" name="presc_refill_early_c"  value="0">
      <input tabindex="16"  type="checkbox" id="presc_refill_early_c" name="presc_refill_early_c" { if ( $datarow.presc_refill_early_c gt 0 ) }  checked="checked" {/if} value="1" title=""  ></td>
    </tr>
    {/if} 
    
    <!-- only for refill --> 
    
    <!-- only for encounter --> 
    
    {if ($encountype == "encounter") }
    <tr>
     <td colspan="2" ><br/>
      <input type="checkbox" tabindex="80" id="pt_ben_opioid_c" name="pt_ben_opioid_c" value="1" { if ( $datarow.pt_ben_opioid_c gt 0 ) }  checked="checked" {/if} >&nbsp; Patient Benefits from Opioids </td>
    </tr>
    {/if}
   </table >
   {if $smarty.request.action=='aaa'}
   <table style="width:100%;border-color: rgb( 100, 100, 255); border-style: solid none none none; border-width: 2px; margin-top: 0;vertical-align: top;">
    <tr >
     <td ><h3>Risk Monitoring</h3></td>
     <td><h3>Risk Level</h3></td>
    </tr>
    <tr>
    <tr>
     <td><input type="hidden" name="med_safety_pulm_prob_cx" value="0">
      <input type="checkbox" tabindex="80" id="med_safety_pulm_prob_c" name="med_safety_pulm_prob_c" value="1" title=""   {if ( $datarow.med_safety_pulm_prob_c  >
      0   )}  checked="checked" {/if} >&nbsp; Pulmonary Problems (O<sub>2</sub>DEP, OSA, COPD) </td>
     <td  style="width:100%;"><select name='risklvl_c_old'  id='risklvl_c_old' disabled>
       <option label="NA" value="-1" {if $finalscore eq ""} selected="selected" {/if} >NA</option>
       <option label="LOW" value="0" {if $finalscore eq "0-3"} selected="selected" {/if} >LOW</option>
       <option label="MODERATE" value="5" {if $finalscore eq "4-7"} selected="selected" {/if} >MODERATE</option>
       <option label="HIGH" value="9" {if $finalscore eq "gt7"} selected="selected" {/if} >HIGH </option>
      </select></td>
    </tr>
    <tr>
     <td>&nbsp;<br/>
      <input type="hidden" name="med_safety_sedatives_cx" value="0">
      <input type="checkbox" tabindex="84" id="med_safety_sedatives_c" name="med_safety_sedatives_c" value="1" title=""   {if ( $datarow.med_safety_sedatives_c  >
      0   )} checked="checked" {/if}  > &nbsp;Taking Sedative Meds </td>
     <td>&nbsp;<br/>
      <input type="checkbox" tabindex="84" id="shortacting_c" name="shortacting_c" value="1" title=""   {if ( $datarow.shortacting_c  >
      0   )} checked="checked" {/if}  > &nbsp;Multiple Short Acting Opioids </td>
    </tr>
    <tr>
     <td><img src= "" height="1" width ="1" alt="" vspace="4"/><br/>
      <input type="hidden" name="med_safety_high_medd_cx" value="0">
      <input type="checkbox" tabindex="88" id="med_safety_high_medd_c" name="med_safety_high_medd_c"  value="1" title=""    {if ( $datarow.med_safety_high_medd_c  >
      0   )} checked="checked" {/if}  > &nbsp;(>50) MEDD </td>
     <td>&nbsp;<br/>
      <input type="checkbox" tabindex="84" id="longacting_c" name="longacting_c" value="1" title=""   {if ( $datarow.longacting_c  >
      0   )} checked="checked" {/if}  > &nbsp;Multiple Long Acting Opioids </td>
    </tr>
     </tr>
    
   </table >
   {/if}
   <table style="width:100%;border-color: rgb( 100, 100, 255); border-style: solid none none none; border-width: 2px; margin-top: 0;vertical-align: top;">
    <tr>
     <td width="48%"> <strong>Aberrant Behaviors Noted:</strong> <br>
 	  
	  	  {if  ($notes_flag != "true")}  
				   <div class="row">
			  <div class="col-md-8">
				<div class="input-group">
				  <span class="input-group-addon">
					<input type="checkbox" id = "abck1" onclick="highlight(this,'abtxt1');">
				  </span>
				  <input type="text" class="form-control input-sm" id= "abtxt1" value = "Refuse Pill Count" style="background-color:#EEE;" onclick="document.getElementById('abck1').focus();">
				</div><!-- /input-group -->
			  </div><!-- /.col-lg-6 -->
			 </div><!-- /.row -->
			  <div class="row">
			  <div class="col-md-8">
				<div class="input-group">
				  <span class="input-group-addon">
					<input type="checkbox" id = "abck2" onclick="highlight(this,'abtxt2');">
				  </span>
				  <input type="text" class="form-control input-sm"  id= "abtxt2" value = "Refuse UDT" style="background-color:#EEE;" onclick="document.getElementById('abck1').focus();">
				</div><!-- /input-group -->
			  </div><!-- /.col-lg-6 -->
			 </div><!-- /.row -->
			  <div class="row">
			  <div class="col-md-8">
				<div class="input-group">
				  <span class="input-group-addon">
					<input type="checkbox" id = "abck3" onclick="highlight(this,'abtxt3');">
				  </span>
				  <input type="text" class="form-control input-sm"  id= "abtxt3" value = "Incorrect Pill Count" style="background-color:#EEE;" onclick="document.getElementById('abck1').focus();">
				</div><!-- /input-group -->
			  </div><!-- /.col-lg-6 -->
			 </div><!-- /.row -->
			   <div class="row">
			  <div class="col-md-8">
				<div class="input-group">
				  <span class="input-group-addon">
					<input type="checkbox" id = "abck4" onclick="highlight(this,'abtxt4');">
				  </span>
				  <input type="text" class="form-control input-sm"  id= "abtxt4"  value = "Unsanctioned Dose Escalation" style="background-color:#EEE;" onclick="document.getElementById('abck1').focus();">
				</div><!-- /input-group -->
			  </div><!-- /.col-lg-6 -->
			 </div><!-- /.row -->
			   <div class="row">
			  <div class="col-md-8">
				<div class="input-group">
				  <span class="input-group-addon">
					<input type="checkbox" id = "abck5" onclick="highlight(this,'abtxt5');">
				  </span>
				  <input type="text" class="form-control input-sm"  id= "abtxt5"  value = "PMP" style="background-color:#EEE;" onclick="document.getElementById('abck1').focus();">
				</div><!-- /input-group -->
			  </div><!-- /.col-lg-6 -->
			 </div><!-- /.row -->
			  <div class="row">
			  <div class="col-md-8">
				<div class="input-group">
				  <span class="input-group-addon">
					<input type="checkbox" id = "abck6" onclick="highlight(this,'abtxt6');">
				  </span>
				  <input type="text" class="form-control" value = "Unexpected UDT Result" id = "abtxt6" style="background-color:#EEE;" onclick="document.getElementById('abck1').focus();">
				</div><!-- /input-group -->
			  </div><!-- /.col-lg-6 -->
			 </div><!-- /.row -->
			  <div class="row">
			  <div class="col-md-8">
				<div class="input-group">
				  <span class="input-group-addon">
					<input type="checkbox" id = "abck7" onclick="highlight(this,'abtxt7');">
				  </span>
				  <input type="text" class="form-control" value="Other(Specify)" id="abtxt7"  maxlength="40" onclick="if (this.value == 'Other(Specify)')  this.value = '';">
				</div><!-- /input-group -->
			  </div><!-- /.col-lg-6 -->
			 </div><!-- /.row -->
		{/if}
		{if  ($notes_flag == "true")} 
			{$abherrent_behaviors}
		{/if}
	  
	  </td>
	  
     <td width="52%" style="padding-left:2px !important; vertical-align:top !important" valign="top"><strong>Risk Level &nbsp;</strong>
      <input size="10" type="text" name='risklvl_c' id='risklvl_c' readonly value="{if $finalscore eq ""}N/A{elseif $finalscore eq 'N/A'}N/A{elseif $finalscore eq "0-3" }LOW{elseif $finalscore eq "4-7"}Moderate{elseif $finalscore eq "gt7"}High{else}{$finalscore}{/if}" />
      &nbsp;&nbsp;<input style="font-size:12px !important" type="button" id="view-button" onclick="window.open('index.php?module=REG_Patient&action=riskevaluation&patid={$smarty.request.record}&flag=1')" title="View Risk Evaluation" class="button primary" value="View"><br>
      <input type="hidden" name="aberrant_behavior_noted_cx" value="0">
      
 
      <table border="0" cellpadding="0" cellspacing="0" style="width:100%">
	  
	  <tr>  <!-- NExt RX Refill -->
        <td style="vertical-align:middle !important" width="70%" align="right" >Next Rx Refill : &nbsp;&nbsp;</td>
        <td width="30%"><span class="dateTime"> {literal} 
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
         <input class="date_input" autocomplete="off" tabindex="24" type="text" name="next_rx_refill_due_c" onchange='check_date(this);' id="next_rx_refill_due_c" value="{$datarow.next_rx_refill_due_c|date_format:'%m/%d/%Y'}" title="" size="10" maxlength="10" {if ( time() - strtotime($datarow.next_rx_refill_due_c)  > 0   )} style="color:red" {/if} >&thinsp;<img src="themes/Sugar5/images/jscalendar.gif?v=GogGz9QEok1-e0Ft6rexxQ" alt="Enter Date" style="position:relative; height:20px; bottom:3px" border="0" id="next_rx_refill_due_c_trigger">
         </span> {literal} 
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
         {/literal}</td>
       </tr>
	  
	  <tr> <!-- PILL COUNT -->
        <td style="vertical-align:middle !important" align="right">
		Pill Count: &nbsp;&nbsp;</td>
        <td><span class="dateTime">
         
		<input class="date_input" autocomplete="off" tabindex="32" type="text" onchange='check_date(this);' name="next_pill_ct_c" id="next_pill_ct_c" value="{$datarow.next_pill_ct_c|date_format:'%m/%d/%Y'}" title="" size="10" maxlength="10" {if ( time() - strtotime($datarow.next_pill_ct_c)  > 0   )} style="color:red" {/if}>&thinsp;<img src="themes/Sugar5/images/jscalendar.gif?v=GogGz9QEok1-e0Ft6rexxQ" alt="Enter Date" style="position:relative; height:20px; bottom:3px" border="0" id="next_pill_ct_c_trigger">
         </span> {literal}<script type="text/javascript">
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
				</script>{/literal} </td>
       </tr>
	   
       <tr> <!-- Narcotic contract -->
        <td style="vertical-align:bottom !important;" align="right">
         <input type="checkbox" tabindex="78" id="narcotic_contract_in_chart_c" name="narcotic_contract_in_chart_c" value="1" title=""  {if ( $datarow1.narcotic_contract_in_chart_c  >
         0   )} checked="checked" {/if}  > <span> &nbsp;Controlled Substance Agreement signed on &nbsp;&nbsp;</span></td>
        <td style="width:110px !important" width="110"><span class="dateTime">
         <input tabindex="79" class="date_input" autocomplete="off" type="text" name="narcotic_contract_sign_c" id="narcotic_contract_sign_c" title="" size="10" maxlength="10">&thinsp;<img src="themes/Sugar5/images/jscalendar.gif?v=GogGz9QEok1-e0Ft6rexxQ" alt="Enter Date" style="position:relative; height:20px; bottom:3px" border="0" id="narcotic_contract_sign_c_trigger"> </span></td>
       </tr>
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
      
       <tr>
        <td style="vertical-align:middle !important" align="right">PMP Review  &nbsp; (<a href='https://gateway.hhs.state.ma.us/authn/login.do' target='_blank' style='display: inline; text-align: right;'>Link to PMP</a>) : &nbsp;&nbsp;</td>
        <td><span class="dateTime">
         
<input class="date_input" tabindex="56" autocomplete="off" type="text" name="next_pmp_review_due_c" id="next_pmp_review_due_c" value="{$datarow.next_pmp_review_due_c|date_format:'%m/%d/%Y'}" title=""  size="10" maxlength="10">&thinsp;<img src="themes/Sugar5/images/jscalendar.gif?v=GogGz9QEok1-e0Ft6rexxQ" alt="Enter Date" style="position:relative; height:20px; top:3px" border="0" id="next_pmp_review_due_c_trigger" >
         </span> {literal} 
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
         {/literal}</td>
       </tr>
 
       <tr><td colspan="2"><span id="copy_text_div"></span> &nbsp;<textarea id="clipboard_textarea" style="display:none"></textarea></td></tr>
       <tr> <td align="right" style="m-right:10px; !important"> {{sugar_button module="$module" id="SAVE" view="$view" form_id="$form_id" location="HEADER" appendTo="header_buttons"}} &nbsp; {{sugar_action_menu buttons=$header_buttons class="fancymenu" flat=true}} </td>
	    <!-- 10/24/2014 - removed this copy button, make it look like others, move to PrescriptionRefill.phph file -->
		<td>&nbsp;<br>&nbsp; <!--input style="font-size:12px !important" type="button" id="copy-button" onclick="copyToClipboard()" title="Copy information to Logician." class="button primary" value="Copy"--></td>
    </tr>
      </table>
 </td>
    </tr>
    
   </table>
   <br></td>
   </tr>
  
  <tr>
   <td class="buttons"><input type="hidden" name="module" value="{$module}">
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
    
    {{/if}} </td>
   <td align='right'>{{$ADMIN_EDIT}}
    
    {{if $panelCount == 0}}
    
    {{* Render tag for VCR control if SHOW_VCR_CONTROL is true *}}
    
    {{if $SHOW_VCR_CONTROL}}
    
    {$PAGINATION}
    
    {{/if}}
    
    {{/if}} </td>
  </tr>
 </table>
 
  <select name="abherrent_behaviors_c[]" id="abherrent_behaviors_c" tabindex="60" multiple="multiple" style="display:none;overflow:hidden;">
       <!--option value="RefusePillCount" id="RefusePillCount" >Refuse pill count</option-->
  </select>
 
  <script type="text/javascript">
	function addlistbox(addtext) 
	{ldelim} 
		var src = document.getElementById("abherrent_behaviors_c");
		
		var newOption = document.createElement("option");
                newOption.value = addtext;
                newOption.text = addtext;
                newOption.selected = true;
                try {ldelim} 
                         src.add(newOption, null); //Standard
 
                 {rdelim}catch(error) {ldelim} 
                         src.add(newOption); // IE only
 
                 {rdelim}
	{rdelim} 
	
	function highlight(control, texttgt)
	{ldelim}
		if (control.checked)
			{ldelim} document.getElementById(texttgt).style.background='#f68428'; 
					 //addlistbox( document.getElementById(texttgt).value);
			{rdelim}
		else
			{ldelim} document.getElementById(texttgt).style.background='#EEE'; 
			{rdelim}
	{rdelim}
	
	function savelistbox()
	{ldelim}
	    
		if ( document.getElementById('abck1').checked ) {ldelim} addlistbox(document.getElementById('abtxt1').value); {rdelim}
		if ( document.getElementById('abck2').checked ) {ldelim} addlistbox(document.getElementById('abtxt2').value); {rdelim}
		if ( document.getElementById('abck3').checked ) {ldelim} addlistbox(document.getElementById('abtxt3').value); {rdelim}
		if ( document.getElementById('abck4').checked ) {ldelim} addlistbox(document.getElementById('abtxt4').value); {rdelim}
		if ( document.getElementById('abck5').checked ) {ldelim} addlistbox(document.getElementById('abtxt5').value); {rdelim}
		if ( document.getElementById('abck6').checked ) {ldelim} addlistbox(document.getElementById('abtxt6').value); {rdelim}
		if ( document.getElementById('abck7').checked ) {ldelim} addlistbox(document.getElementById('abtxt7').value); {rdelim}
		//alert('done Saving');
	{rdelim}
  </script> 
 
 <!-- START OF UTS accordion--> 
 
 {if $notes_flag == "false"}
 <div id='accordion1'>
  <h3 style='font-size:16px;font-weight:bold;'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Lab Results</h3>
  <div>
   <table  width="40%" cellspacing="0" cellpadding="0" border="1" class="list view">
    <tbody>
     <tr height = "20">
      <th width="10%" scope="col"> <div align="left" width="100%" style="white-space: normal;"> Urine Tox Date </div>
      </th>
      <th width="10%" scope="col"> <div align="left" width="100%" style="white-space: normal;"> OXYCODONE </div>
      </th>
      <th width="10%" scope="col"> <div align="left" width="100%" style="white-space: normal;"> OPIATE URINE </div>
      </th>
      <th width="10%" scope="col"> <div align="left" width="100%" style="white-space: normal;"> METHADONE </div>
      </th>
      <th width="10%" scope="col"> <div align="left" width="100%" style="white-space: normal;"> COCAINE</div>
      </th>
      <th width="10%" scope="col"> <div align="left" width="100%" style="white-space: normal;"> BUPRENORPHINE</div>
      </th>
      <th width="10%" scope="col"> <div align="left" width="100%" style="white-space: normal;"> BENZO</div>
      </th>
      <th width="10%" scope="col"> <div align="left" width="100%" style="white-space: normal;"> BARBITURATES</div>
      </th>
      <th width="10%" scope="col"> <div align="left" width="100%" style="white-space: normal;"> AMPHETAMINES</div>
      </th>
     </tr>
    {foreach name=myrowIteration from=$mydatauts key=id item=myrowData}
    <tr class="oddListRowS1" height="20">
     <td class="" valign="top" align="left" scope="row"> {$myrowData.thisdate1} </td>
     <td class="" valign="top" align="left"> {$myrowData.oxy} </td>
     <td class="" valign="top" align="left"> {$myrowData.opiate} </td>
     <td class="" valign="top" align="left"> {$myrowData.methadone} </td>
     <td class="" valign="top" align="left"> {$myrowData.cocaine} </td>
     <td class="" valign="top" align="left"> {$myrowData.bupreno} </td>
     <td class="" valign="top" align="left"> {$myrowData.benzo} </td>
     <td class="" valign="top" align="left"> {$myrowData.barbi} </td>
     <td class="" valign="top" align="left"> {$myrowData.amph} </td>
    </tr>
    {/foreach}
     </tbody>
    
   </table>
  </div>
 </div>
 {/if} 
 
 <!--accordion --> 
 
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
 <div {{if $useTabs}}class="yui-content"{{/if}}> {{assign var='tabIndexVal' value=0}}
  
  {{* Loop through all top level panels first *}}
  
  {{counter name="panelCount" start=-1 print=false assign="panelCount"}}
  
  {{counter name="tabCount" start=-1 print=false assign="tabCount"}}
  
  {{foreach name=section from=$sectionPanels key=label item=panel}}
  
  {{counter name="panelCount" print=false}}
  
  {{capture name=label_upper assign=label_upper}}{{$label|upper}}{{/capture}}
  
  {{if (isset($tabDefs[$label_upper].newTab) && $tabDefs[$label_upper].newTab == true)}}
  
  {{counter name="tabCount" print=false}}
  
  {{if $tabCount != 0}}</div>
 {{/if}}
 <div id='tabcontent{{$tabCount}}'> {{/if}}
  
  
  
  {{* Print out the table data *}}
  
  {{if $label == 'DEFAULT'}}
  <div id="detailpanel_{{$smarty.foreach.section.iteration}}" > {{else}}
   <div id="detailpanel_{{$smarty.foreach.section.iteration}}" class="{$def.templateMeta.panelClass|default:'edit view edit508'}"> {{/if}}
    
    
    
    {counter name="panelFieldCount" start=0 print=false assign="panelFieldCount"}
    
    {{* Check to see if the panel variable is an array, if not, we'll attempt an include with type param php *}}
    
    {{* See function.sugar_include.php *}}
    
    {{if !is_array($panel)}}
    
    {sugar_include type='php' file='{{$panel}}'}
    
    {{else}}
    
    
    
    {{* Only show header if it is not default or an int value *}}
    
    {{if !empty($label) && !is_int($label) && $label != 'DEFAULT' && $showSectionPanelsTitles && (!isset($tabDefs[$label_upper].newTab) || (isset($tabDefs[$label_upper].newTab) && $tabDefs[$label_upper].newTab == false)) && $view != "QuickCreate"}}
    <h4>&nbsp;&nbsp; <a href="javascript:void(0)" class="collapseLink" onclick="collapsePanel({{$smarty.foreach.section.iteration}});"> <img border="0" id="detailpanel_{{$smarty.foreach.section.iteration}}_img_hide" src="{sugar_getimagepath file="basic_search.gif"}"></a> <a href="javascript:void(0)" class="expandLink" onclick="expandPanel({{$smarty.foreach.section.iteration}});"> <img border="0" id="detailpanel_{{$smarty.foreach.section.iteration}}_img_show" src="{sugar_getimagepath file="advanced_search.gif"}"></a> {sugar_translate label='{{$label}}' module='{{$module}}'}
     
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
     {{/if}} </h4>
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
    
    
    
    {{/if}} </div>
   {if $panelFieldCount == 0}
   
   
   
   
   
   {/if}
   
   {{/foreach}} </div>
 </div>
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