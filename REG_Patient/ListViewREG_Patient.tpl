

{literal}
<script type="text/javascript">
	if (typeof jQuery == "undefined") document.write("<script src='custom/include/jquery/jquery.min.js'></" + "script>");
</script>

<script>
function myFunction()
{


//document.getElementById("dyn").innerHTML = '<input class="date_input"  autocomplete="off" type="text" name="last_pcp_visit_c1" id="last_pcp_visit_c1" value="" title=""  size="8" maxlength="10" onchange="check_date(this);"><img src="themes/Sugar5/images/jscalendar.gif" alt="Enter Date" style="position:relative; top:3px" border="0" id="last_pcp_visit_c_trigger1"><input class="date_input"  autocomplete="off" type="text" name="last_pcp_visit_c2" id="last_pcp_visit_c2" value="" title=""  size="8" maxlength="10" onchange="check_date(this);"><img src="themes/Sugar5/images/jscalendar.gif" alt="Enter Date" style="position:relative; top:3px" border="0" id="last_pcp_visit_c_trigger2"><input type="submit" value="Go">';

var newcontent = document.createElement('div');
newcontent.innerHTML = '<div><input class="date_input"  autocomplete="off" type="text" name="last_pcp_visit_c1" id="last_pcp_visit_c1" value="" title=""  size="8" maxlength="10" onchange="check_date(this);"><img src="themes/Sugar5/images/jscalendar.gif" alt="Enter Date" style="position:relative; top:3px" border="0" id="last_pcp_visit_c_trigger1"><input class="date_input"  autocomplete="off" type="text" name="last_pcp_visit_c2" id="last_pcp_visit_c2" value="" title=""  size="8" maxlength="10" onchange="check_date(this);"><img src="themes/Sugar5/images/jscalendar.gif" alt="Enter Date" style="position:relative; top:3px" border="0" id="last_pcp_visit_c_trigger2"><input type="submit" value="Go"></div>';

while (newcontent.firstChild) {
        document.getElementById("dyn1").appendChild(newcontent.firstChild);
    }


//alert ( document.getElementById("dyn1").outerHTML);

Calendar.setup ({inputField : "last_pcp_visit_c1",ifFormat : "%m/%d/%Y %I:%M%P",daFormat : "%m/%d/%Y %I:%M%P", button : "last_pcp_visit_c_trigger1",
				singleClick : true,
				dateStr : "",
				startWeekday: 0,
				step : 1,
				weekNumbers:false
				}
				);
Calendar.setup ({inputField : "last_pcp_visit_c2",ifFormat : "%m/%d/%Y %I:%M%P",daFormat : "%m/%d/%Y %I:%M%P", button : "last_pcp_visit_c_trigger2",
				singleClick : true,
				dateStr : "",
				startWeekday: 0,
				step : 1,
				weekNumbers:false
				}
				);			
    		
{/literal}
	document.getElementById("last_pcp_visit_c1").value = "{$smarty.post.last_pcp_visit_c1}";
	document.getElementById("last_pcp_visit_c2").value = "{$smarty.post.last_pcp_visit_c2}";
}
</script>


<link type="text/css" rel="stylesheet" href="custom/topcarejs/jquery.dropdown.css" />
<script type="text/javascript" src="custom/topcarejs/jquery.dropdown.js"></script>

 
{literal} 
 <script>

function sortTable(sort_dir){
  var rows = $('#mytable tbody  tr').get();
  
  if (sort_dir == 'asc') { $('#asc').css( "color", "green" ); $('#desc').css( "color", "black" );}
  if (sort_dir == 'desc') { $('#desc').css( "color", "green" ); $('#asc').css( "color", "black" );}
  
  rows.sort(function(a, b) {

  var A = $(a).children('td').eq(0).text().toUpperCase();
  var B = $(b).children('td').eq(0).text().toUpperCase();
  
  if(A < B) {
     return (sort_dir == 'asc') ? -1 : 1 ;
  }

  if(A > B) {
    return (sort_dir == 'asc') ? 1 : -1 ; 
  }

  return 0;

  });

  $.each(rows, function(index, row) {
    $('#mytable').children('tbody').append(row);
  });
}

  
  
  </script>
{/literal}  

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
 //alert(inputToDate);
 //if ( isNaN( inputToDate ) ) {  alert('invalid'); } else { alert('dumdidum');}
 //

  //if (isNaN(inputDateText.getTime())) {alert('formatted but invalid');}

//compare dates
 if (inputToDate > todayToDate) {element.style.color='black';}
 else if (inputToDate < todayToDate) {element.style.color='red';}
 else {element.style.color='black';}
}
</script>
{/literal}



{php}

//var_dump($_POST);
if (!empty($_POST['mysort']) AND $_POST['mysort'] != 'all' AND $_POST['mysort'] != 'none' AND $_POST['mysort'] != 'cust')  $mytitle = "List of Refills in Next " .$_POST['mysort']. " Days" ; 
elseif ( $_POST['mysort'] == 'cust')  $mytitle = "List of Refills from " . $_POST[last_pcp_visit_c1] .  " TO " . $_POST[last_pcp_visit_c2];
else 							 $mytitle = "List of All Refills";
if (!empty($_POST['provsort']) AND $_POST['provsort'] != "none" ) 
 $mytitle .= " For " . $_POST['provsort'];
else
 $mytitle .= " For ALL Providers" ;
 
 $this->assign("mytitle", $mytitle);

if (!empty($_POST['mysort']) )  $this->assign("datsel",  $_POST['mysort'] ) ; 
if (!empty($_POST['utssort']) )  $this->assign("utssel",  $_POST['utssort'] ) ; 

if (!empty($_POST['provsort']))  $this->assign("provsel", $_POST['provsort']) ; 



//if (document.forms["mylist"]["last_pcp_visit_c1"].value == null)
{/php}



<form name="mylist" method="POST" action="index.php?module=REG_Patient&action=listview" onsubmit="">


<div id="demo">
<h1>{$mytitle}</h1>
</div>



<table class="list view" width="100%" cellspacing="0" cellpadding="0" border="0" name="mytable" id="mytable">
    <thead>
    <tr height = "20">
		<th width="10%" scope="col" data-sort="string">    <div align="left" width="100%" style="white-space: normal;">  
			Name <a href="#" onclick="sortTable('asc');" style="font-size:150%;" id = "asc" name = "asc"> &uarr; </a> <a href="#" onclick="sortTable('desc');" style="font-size:150%;" id = "desc" name = "desc"> &darr; </a></div> </th>
		<th width="5%" scope="col">    <div align="left" width="100%" style="white-space: normal;">  MRN </div>  </th>
		<th width="18%" scope="col">    <div  id = "dyn1" align="left" width="100%" style="white-space: normal;">  Refill Date 
					<select id="mysort" name="mysort" onchange="if (document.getElementById('mysort').selectedIndex !=4 ) this.form.submit(); else myFunction();">
						<option value="all" {if (empty($datsel) or $datsel == "all")} selected {/if}>All Refills</option>
						<option value="7" {if ($datsel == "7")} selected {/if}>Next 7 Days</option>
						<option value="14" {if ($datsel == "14")} selected {/if}>Next 14 Days</option>
						<option value="21" {if ($datsel == "21")} selected {/if}>Next 21 Days</option>
						<option value="cust" {if ($datsel == "cust")} selected {/if}>Custom</option>
					</select>
                    
			    </div>
				
				</th>
			<th width="18%" scope="col">    <div align="left" width="100%" style="white-space: normal;">  UTS Date 
			<select name="utssort" onchange="this.form.submit()">
				<!--option value="none" {if (empty($datsel))} selected {/if}></option-->
				<option value="all" {if (empty($utssel) or $utssel == "all")} selected {/if}>All UTS</option>
				<option value="7" {if ($utssel == "7")} selected {/if}>Next 7 Days</option>
				<option value="14" {if ($utssel == "14")} selected {/if}>Next 14 Days</option>
				<option value="21" {if ($utssel == "21")} selected {/if}>Next 21 Days</option>
				</select>
				</div> </th>				
		<th width="18%" scope="col">    <div align="left" width="100%" style="white-space: normal;">  Provider 
			<select name = "provsort" onchange="this.form.submit()">
			    <option value="none" {if (empty($provsel) or $provsel=="none")} selected {/if}>All Providers</option>
				{foreach name=provrowIteration from=$provdata  item=provrowData}
					<option value="{$provrowData.provname}" {if ($provsel == $provrowData.provname)} selected {/if} >{$provrowData.provname}</option>
				{/foreach}
			</select>		
		</th>
		<th width="10%" scope="col">    <div align="left" width="100%" style="white-space: normal;">  Action </div> </th>
    </tr>
	</thead>
	<tbody>
	
    {if (empty($mydata))}  <tr class="oddListRowS1" height="20">  <td class="" valign="top" align="left" scope="row"> <h1>NO REFILLS FOUND</h1> </td>    </tr>   {/if}
	 
	{foreach name=myrowIteration from=$mydata key=id item=myrowData}

	 
	     <tr class="oddListRowS1" height="20">
		    <td class="" valign="top" align="left" scope="row"> <a href="./index.php?action=ajaxui#ajaxUILoc=index.php%3Fmodule%3DREG_Patient%26action%3DDetailView%26record%3D{$myrowData.patid}"> 
			{$myrowData.lname}, {$myrowData.fname} </a> </td>
			<td class="" valign="top" align="left"> {$myrowData.mrn}  </td>
            <td class="" valign="top" align="left"{if ( time() - strtotime($myrowData.refill)  > 0   )} style="color:red" {/if}> 
				{$myrowData.refill} {if empty($myrowData.refill)} NO REFILL! {/if} </td>
			<td class="" valign="top" align="left"{if ( time() - strtotime($myrowData.uts)  > 0   )} style="color:red" {/if}> 
				{$myrowData.uts} {if empty($myrowData.uts)} NO UTS! {/if} </td>	
            <td class="" valign="top" align="left"> {$myrowData.provname}  {if empty($myrowData.provname)} NO PCP {/if}</td>
			<td class="" valign="top" align="left">
				<div id="{$myrowData.patid}" class="dropdown dropdown-tip"> <ul class="dropdown-menu">  
				  <li><a href="./index.php?module=REG_Patient&action=PrescriptionRefill&record={$myrowData.patid}">Refill</a></li>  
				  <li><a href="./index.php?module=REG_Patient&action=PatientEncounter&record={$myrowData.patid}">Encounter</a></li>
				  <li><a href="./index.php?module=REG_Patient&action=TreatmentPlan&record={$myrowData.patid}">Treatment Plan</a></li> </ul> </div><input type="button" value="Action" data-dropdown="#{$myrowData.patid}" class="">	
			</td>	  
         </tr>

	{/foreach}

  </tbody>

</table>






</form>


{literal}
<script>

    // this should be added last so it gets all the ready event
    //$(document).ready(function() {
	    //alert(document.getElementById('mysort').selectedIndex == 4)
    //    if (document.getElementById('mysort').selectedIndex == 4 ) myFunction();
    //});

	$(window).load(function() {
	   if (document.getElementById('mysort').selectedIndex == 4 ) myFunction();
    });
	
</script>
{/literal}