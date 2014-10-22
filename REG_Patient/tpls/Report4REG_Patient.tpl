{literal}<style type="text/css">
	table.view { border-collapse:collapse; }table.view td, table.view th { border:1px solid  rgb(171, 195, 215);padding:5px; } table.view tr:nth-of-type(odd) { background-color: #def;}</style>{/literal}
	
<h3>{$title}</h3>
<table class = "list view" style="table-layout:fixed;width:600px"><tr><th width="20%">Name</th><th width="10%">MRN</th><th width="20%">Provider</th><th width="10%">In-Active Date</th></tr>
	{foreach name=provrowIteration from=$data item=provrowData}
		<tr><td>{$provrowData.lname},&nbsp{$provrowData.fname}</td><td>{$provrowData.mrn}</td><td>{$provrowData.provname}</td><td>{$provrowData.date_inactive}</td></tr>
	{foreachelse}
		<tr><td colspan="4" align="center">No records found with In-Active Date</td></tr>
	{/foreach}
</table>

