


<!--link type="text/css" rel="stylesheet" href="custom/topcarejs/jquery.dropdown.css" />
 <link rel="stylesheet" href="http://code.jquery.com/ui/1.10.3/themes/smoothness/jquery-ui.css" /-->
<!-- --GRID -->
<link rel="stylesheet" href="custom/topcarejs/jqwidgets/styles/jqx.base.css" type="text/css" />
<link rel="stylesheet" href="custom/topcarejs/jqwidgets/styles/jqx.office.css" type="text/css" />
<meta http-equiv="X-UA-Compatible" content="IE=8" /> 
<!--meta http-equiv="X-UA-Compatible" content="IE=9; IE=8; IE=7; IE=EDGE" /-->
<!--meta http-equiv="X-UA-Compatible" content="IE=edge" /--> 
<!--script type="text/javascript" src="custom/topcarejs/jquery.dropdown.js"></script-->

<script type="text/javascript">
var clickname = "";
var clickvalue;
{literal}
function loadUrl(location)
{

	var state = $("#jqxgrid").jqxGrid('savestate');
	var viewcontent = JSON.stringify(state);
	var params = "&jqxgridstate="+viewcontent;
	//var e = document.getElementById("mysortrefill");
	for (var l = 0; l < ddarray.length; l++) {
		ddarray[l].sessionparam();
		params = params +  ddarray[l].params;
	};
	if (document.getElementById("inactivecheck").checked) {params = params + "&inactive=true"} else {params = params + "&inactive=clear"} ;
	if (document.getElementById("statuscheck").checked) {params = params + "&status=true"} else {params = params + "&status=clear"};

//Send the proper header information along with the request - dummy commit


if (window.XMLHttpRequest)
  {// code for IE7+, Firefox, Chrome, Opera, Safari
  xmlhttp=new XMLHttpRequest();

  }
  else {
       xmlhttp=new ActiveXObject('Microsoft.XMLHTTP');

}

xmlhttp.onreadystatechange=function()
  {
	//if (xmlhttp.readyState >=5) document.location.href = location; //make this work with ie and chrome
  }
//xmlhttp.open("GET","index.php?module=REG_Patient&action=session_setting_variable&id=jqxgridstate&value=orepiya123",true);
xmlhttp.open("POST","index.php?entryPoint=session_setting_variable",false);
xmlhttp.setRequestHeader("Content-type", "application/x-www-form-urlencoded");
xmlhttp.setRequestHeader("Content-length", params.length);
//xmlhttp.setRequestHeader("Connection", "close");
xmlhttp.send(params);

//$.get("index.php?module=REG_Patient&action=session_setting_variable&id=jqxgridstate&value=orepiya123ajax");

  this.document.location.href = location;
    //alert("loading");
  	//$("#jqxgrid").jqxGrid('loadstate', state);
	//alert("loaded");
  
}

function clearsession()
{

	
	var params = "&jqxgridstate=clear";

	for (var l = 0; l < ddarray.length; l++) {

		params = params + "&" +  ddarray[l].data + "=clear";
	};
	

//Send the proper header information along with the request


if (window.XMLHttpRequest)
  {// code for IE7+, Firefox, Chrome, Opera, Safari
  xmlhttp=new XMLHttpRequest();
  }
else {
       xmlhttp=new ActiveXObject('Microsoft.XMLHTTP');
}
xmlhttp.onreadystatechange=function()
  {
  
  }

xmlhttp.open("POST","index.php?entryPoint=session_setting_variable",true);
xmlhttp.setRequestHeader("Content-type", "application/x-www-form-urlencoded");
xmlhttp.setRequestHeader("Content-length", params.length);
xmlhttp.setRequestHeader("Connection", "close");
xmlhttp.send(params);


}


function updateaudit(auditcheck, row, value)
{
//ajax update - auditcheck is the current checkbox, row is value of data in array data[row], value is trueorfalse//pid
//get pid, get state, update using the pid
    var id = new Array();
	var flag;
	
	if (auditcheck.checked) flag = 1; else flag = 0;
	
	id = value.split('//');
	//alert('hereh'+flag+value);
	//alert(flag + id[1]);

 
    var params = "&pid="+id[1]+"&audit_flag="+flag;
	//alert(params+row+data[row]["patientname"]);
	//alert(data[row]["audit"]);
	data[row]["audit"] = flag == 1? "true//"+id[1]: "false//"+id[1];
	
	var state = $("#jqxgrid").jqxGrid('savestate');
	//var viewcontent = JSON.stringify(state);
	var dataAdapter = new $.jqx.dataAdapter(source);
    $("#jqxgrid").jqxGrid({ source: dataAdapter });
	$("#jqxgrid").jqxGrid('loadstate',state);
	//alert(data[row]["audit"]);
	if (window.XMLHttpRequest)
	  {// code for IE7+, Firefox, Chrome, Opera, Safari
	  xmlhttp=new XMLHttpRequest();
	  }
	else {
		   xmlhttp=new ActiveXObject('Microsoft.XMLHTTP');
	}
	xmlhttp.onreadystatechange=function()
	  {
	  
	  }

	xmlhttp.open("POST","index.php?entryPoint=updatepatientaudit",true);
	xmlhttp.setRequestHeader("Content-type", "application/x-www-form-urlencoded");
	xmlhttp.setRequestHeader("Content-length", params.length);
	xmlhttp.setRequestHeader("Connection", "close");
	xmlhttp.send(params); 
}


function datedropdown(name,label, data, id, prev)
{
	 this.name 		= name;
	 this.label		= label;
	 this.data      = data;
	 this.id        = parseInt(id);
	 this.params   = 'bar';
	 this.selectval = 'ALL';
	 this.previous  = prev;
	 this.render1   = renderfunc;
	 this.render 	= '<div style="text-align: center; font-weight:bold;" ><p><b>'+this.label+'</b></p><select style="width:60px;font-size:80%;padding-left:0px;padding-right:0px;z-index:99999;" id="'+this.data+'" name="'+this.data+'" onclick="if(event.stopPropagation)event.stopPropagation();else event.cancelBubble=true;" onchange="ddarray['+this.id+'].selectval = this.value;clickname=this.id;clickvalue=this.value;;switch(document.getElementById(\''+this.data+'\').selectedIndex) { case 0: $(\'#jqxgrid\').jqxGrid(\'removefilter\', \''+this.data+'\', \'true\'); $(\'#jqxgrid\').jqxGrid(\'refreshfilterrow\'); break;  case 1: ddarray['+this.id+'].refillfilter(7); break;  case 2: ddarray['+this.id+'].refillfilter(14);break;}"> <option value="ALL"  selected>ALL</option><option value="Refill7" >7 Days</option><option value="Refill14" >14 Days</option><option value="range" >range</option></select> </div>&nbsp &nbsp';  //function to render html
     this.refillfilter = refillfilter;
	 this.sessionparam = sessionparam;
	 this.renderprevious = renderprevious;
	 this.setrange = setrange;
	 
	 
	 function renderfunc()
	 {
	   //alert('selectval'+ this.selectval);
	   if (this.selectval == 'ALL')
			return '<div style="text-align: center; font-weight:bold;" ><p><b>'+this.label+'</b></p><select style="width:60px;font-size:80%;padding-left:0px;padding-right:0px;" id="'+this.data+'" name="'+this.data+'" onclick="if(event.stopPropagation)event.stopPropagation();else event.cancelBubble=true;" onchange="ddarray['+this.id+'].selectval = this.value;clickname=this.id;clickvalue=this.value;;switch(document.getElementById(\''+this.data+'\').selectedIndex) { case 0: $(\'#jqxgrid\').jqxGrid(\'removefilter\', \''+this.data+'\', \'true\');  ;break;  case 1: ddarray['+this.id+'].refillfilter(7); break;  case 2: ddarray['+this.id+'].refillfilter(14);break;}"> <option value="ALL"  selected>ALL</option><option value="Refill7" >7 Days</option><option value="Refill14" >14 Days</option><option value="range" >range</option></select> </div>&nbsp &nbsp';  //function to render html
		
		if (this.selectval == 'Refill7')
			return '<div style="text-align: center; font-weight:bold;" ><p><b>'+this.label+'</b></p><select style="width:60px;font-size:80%;padding-left:0px;padding-right:0px;" id="'+this.data+'" name="'+this.data+'" onclick="if(event.stopPropagation)event.stopPropagation();else event.cancelBubble=true;" onchange="ddarray['+this.id+'].selectval = this.value;clickname=this.id;clickvalue=this.value;;switch(document.getElementById(\''+this.data+'\').selectedIndex) { case 0: $(\'#jqxgrid\').jqxGrid(\'removefilter\', \''+this.data+'\', \'true\'); ; break;  case 1: ddarray['+this.id+'].refillfilter(7); break;  case 2: ddarray['+this.id+'].refillfilter(14);break;}"> <option value="ALL">ALL</option><option value="Refill7"   selected>7 Days</option><option value="Refill14" >14 Days</option><option value="range" >range</option></select> </div>&nbsp &nbsp';  //function to render html
		
		if (this.selectval == 'Refill14')
			return '<div style="text-align: center; font-weight:bold;" ><p><b>'+this.label+'</b></p><select style="width:60px;font-size:80%;padding-left:0px;padding-right:0px;" id="'+this.data+'" name="'+this.data+'" onclick="if(event.stopPropagation)event.stopPropagation();else event.cancelBubble=true;" onchange="ddarray['+this.id+'].selectval = this.value;clickname=this.id;clickvalue=this.value;;switch(document.getElementById(\''+this.data+'\').selectedIndex) { case 0: $(\'#jqxgrid\').jqxGrid(\'removefilter\', \''+this.data+'\', \'true\'); ; break;  case 1: ddarray['+this.id+'].refillfilter(7); break;  case 2: ddarray['+this.id+'].refillfilter(14);break;}"> <option value="ALL" >ALL</option><option value="Refill7" >7 Days</option><option value="Refill14" selected >14 Days</option><option value="range" >range</option></select> </div>&nbsp &nbsp';  //function to render html
		
		if (this.selectval == 'range')
			return '<div style="text-align: center; font-weight:bold;" ><p><b>'+this.label+'</b></p><select style="width:60px;font-size:80%;padding-left:0px;padding-right:0px;" id="'+this.data+'" name="'+this.data+'" onclick="if(event.stopPropagation)event.stopPropagation();else event.cancelBubble=true;" onchange="ddarray['+this.id+'].selectval = this.value;clickname=this.id;clickvalue=this.value;;switch(document.getElementById(\''+this.data+'\').selectedIndex) { case 0: $(\'#jqxgrid\').jqxGrid(\'removefilter\', \''+this.data+'\', \'true\'); ; break;  case 1: ddarray['+this.id+'].refillfilter(7); break;  case 2: ddarray['+this.id+'].refillfilter(14);break;}"> <option value="ALL" >ALL</option><option value="Refill7" >7 Days</option><option value="Refill14" >14 Days</option><option value="range" selected >range</option></select> </div>&nbsp &nbsp';  //function to render html
			
		return '<div style="text-align: center; font-weight:bold;" ><p><b>'+this.label+'</b></p><select style="width:60px;font-size:80%;padding-left:0px;padding-right:0px;" id="'+this.data+'" name="'+this.data+'" onclick="if(event.stopPropagation)event.stopPropagation();else event.cancelBubble=true;" onchange="ddarray['+this.id+'].selectval = this.value;clickname=this.id;clickvalue=this.value;;switch(document.getElementById(\''+this.data+'\').selectedIndex) { case 0: $(\'#jqxgrid\').jqxGrid(\'removefilter\', \''+this.data+'\', \'true\');  break;  case 1: ddarray['+this.id+'].refillfilter(7); break;  case 2: ddarray['+this.id+'].refillfilter(14);break;}"> <option value="ALL"  selected>ALL</option><option value="Refill7" >7 Days</option><option value="Refill14" >14 Days</option><option value="range" >range</option></select> </div>&nbsp &nbsp';  //function to render html
		
	 }
	 
	 function setrange() {
	   document.getElementById(data).value = "range";
	   this.selectval = "range";
	 }
	 
	 
	 function renderprevious() {
	   if (this.prev != "" || this.prev != undefined )  document.getElementById(this.data).value = this.previous;
	   this.selectval = this.previous;
	 }
	 
	 function refillfilter(days){
	  var refilldaysselect = parseInt(days);
	  var today = new Date();
	  var highdate = new Date();
	  var lastutsdate = new Date();
	  highdate.setDate(today.getDate() + refilldaysselect);
	  lastutsdate.setDate(today.getDate() - refilldaysselect);
      var fmthighdate = (highdate.getMonth()+1) + '/'+ highdate.getDate() + '/'+  highdate.getFullYear(); 
	  var fmttoday = (today.getMonth()+1) + '/'+ today.getDate() + '/'+  today.getFullYear(); 
	  var fmtlastutsdate = (lastutsdate.getMonth()+1) + '/'+ lastutsdate.getDate() + '/'+  lastutsdate.getFullYear(); 
	  
	  var filtergroup = new $.jqx.filter();
	  //var filterlo = filtergroup.createfilter('datefilter', fmttoday, 'GREATER_THAN_OR_EQUAL');
	  var filtertoday = filtergroup.createfilter('datefilter', fmttoday, 'LESS_THAN_OR_EQUAL');
	  var filterhi = filtergroup.createfilter('datefilter', fmthighdate , 'LESS_THAN_OR_EQUAL');
	  //var filterover = filtergroup.createfilter('datefilter', '11/7/2013', 'LESS_THAN_OR_EQUAL');
	  var filterbot  = filtergroup.createfilter('datefilter', '01/01/2013', 'GREATER_THAN_OR_EQUAL');
	  //filtergroup.addfilter(0, filterlo);
	  var filteruts = filtergroup.createfilter('datefilter', fmtlastutsdate , 'GREATER_THAN_OR_EQUAL');
       
	  //alert(this.data); 
	  if (this.data == "refill") {	filtergroup.addfilter(0, filterbot);filtergroup.addfilter(0, filterhi);}
	  else { filtergroup.addfilter(0, filteruts); filtergroup.addfilter(0, filtertoday); }
	  
		
		$('#jqxgrid').jqxGrid('addfilter', this.data, filtergroup, true);
		this.selectval = document.getElementById(this.data).value;
		clickname = this.data;
		$('#jqxgrid').jqxGrid('applyfilters');
	}
	
	function sessionparam() {
	var e = document.getElementById(this.data);
	//alert(viewcontent);
	this.params =  "&"+this.data+"="+ e.options[e.selectedIndex].value; 
	}
	
}

{/literal}
</script>

{php}

//session_start();
// store session data
//if (!empty($_POST['regnamesort'])) $_SESSION['regnamesort']=$_POST['regnamesort'];
//echo "session >>>>>>>>";
//if (!empty($_SESSION['jqxgridstate'])) var_dump($_SESSION['jqxgridstate']);
//if (!empty($_SESSION['mysortrefill'])) var_dump($_SESSION['mysortrefill']);
//var_dump($_SESSION);
{/php}

   <script src="custom/jquery/jquery-1.10.2.min.js"></script> 
  <!--script src="custom/jquery/ui/1.10.3/jquery-ui.js"></script-->
 
    <!--script src="custom/jquery/jquery-2.1.0.min.js"></script> 
  <script src="custom/jquery/jquery-ui.min.js"></script-->

 
  


    <!--script type="text/javascript" src="../../scripts/jquery-1.10.2.min.js"></script-->
    <script type="text/javascript" src="custom/topcarejs/jqwidgets/jqxcore.js?version=2"></script>
    <script type="text/javascript" src="custom/topcarejs/jqwidgets/jqxdata.js?version=2"></script>
    <script type="text/javascript" src="custom/topcarejs/jqwidgets/jqxbuttons.js?version=2"></script>
    <script type="text/javascript" src="custom/topcarejs/jqwidgets/jqxscrollbar.js?version=2"></script>
    <script type="text/javascript" src="custom/topcarejs/jqwidgets/jqxlistbox.js?version=2"></script>
    <script type="text/javascript" src="custom/topcarejs/jqwidgets/jqxdropdownlist.js?version=2"></script>
    <script type="text/javascript" src="custom/topcarejs/jqwidgets/jqxmenu.js?version=2"></script>
    <script type="text/javascript" src="custom/topcarejs/jqwidgets/jqxgrid.js?version=2"></script>
    <script type="text/javascript" src="custom/topcarejs/jqwidgets/jqxgrid.filter.js?version=2"></script>
	<script type="text/javascript" src="custom/topcarejs/jqwidgets/jqxgrid.storage.js?version=2"></script>
    <script type="text/javascript" src="custom/topcarejs/jqwidgets/jqxgrid.selection.js?version=2"></script>
    <script type="text/javascript" src="custom/topcarejs/jqwidgets/jqxcheckbox.js?version=2"></script>
	<script type="text/javascript" src="custom/topcarejs/jqwidgets/jqxgrid.sort.js?version=2"></script>
	<script type="text/javascript" src="custom/topcarejs/jqwidgets/jqxcalendar.js?version=2"></script>
    <script type="text/javascript" src="custom/topcarejs/jqwidgets/jqxdatetimeinput.js?version=2"></script>
	<script type="text/javascript" src="custom/topcarejs/jqwidgets/jqxgrid.grouping.js?version=2"></script>
	<script type="text/javascript" src="custom/topcarejs/jqwidgets/globalization/globalize.js?version=2"></script>
	<script type="text/javascript" src="custom/topcarejs/jqwidgets/jqxgrid.edit.js"></script>
	<script type="text/javascript" src="custom/topcarejs/jqwidgets/jqxdata.export.js?version=2"></script> 
	<script type="text/javascript" src="custom/topcarejs/jqwidgets/jqxgrid.export.js?version=2"></script> 
	<script type="text/javascript" src="custom/topcarejs/json2.js"></script>
	
	<!--[if IE 7]>
		<script type="text/javascript" src="custom/topcarejs/json2.js"></script>
	<![endif]--> 
    <!--script type="text/javascript" src="../../scripts/gettheme.js"></script>
    <script type="text/javascript" src="generatedata.js"></script-->
    


    



<!-- END GRID -->
<head>
  <!-- Use Internet Explorer 9 Standards mode -->
  <!--meta http-equiv="x-ua-compatible" content="IE=7"-->
</head>


<!-- -->

	
<body class='default'>
	<style> {literal}
        .green:not(.jqx-grid-cell-hover):not(.jqx-grid-cell-selected), .jqx-widget .green:not(.jqx-grid-cell-hover):not(.jqx-grid-cell-selected) {
            color: black;
            background-color: #b6ff00;
        }
        .yellow:not(.jqx-grid-cell-hover):not(.jqx-grid-cell-selected), .jqx-widget .yellow:not(.jqx-grid-cell-hover):not(.jqx-grid-cell-selected) {
            color: black;
            background-color: yellow;
        }
        .red:not(.jqx-grid-cell-hover):not(.jqx-grid-cell-selected), .jqx-widget .red:not(.jqx-grid-cell-hover):not(.jqx-grid-cell-selected) {
            color: black;
            background-color: #e83636;
        }
		
		.jqx-widget-content {
			font-family: Verdana;
			font-size:80%;
			color: blue;
		}
		
		
    </style> {/literal}


<input id="inactivecheck" type="checkbox"  onclick="inactivefilter(this.checked);" {if ($smarty.session.inactive == "true")}checked{/if} > Include Inactive patients </input>
<input id="statuscheck" type="checkbox" onclick="statusfilter(this.checked);"  {if ($smarty.session.status == "true")}checked{/if} > Patients to be followed-up </input>
<input  type="button" value="Export to Excel" id='excelExport' />
<input  type="button" value="PMP File" id='pmpexport' />
<br/>
<input name="testjson" id = "testjson"  type="hidden" size = "200" value="{$smarty.session.jqxgridstate nofilter}" maxlength = "10000"/>

        <div id="jqxgrid"  ></div>
        


<!--input value = "Sort" type="button" onclick="$('#jqxgrid').jqxGrid('sortby', 'patientname', 'asc');">  </input>
<input id="refresh" type="button" value="Refresh Data" />
<input type="button" id="saveState" value="Save State" />
<input type="button" id="loadState" value="Load State" /-->


</body>


	<script type="text/javascript">
	{literal}
	var refilldaysselect;
   var data = new Array();
	var source =
	{
		localdata: data,
		datafields:
                [
				    { name: 'active', type: 'string' },
					{ name: 'location', type: 'string' },
					{ name: 'patientname', type: 'string' },
					{ name: 'patientnameexport', type: 'string' },
					{ name: 'firstname', type: 'string' },
					{ name: 'lastname', type: 'string' },
					{ name: 'mrn', type: 'string' },
                    { name: 'refill', type: 'date' },
                    { name: 'status', type: 'string' },
					{ name: 'last_uts', type: 'date' },
					{ name: 'pmp_date', type: 'date' },
					{ name: 'dob', type:'date' },
					{ name: 'zip', type:'string' },
					//{ name: 'next_pcp', type: 'date' },
                    { name: 'pcp', type: 'string'},
					{name: 'risk', type: 'string'},
                    { name: 'action', type: 'string' },
					{name: 'audit', type: 'string'}
                ],
		datatype: "array"
		//sortcolumn: 'patientname',
		//sortdirection: 'asc'
	};
	
	
	
	
		$("#pmpexport").click(function() {

    var mydataload = $("#jqxgrid").jqxGrid('exportdata', 'json',null, true, null, true);
	var myjson = eval("(" + mydataload + ")");
	//console.log(myjson);
	var csvRows = [];
		for(var i = 0; i < myjson.length; i++) {
    var obj = myjson[i];

		//var id = obj["MRN"];
		//var name = obj["Location1"];
		csvRows.push(obj["firstname"] + "," + obj["lastname"] + "," + obj["ZIP"] + "," + obj["DOB"] );
		//console.log(id);
		//console.log(name);
	}
	var csvString = csvRows.join("\r\n");
		var IEwindow = window.open();

	IEwindow.document.write(csvString);
	IEwindow.document.close();
	if (IEwindow.document.execCommand('SaveAs', null,  "pmpexport.csv"))
	{
	IEwindow.close();}
	else
	{
		
		var uri = 'data:application/csv;charset=utf-8,' + escape(csvString);
        var link = IEwindow.document.createElement("a");
        link.href = uri;
        link.style = "visibility:hidden";
        link.download = "pmpexport.csv";
        IEwindow.document.body.appendChild(link);
        link.click();
        IEwindow.document.body.removeChild(link);
		setTimeout(function(){ IEwindow.close(); }, 50);
	}
	
	//$("#jqxgrid").jqxGrid('showcolumn', 'action');
	//$("#jqxgrid").jqxGrid('showcolumn', 'patientname');
	//$("#jqxgrid").jqxGrid('hidecolumn', 'patientnameexport');
	});
	
	
	$("#excelExport").click(function() {
	//alert("test");
	//for (var zz1=0;zz1<data.length;zz1++) {
	//	$("#jqxgrid").jqxGrid('setcellvalue', zz1, 'patientname', 'Export');
	//}
	$("#jqxgrid").jqxGrid('hidecolumn', 'patientname');
	$("#jqxgrid").jqxGrid('hidecolumn', 'action');
	$("#jqxgrid").jqxGrid('showcolumn', 'patientnameexport');
    $("#jqxgrid").jqxGrid('exportdata', 'xls', 'jqxGrid');
	//alert("done?");
	//$("#jqxgrid").jqxGrid('showcolumn', 'patientname');
	});
	
	//$(window).focus(function() {
	//$("#jqxgrid").jqxGrid('showcolumn', 'patientname');
	//$("#jqxgrid").jqxGrid('showcolumn', 'action');
	//$("#jqxgrid").jqxGrid('hidecolumn', 'patientnameexport');
	//});
	
	$(document).click(function(event) {
		window.lastElementClicked = event.target;
		//alert(event.target);
	});

	function refillfilter(value, type) {
	
      refilldaysselect = parseInt(value);

	  var filtergroup = new $.jqx.filter();
	  //var filterlo = filtergroup.createfilter('datefilter', '11/7/2013', 'GREATER_THAN_OR_EQUAL');
	  var filterhi = filtergroup.createfilter('datefilter', '11/14/2013', 'LESS_THAN_OR_EQUAL');
	  //var filterover = filtergroup.createfilter('datefilter', '11/7/2013', 'LESS_THAN_OR_EQUAL');
	  var filterbot  = filtergroup.createfilter('datefilter', '01/01/2013', 'GREATER_THAN_OR_EQUAL');
	  //filtergroup.addfilter(0, filterlo);

	  if (type == 'rx') { // add overdue as or condition for refill
	  	filtergroup.addfilter(0, filterbot);
		filtergroup.addfilter(0, filterhi);
		$('#jqxgrid').jqxGrid('addfilter', 'refill', filtergroup, true);
		return;
	 }
		
      
	  if (type == 'uts'){
	   //filtergroup.addfilter(0, filterlo);
	   //filtergroup.addfilter(0, filterhi);
		$('#jqxgrid').jqxGrid('addfilter', 'uts', filtergroup, true);}

	}
	
	var ddarray = new Array();
	
	///var dd0 = new datedropdown('Next PCP', 'Next PCP', 'next_pcp', '0', {/literal}{if ($smarty.session.next_pcp == "")}'ALL'{else}'{$smarty.session.next_pcp}' {/if }{literal});
	//ddarray.push(dd0);
	var dd0 = new datedropdown('Last UTS', 'Last UTS', 'last_uts', '0', {/literal}{if ($smarty.session.last_uts == "")}'ALL'{else}'{$smarty.session.last_uts}' {/if }{literal});
	ddarray.push(dd0);
	//var dd2 = new datedropdown('UTS', 'UTS', 'uts', '2', {/literal}{if ($smarty.session.uts == "")}'ALL'{else}'{$smarty.session.uts}' {/if }{literal});
	//ddarray.push(dd2);
	var dd1 = new datedropdown('Refill', 'Refill', 'refill', '1', {/literal}{if ($smarty.session.refill == "")}'ALL'{else}'{$smarty.session.refill}' {/if }{literal});
	ddarray.push(dd1);
	
	function inactivefilter(inactiveflag) {
	
      
	  var filtergroup = new $.jqx.filter();
	  //actives;
	  var filteron = filtergroup.createfilter('stringfilter', '1', 'EQUAL');
	  
	  filtergroup.addfilter(0, filteron);
      if (!inactiveflag) {
		$('#jqxgrid').jqxGrid('addfilter', 'active', filtergroup, true);
		 }
	  else
	  { 
        $('#jqxgrid').jqxGrid('removefilter', 'active',  true);	  
		}
	 }
		
   function statusfilter(inactiveflag) {
	
      
	  var filtergroup = new $.jqx.filter();
	  //actives;
	  var filteron = filtergroup.createfilter('stringfilter', '^Inten', 'STARTS_WITH');
	  
	  filtergroup.addfilter(0, filteron);
      if (inactiveflag) {
		$('#jqxgrid').jqxGrid('addfilter', 'status', filtergroup, true);
		 }
	  else
	  { 
        $('#jqxgrid').jqxGrid('removefilter', 'status',  true);	  
		}
	 }
	 
	 function auditfilter(auditcheckbox) {
	
      
	  var filtergroup = new $.jqx.filter();
	  //actives;
	  var filteron = filtergroup.createfilter('stringfilter', 'false', 'STARTS_WITH');
	  
	  filtergroup.addfilter(0, filteron);
	  alert("got it");
      //if (!auditcheckbox.checked) {
	  //   alert("yes");
		$('#jqxgrid').jqxGrid('addfilter', 'audit', filtergroup, true);
	//	 }
	 // else
	  //{ 
	  //  alert("no");
      //  $('#jqxgrid').jqxGrid('removefilter', 'audit',  true);	  
	//	}
	 }
	 
	/*$("#jqxgrid").on("filter", function (event) 
	{   
	   
		var filterinfo1 = $("#jqxgrid").jqxGrid('getfilterinformation');
		var filterfound = false;
		alert('click filter + ' + clickname);  
		if (clickname != "") { clickname = ""; return;} //no need to process further
		for (var zz=0;zz<ddarray.length;zz++) {
		
			filterfound = false;
			for (var y=0;y <filterinfo1.length;y++)
			{ 
			    //alert(filterinfo1[y].filtercolumn);
				
				if ( (filterinfo1[y].filtercolumn == ddarray[zz].data) && (ddarray[zz].data != clickname) && (document.getElementById(ddarray[zz].data).value == 'ALL') ) { ddarray[zz].setrange();} 		 //document.getElementById("refill").value = "range";
				if ( filterinfo1[y].filtercolumn == ddarray[zz].data) {filterfound = true;break;}                                                 //go to next filter
			}
			if (!filterfound) {  //alert('click'+clickname+'notfound'+ddarray[zz].data);
			document.getElementById(ddarray[zz].data).value = 'ALL';}
		
		}
	    //$('#jqxgrid').jqxGrid('refreshfilterrow');
			
	});  */
	/*
	$(document).ready(function() {
	alert('ready');
	}); */
	/////////////////////////////// INIT CODE
	$(window).load(function() {
        //$(document).load(function () {

				
	//var data = new Array();
	var i = 0;
 
	

	
	
	
	//alert("start");
	 
	
	
	{/literal}
	{foreach name=myrowIteration from=$mydata key=id item=myrowData}

        

		var row = {literal} {} {/literal};

		row["active"]		= "{$myrowData.active}";
		row["location"] 	= "{$myrowData.location}";
		row["patientname"] 	= "{$myrowData.lname}, {$myrowData.fname}//{$myrowData.patid}" ;
		row["patientnameexport"] 	= "{$myrowData.lname}, {$myrowData.fname}" ;
				row["firstname"] 	= "{$myrowData.fname}" ;
		row["lastname"] 	= "{$myrowData.lname}" ;
		row["mrn"] 			= "{$myrowData.mrn}";
		row["refill"] 		= "{$myrowData.refill}";
		row["status"] 			= "{$myrowData.status}";
				row["pcp"] 			= "{$myrowData.provname}";
		row["last_uts"] 	= "{$myrowData.last_uts|date_format:"%m/%d/%Y"}";
		row["pmp_date"] 	= "{$myrowData.pmp_date}"; 
				row["dob"] 			= "{$myrowData.dob}";
		row["zip"]          = "{$myrowData.zip}";
		row["action"] 		= "{$myrowData.patid}";
		row["risk"] 		=  {if ($myrowData.risk == "")} "A" {elseif ( $myrowData.risk == "0-3" )} "B"  {elseif ( $myrowData.risk == "4-7" )} "C"  {elseif ( $myrowData.risk == "gt7" )} "D"  {elseif ( $myrowData.risk  >= 0 AND  $myrowData.risk  < 4  )} "B"  {elseif ( $myrowData.risk  >= 4 AND  $myrowData.risk  < 7  )} "C"   {elseif ( $myrowData.risk  >= 7   )} "D"  {elseif ( $myrowData.risk    < 0  )} "A" {else} "A" {/if} ;
		row["audit"]		=  "{$myrowData.audit_flag}" == "1" ? "true//"+"{$myrowData.patid}":"false//"+"{$myrowData.patid}";
		data[i] = row;
	    i = i + 1;
	{/foreach}

	{literal}
	//alert("start");
	
	
	
	var linkrenderer = function (row, column, value) {
                
                //return '<div id="patid'+row+'"class="dropdown dropdown-tip"> <ul class="dropdown-menu"> <li><a href="./index.php?module=REG_Patient&action=PrescriptionRefill&record=1">Refill</a></li>  <li><a href="./index.php?module=REG_Patient&action=PatientEncounter&record=2">Encounter</a></li></ul> </div><input type="button" value="Action" data-dropdown="#patid'+row+'" class="">	';
				return '<select id="mysort'+row+'" name="mysort'+row+'" onchange="switch (document.getElementById(\'mysort'+row+'\').selectedIndex) { case 1: loadUrl(\'./index.php?module=REG_Patient&action=PrescriptionRefill&record='+value+'\'); break; case 2:  loadUrl(\'./index.php?module=REG_Patient&action=PatientEncounter&record='+value+'\'); break; case 3: loadUrl(\'./index.php?module=REG_Patient&action=riskevaluation&patid='+value+'\');break;}"> <option value="Action"  selected>Action</option><option value="Refill" >Refill</option><option value="Enc" >Encounter</option><option value="risk" >Risk Evaluation</option>	</select>';
    }
	
	var auditrenderer = function (row, column, value) {
	        // call function update audit and pass parameters
	        var fstr = "updateaudit(this, '" + row + "','" + value + "')";
	        if (value.split("//")[0] == "false")
				return '<input type="checkbox"  onclick="'+ fstr + ';"> ';
			else
				return '<input type="checkbox"  checked onclick="'+ fstr + ';"> ';	
	}
	
	var auditfilterrenderer = function(value) {
		 return '<div style="font-size:80%;"><p>Audit Flag</p><p> Click to</p><p> Update</p></div>'; 
		        //for later if filter is needed
				//return '<input type="checkbox" value=Bike1" checked onclick="alert(\'me\');auditfilter(this);">';
	}
	
		var riskrenderer = function(row, column,value) {
		 if (value == "A")	return '<p>NA</p>';
		 if (value == "B")	return '<p>LOW</p>';
		 if (value == "C")	return '<p>MODERATE</p>';
		 if (value == "D")	return '<p>HIGH</p>';
		 return '<p>NA</p>';
			
	}
	var columnsrenderer = function (value) {
	//return '<div style="text-align: center; margin-top: 5px;">' + value + '</div>';

	//if (value == 'Refill')
	//	return '<div>Refill <select style="width:75px;" id="mysortrefill" name="mysortrefill" onclick="if(event.stopPropagation)event.stopPropagation();else event.cancelBubble=true;" onchange="switch(document.getElementById(\'mysortrefill\').selectedIndex) { case 0: $(\'#jqxgrid\').jqxGrid(\'removefilter\', \'refill\', true); break;  case 1: refillfilter(7, \'rx\'); break;  case 2: refillfilter(14, \'rx\');break;}"> <option value="Action"  selected>ALL</option><option value="Refill7" >Next 7 Days</option><option value="Refill14" >Next 14 Days</option>&nbsp &nbsp</select> </div>&nbsp &nbsp';
	//if (value == 'UTS')
	//	return '<div>UTS<select style="width:75px;" id="mysortuts" name="mysortuts" onchange="switch(document.getElementById(\'mysortuts\').selectedIndex) { case 0: $(\'#jqxgrid\').jqxGrid(\'removefilter\', \'uts\', true); break;  case 1: refillfilter(7, \'uts\'); break;  case 2: refillfilter(14, \'uts\');break;}"> <option value="Action"  selected>ALL</option><option value="Refill7" >Next 7 Days</option><option value="Refill14" >Next 14 Days</option>	</select></div>';
	//if (value == 'Next PCP') return ddarray[0].render;
	//if (value == 'Patient Name') return '<p>Patient</p> <p> Name </p>';
	for (var k = 0; k < ddarray.length; k++) {
		if (value == ddarray[k].name) {
			return ddarray[k].render1();
			//return ddarray[k].render;
			break;
		};
	};
	return '<div style="text-align: center; margin-top: 5px;font-weight:bold;">' + value + '</div>';
	}
	
	var patientrenderer = function (row, columnfield, value, defaulthtml, columnproperties) {
			 var res = value.split("//");
             return   '<a href="./index.php?module=REG_Patient&action=DetailView&record='+ res[1] +'">' + res[0] + '</a>';
    }
	
	var dateoverduerenderer = function (row, columnfield, value, defaulthtml, columnproperties) {
		if (value == "") return;

		var _MS_PER_DAY = 1000 * 60 * 60 * 24;
		var today = new Date();
		//var highdate = new Date(value);
		var utc1 = Date.UTC(today.getFullYear(), today.getMonth(), today.getDate());
		var utc2 = Date.UTC(value.getFullYear(), value.getMonth(), value.getDate());
	 
		var diffdays = Math.floor((utc2 - utc1) / _MS_PER_DAY);
	 
	 
        if (diffdays < 0) {
            return  '<div style="color:red;">' + (value.getMonth()+1) + '/'+ value.getDate() + '/'+  value.getFullYear(); + '</div>';;
         }
        return   '<div style="color:black;">' + (value.getMonth()+1) + '/'+ value.getDate() + '/'+  value.getFullYear(); + '</div>';
    }
	
	
	var datecellclass = function (row, columnfield, value) {
	 if (value == "") return;
	 var _MS_PER_DAY = 1000 * 60 * 60 * 24;
	 var today = new Date();
	 var highdate = new Date(value);
	 var utc1 = Date.UTC(today.getFullYear(), today.getMonth(), today.getDate());
	 var utc2 = Date.UTC(highdate.getFullYear(), highdate.getMonth(), highdate.getDate());
	 
	 var diffdays = Math.floor((utc2 - utc1) / _MS_PER_DAY);
	 
	 
                if (diffdays < 0) {
                    return 'red';
                }
 
                //else return 'green';
     }
			 
	var dataAdapter = new $.jqx.dataAdapter(source);
	
	
	
	
	$("#jqxgrid").jqxGrid(
	{
		columnsheight: 35,
		//theme: 'office',
		width: 1210,
		height: 600,
		source: dataAdapter,
		showfilterrow: true,
		//groupable: true,
		sortable: true,
		filterable: true,
		autoshowcolumnsmenubutton: false,
				editable: true,
		selectionmode: 'singlecell',
		editmode: 'click',
		
		
		columns: [
		    { text: 'Active', hidden: true,  datafield: 'active', width: 20,  filterable:true,filtertype: 'textbox' , editable:false },
			{ text: 'Location', filtertype: 'textbox', filtercondition: 'starts_with', datafield: 'location', width: 80, renderer:columnsrenderer, sortable: true, editable:false  },
			{ text: 'Patient Name', filtertype: 'textbox', filtercondition: 'starts_with', datafield: 'patientname', width: 140, renderer:columnsrenderer, sortable: true, cellsrenderer:patientrenderer , editable:false },
			{ text: 'Patient Name', datafield: 'patientnameexport', width: 140, hidden:true, editable:false },
			{ text: 'firstname', datafield: 'firstname', width: 30, hidden:true,editable:false},
			{ text: 'lastname', datafield: 'lastname', width: 30, hidden:true,editable:false},
			{ text: 'MRN', filtertype: 'textbox', filtercondition: 'starts_with', datafield: 'mrn', renderer:columnsrenderer, width: 110, editable:false },
			{ text: 'Refill',   datafield: 'refill', filtertype: 'range', width: 140,  renderer:columnsrenderer,  sortable:true, cellsrenderer:dateoverduerenderer, cellsformat: 'd', editable:false },
						{ text: 'PCP', datafield: 'pcp', filtertype: 'textbox', width: 120,  renderer:columnsrenderer, editable:false  },
			{ text: 'Status',   hidden: true, datafield: 'status',  width: 20, filterable:true,filtertype: 'textbox' , editable:false },
			{ text: 'Last UTS', filtertype: 'range',  datafield: 'last_uts',  width: 140,   renderer:columnsrenderer, sortable:true, cellsformat: 'd', editable:false  },
			{ text: '<p>PMP Date</p> <p>(editable)</p>', filtertype: 'range',  datafield: 'pmp_date',  width: 140,   renderer:columnsrenderer, sortable:true, cellsformat: 'd', editable:true , 
				validation: function (cell, value) 
				{
					var myid = $('#jqxgrid').jqxGrid('getcelltext', cell.row, 'patientname'); console.log("myid is " + myid);console.log("date is"+value);
					var date_string;
					var res = myid.split("//");
					try{date_string = (value.getMonth() + 1) + '/' + value.getDate() + '/' +  value.getFullYear();}catch (err){console.log (err.message);return false;}
					$.ajax({
									url: 'index.php?entryPoint=updatepatientaudit&update_action=pmp&pmp_date='+date_string+'&pid='+res[1],
									//data: {my_json_data: "{ text: 'Provider', editable:false, filtertype: 'textbox', hidden: false, filtercondition: 'starts_with', datafield: 'provider', width: 140,  sortable: true, cellsrenderer:cellsrenderer }"},
									type: 'POST',
									async: true,
									dataType: 'text',
									cache:false,
									success:function(text){
										console.log('AJAX SUCCESS' + text);
									}, 
									complete : function(text){
									    
										console.log('AJAX COMPLETE');
									
									}
							});
							return true;
			
				}
			},
			{ text: 'DOB', filtertype: 'date',  datafield: 'dob',  width: 20, cellsformat: 'd',hidden:true,editable:false },
			{ text: 'ZIP', datafield: 'zip', filtertype: 'textbox', width: 6,  hidden:true, editable:false},
			//{ text: 'Next PCP', filtertype: 'date',  datafield: 'next_pcp',  width: 140,    renderer:columnsrenderer, sortable:true, cellsformat: 'd' },

			{ text: 'Risk Level', datafield: 'risk', filtertype: 'list', filteritems: ['LOW', 'MODERATE', 'HIGH', 'NA'], cellsrenderer:riskrenderer,renderer:columnsrenderer, width: 100, editable:false },
			{ text: 'Action', datafield: 'action',  width: 120,  cellsrenderer:linkrenderer, filterable:false, renderer:columnsrenderer, sortable:false, menu:false , editable:false },
			{ text: 'Audit', datafield: 'audit',  width: 60,  cellsrenderer:auditrenderer, filterable:false, renderer:auditfilterrenderer,sortable:false, menu:false , editable:false }
		]//,			groups: ['PCP']
	});
	
	//alert("grid");
	var localizationobj = {};
	localizationobj.filterchoosestring = 'ALL RISK';
	localizationobj.emptydatastring = "No data to display. Please verify filters and clear unnecessary ones.",
	$("#jqxgrid").jqxGrid('localizestrings', localizationobj);
	$("#jqxgrid").jqxGrid('selectionmode', 'singlecell');
	
	var myprevstate = document.getElementById("testjson").value;
    //var setinactive = false;	 //default is false
	
	//alert(myprevstate);
	if (myprevstate != "") 
	 {
	   //alert("in my pev state"); alert(JSON.parse(myprevstate));
	   $("#jqxgrid").jqxGrid('loadstate',JSON.parse(myprevstate));
	    
		//alert("what happened?");
		//var filtersinfo = $('#jqxgrid').jqxGrid('getfilterinformation');
		//var setinactive = true;  //if previous state, need to check if previous state set inactive
		//for (var j=0;j<filtersinfo.length;j++)
		//{ 
			
		//	if (filtersinfo[j].filtercolumn == 'active') {setinactive = false; }// previous state also contained only active records
		//	if (filtersinfo[j].filtercolumn == 'status') {document.getElementById("statuscheck").checked = true; }
		//}
		//now clear the session
		//document.getElementById("testjson").value = "";
		clearsession();
		
	 }	
	 //else inactivefilter(false);
 //alert("what happened?");
	//document.getElementById("inactivecheck").checked = setinactive;
	for (var z = 0; z < ddarray.length; z++) {
		ddarray[z].renderprevious();
	}
	if ( document.getElementById("inactivecheck").checked ) {
		inactivefilter(true);
	} else {inactivefilter(false);}
	if ( document.getElementById("statuscheck").checked ) {
		statusfilter(true);
	} else {statusfilter(false);}
	$('#jqxgrid').jqxGrid('applyfilters');
	
	

	
	}); //window load function

 </script>
	{/literal}
