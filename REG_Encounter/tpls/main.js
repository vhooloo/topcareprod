// main.js
var clip = new ZeroClipboard( document.getElementById("copy-button"), {
  moviePath: "custom/modules/REG_Encounter/tpls/ZeroClipboard.swf"
} );
var appendTxt = "";

clip.on( 'load', function(client) {
  
} );

clip.on( 'complete', function(client, args) {
  //this.style.display = 'none'; // "this" is the element that was clicked
     alert("Data Copied to Clipboard");  
} );

clip.on( 'mouseover', function(client) {

} );

clip.on( 'mouseout', function(client) {
   //alert("mouse out");
} );

clip.on( 'mousedown', function(client) {
	appendTxt="";
   document.getElementById("clipboard_textarea").value=appendTxt;
 
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
    appendTxt =appendTxt +type +" of " + name + " on "+ today + "\n";
	var summary = document.getElementById('summary').value;
	if(summary==""){
	summary= "Information Not Available"
	}
	appendTxt =appendTxt + "Encounter Summary  : " +summary+"\n";
	
    var history = document.getElementById('history_c').value;
	if(history==""){
	history= "Information Not Available"
	}
	appendTxt =appendTxt + "Notes  : " +history+"\n";
	
	/*var assessment = document.getElementById('assessment_summary_c').value;
	if(assessment==""){
	assessment= "Information Not Available"
	}
	appendTxt =appendTxt + "Assessment and plan include : " +assessment+"\n";
*/
	var daysdispensed = document.getElementById('pills_bottle_disp_c').value;
	if(daysdispensed==""){
	daysdispensed= "Information Not Available"
	}
	appendTxt =appendTxt + "Days of refill dispensed was : " +daysdispensed+"\n";
	
	var risklevel = document.getElementById('risk_level_c').value;
	if(risklevel==""){
	risklevel= "Information Not Available"
	}
	appendTxt =appendTxt + "Risk Level : " +risklevel+"\n";
	
	if( document.getElementById('med_safety_pulm_prob_c').checked)
	{
	 appendTxt=appendTxt +"Patient has Pulmonary Problems\n";
	
	}
	if( document.getElementById('med_safety_sedatives_c').checked)
	{
	 appendTxt=appendTxt +"Patient taking sedative medicines\n";
	
	}
	if( document.getElementById('med_safety_high_medd_c').checked)
	{
	 appendTxt=appendTxt +"Patient taking >50 med\n";
	
	}

	var nextRx = document.getElementById('next_rx_refill_due_c').value;
	if(nextRx==""){
	nextRx= "Information Not Available"
	}
	appendTxt =appendTxt + "Next Rx refill is scheduled for : " +nextRx+"\n";

	var nextUTS = document.getElementById('next_uts_due_c').value;
	if(nextUTS==""){
	nextUTS= "Information Not Available"
	}
	appendTxt =appendTxt + "Next UTS is due on : " +nextUTS+"\n";
	
	
	var nextPCP = document.getElementById('next_pcp_visit_c').value;
	if(nextPCP==""){
	nextPCP= "Information Not Available"
	}
	appendTxt =appendTxt + "Next PCP visit is on : " +nextPCP+"\n";
	
	var nextNCM = document.getElementById('nxt_appt_pain_c').value;
	if(nextNCM==""){
	nextNCM= "Information Not Available"
	}
	


	
	var combine = document.getElementById('next_appt_other_c').value;
	if(combine==""){
	appendTxt =appendTxt + "Next NCM visit in on : " +nextNCM;
	}
	else{
	appendTxt =appendTxt + "Next NCM visit in on : " +nextNCM+"\n";
      var values_of = combine.split('#');
	  for (var i=0;i<values_of.length;i++){
	  var values_indi = values_of[i].split(',');
	  var selectedtext=document.getElementById(values_indi[0]).text;
	  var date_value=values_indi[1];
	  if(i==0)
	  appendTxt=appendTxt + "Next Appoinment for " + selectedtext + " is on " +date_value ;
	  else
	  appendTxt=appendTxt + "\nNext Appoinment for " + selectedtext + " is on " +date_value;
	 }
	 
	 }
	 
	 
	 
	if( document.getElementById('aberrant_behavior_noted_c').checked)
	{
	 appendTxt=appendTxt +"\nAberrant behavior is detected in patient";
	
	} 
	if( document.getElementById('pt_confirms_taking_c').checked)
	{
	 appendTxt=appendTxt +"\nPatient confirms taking medications as prescribed";
	
	}
	
	if( document.getElementById('pt_confirms_storing_c').checked)
	{
	 appendTxt=appendTxt +"\nPatient confirms storing medications safely";
	
	}
	
	
	if(document.getElementById('narcotic_contract_in_chart_c').checked){
	var signeddate = document.getElementById('narcotic_contract_sign_c').value;
	if(signeddate==""){
	signeddate= "Information Not Available"
	}
	
	appendTxt=appendTxt +"\nControlled substance agreement signed on "+signeddate;
	
	}
	
	
  document.getElementById("clipboard_textarea").value=appendTxt;
} );

clip.on( 'mouseup', function(client) {
  // alert("Data Copied to Clipboard");
} );