<?php


global $theme;
$theme_path="themes/".$theme."/";
$image_path=$theme_path."images/";
//require_once ($theme_path."layout_utils.php");
echo "<link rel='stylesheet' type='text/css' href='../themes/" . $theme . "/style.css' />";

//SESSION VARIABLES
if($_SESSION['test']==Null)
{
$_SESSION['test']=1;
}
else
{
$_SESSION['test']=NULL;
}
var_dump($_SESSION['test']);

global $mod_strings;
global $app_list_strings;
global $app_strings;
require_once('include/DetailView/DetailView2.php');
require_once('include/EditView/EditView2.php');
$metadataFile = $this->getMetaDataFile();
 	    $this->dv = new DetailView2();
 	    $this->dv->ss =&  $this->ss;
 	    $this->dv->setup($this->module, $this->bean, $metadataFile, get_custom_file_if_exists('include/DetailView/DetailView.tpl'));
		
		
		//EncounterView
		$this->dv3 = new EditView();
        $this->dv3->ss =& $this->ss;
		$encounterMetadataFile = 'custom/modules/REG_Encounter/editviewdefs_inpatient1.php';
		$this->bean3 = new REG_Encounter();
		//----------------To add patient name
		$this->bean3->reg_patient_reg_encounter_name=$this->bean->name;
		$this->bean3->reg_patient_reg_encounterreg_patient_ida=$this->bean->id;
		//-----------------
		//var_dump($this->bean3); 
		$this->dv3->setup('REG_Encounter', $this->bean3, $encounterMetadataFile, get_custom_file_if_exists('include/EditView/EditView.tpl'));
		
		//javascript
		echo "<script src='custom/jquery/jquery.js'></script><script src='custom/jquery/colResizable-1.3.min.js'></script>";
		echo "<script type='text/javascript'>\$(function(){\$('table').colResizable();});</script>";
		
		//display treatment plan details
      $this->dv2 = new DetailView2();
      $this->dv2->ss =& $this->dv->ss;
      $this->bean2 = new REG_Treatment_Plan();
	  $query = "SELECT * FROM reg_treatment_plan a, reg_treatment_plan_reg_patient_c b WHERE a.id = b.reg_treatment_plan_reg_patientreg_treatment_plan_idb and a.status!='Closed' and b.reg_treatment_plan_reg_patientreg_patient_ida = '".$this->bean->id."' and b.deleted!=1";
	
    $result = $this->bean->db->query($query, true); 
     $this->row = $this->bean->db->fetchByAssoc($result); 
    $tmp;
     //var_dump($this->bean);
	  if(!empty($this->row))
	 {
	$tmp = $this->row['reg_treatment_plan_reg_patientreg_treatment_plan_idb'];
	// echo $tmp;
      $this->bean2->retrieve($tmp);
      $treatment_planMetadataFile = 'modules/REG_Treatment_Plan/metadata/detailviewdefs.php';
      $treatment_planTemplate = 'custom/modules/REG_Treatment_Plan/tpls/treatment_planDetailView.tpl';
     // $this->dv2->setup('REG_Treatment_Plan', $this->bean2, $treatment_planMetadataFile, get_custom_file_if_exists('include/DetailView/DetailView.tpl'));
	   $this->dv2->setup('REG_Treatment_Plan', $this->bean2, $treatment_planMetadataFile, $treatment_planTemplate);
      }
	  
	
	//echo "<h1 color='r\"e\"d'>hahhahah</h1>";
	
	
	 if(empty($this->bean->id)){
            sugar_die($GLOBALS['app_strings']['ERROR_NO_RECORD']);
        }		

        echo "<table ><tr><td  style='border-color: rgb( 100, 100, 255); border-style: ridge;border-width: 2px;' width='60%'><h3>Patient Encounter ".$this->bean->name."</h3>";
        $this->dv->process();
       // echo $this->dv->display();
		$this->dv3->process();
		echo $this->dv3->display("Encounter View");
		$query2 = "SELECT * FROM reg_encounter where id in( SELECT  reg_patient_reg_encounterreg_encounter_idb from reg_patient_reg_encounter_c where reg_patient_reg_encounterreg_patient_ida = '".$this->bean->id."' AND deleted!=1 ) order by date_modified desc" ;
		$result = $this->bean->db->query($query2, true); 
		
		if(($row = $this->bean->db->fetchByAssoc($result) ) != null )
		{
		 echo "<script>document.getElementById('summary1').value='".$row['date_modified']."'</script>";
		}
		if(($row = $this->bean->db->fetchByAssoc($result) ) != null )
		{
		 echo "<script>document.getElementById('summary2').value='".$row['date_modified']."'</script>";
		}
		
	//ENTER here watever you want to display
		echo "</td>";
		
		
		
		
// Display Treatment Plan
		if(!empty($this->row))
		{
		echo "<td style='border-color: rgb( 100, 100, 255); border-style: ridge;border-width: 2px;' valign='top' rowspan='3' width='40%'>";
		$this->dv2->process();
        echo $this->dv2->display();
	    $this->row=NULL;
		$query1 = "SELECT * FROM reg_structured_element where id in( SELECT reg_treatm68ecelement_idb from reg_treatment_plan_reg_structured_element_c where reg_treatment_plan_reg_structured_elementreg_treatment_plan_ida = '".$tmp."' AND deleted!=1)" ;
     	$result = $this->bean->db->query($query1, true); 
		$flag=1;
		$count=0;
		while (($row = $this->bean->db->fetchByAssoc($result) ) != null ){ 
			$count=$count+1;
			if($flag==1){
				$flag=0;
				echo"<br/>";
				echo "<h3>Structured Elements</h3>";
				echo "<table cellpadding=\"0\" cellspacing=\"0\" width=\"100%\" border=\"0\" class=\"list view\"><tbody><tr height=\"20\"><th scope=\"col\" width=\"25%\"><span sugar=\"slot0\" style=\"white-space:normal;\">Summary &nbsp;</span></th><th scope=\"col\" width=\"25%\"><span sugar=\"slot10\" style=\"white-space:normal;\">Type &nbsp;</span></th><th scope=\"col\" width=\"25%\"><span sugar=\"slot1\" style=\"white-space:normal;\">Start Date&nbsp;</span></th><th scope=\"col\" width=\"25%\"><span sugar=\"slot1\" style=\"white-space:normal;\ width=\"25%\">End Date &nbsp;</span></th></tr>";
			}
			//print_r($row);
			//print_r($row);
			//echo "<br/>";
			//echo $row['id'].".........".$row['name'];
			if($count%2==1){
				echo "<tr height=\"20\" class=\"oddListRowS1\"><td scope=\"row\" valign=\"top\" class=\"\"><span sugar=\"slot1b\"><a href=\"?action=ajaxui#ajaxUILoc=index.php%3Fmodule%3DREG_Structured_Element%26action%3DDetailView%26record%3D".$row['id']."\">".$row['name']."</a></span></td><td scope=\"row\" valign=\"top\" class=\"\"><span sugar=\"slot2b\">".$row['setype']."</span></td><td scope=\"row\" valign=\"top\" class=\"\"><span sugar=\"slot2b\">".$row['startdate']."</span></td><td scope=\"row\" valign=\"top\" class=\"\"><span sugar=\"slot2b\">".$row['enddate']."</span></td></tr>";
			}
			else
			{
				echo "<tr height=\"20\" class=\"evenListRowS1\"><td scope=\"row\" valign=\"top\" class=\"\"><span sugar=\"slot1b\"><a href=\"?action=ajaxui#ajaxUILoc=index.php%3Fmodule%3DREG_Structured_Element%26action%3DDetailView%26record%3D".$row['id']."\">".$row['name']."</a></span></td><td scope=\"row\" valign=\"top\" class=\"\"><span sugar=\"slot2b\">".$row['setype']."</span></td><td scope=\"row\" valign=\"top\" class=\"\"><span sugar=\"slot2b\">".$row['startdate']."</span></td><td scope=\"row\" valign=\"top\" class=\"\"><span sugar=\"slot2b\">".$row['enddate']."</span></td></tr>";
				//echo "<tr height=\"20\" class=\"evenListRowS1\"><td scope=\"row\" valign=\"top\" class=\"\"><span sugar=\"slot5b\"><a href=\"?action=ajaxui#ajaxUILoc=index.php%3Fmodule%3DREG_Structured_Element%26action%3DDetailView%26record%".$row['id']."\">".$row['name']."</a></span></td><td scope=\"row\" valign=\"top\" class=\"\"><span sugar=\"slot6b\">"$row['startdate']."</span></td><td scope=\"row\" valign=\"top\" class=\"\"><span sugar=\"slot2b\">".$row['enddate']."</span></td></tr>";
			}
		
			//return $row; 
		} 
		if($flag==0)
		{ 
			echo "</tbody></table>";
		
		}
		//echo $tmp;
		//DISPLAYING TREATMENT PLAN NOTES
		$query1 = "SELECT * FROM notes a where a.id in( SELECT reg_treatment_plan_notesnotes_idb from reg_treatment_plan_notes_c  b where  reg_treatment_plan_notesreg_treatment_plan_ida = '".$tmp."' AND deleted!=1)" ;
     	$result = $this->bean->db->query($query1, true); 
		$flag=1;
		$count=0;
		while (($row = $this->bean->db->fetchByAssoc($result) ) != null ){ 
			$count=$count+1;
			if($flag==1){
				$flag=0;
				echo"<br/>";
				echo "<h3>Treatment Plan Elements</h3>";
				echo "<table cellpadding=\"0\" cellspacing=\"0\" width=\"100%\" border=\"0\" class=\"list view\"><tbody><tr height=\"20\"><th scope=\"col\" width=\"25%\"><span sugar=\"slot0\" style=\"white-space:normal;\">Subject &nbsp;</span></th><th scope=\"col\" width=\"50%\"><span sugar=\"slot10\" style=\"white-space:normal;  \">Description &nbsp;</span></th><th scope=\"col\" width=\"25%\"><span sugar=\"slot1\" style=\"white-space:normal;\ width=\"25%\">Created Date &nbsp;</span></th></tr>";
			}
			//print_r($row);
			//print_r($row);
			//echo "<br/>";
			//echo $row['id'].".........".$row['name'];
			if($count%2==1){
				echo "<tr height=\"20\" class=\"oddListRowS1\"><td scope=\"row\" valign=\"top\" class=\"\"><span sugar=\"slot1b\"><a href=\"?action=ajaxui#ajaxUILoc=index.php%3Fmodule%3DNotes%26action%3DDetailView%26record%3D".$row['id']."\">".$row['name']."</a></span></td><td scope=\"row\" valign=\"top\" class=\"\"><span sugar=\"slot2b\">".$row['description']."</span></td><td scope=\"row\" valign=\"top\" class=\"\"><span sugar=\"slot2b\">".$row['date_entered']."</span></td></tr>";
			}
			else
			{
				echo "<tr height=\"20\" class=\"oddListRowS1\"><td scope=\"row\" valign=\"top\" class=\"\"><span sugar=\"slot1b\"><a href=\"?action=ajaxui#ajaxUILoc=index.php%3Fmodule%3DNotes%26action%3DDetailView%26record%3D".$row['id']."\">".$row['name']."</a></span></td><td scope=\"row\" valign=\"top\" class=\"\"><span sugar=\"slot2b\">".$row['description']."</span></td><td scope=\"row\" valign=\"top\" class=\"\"><span sugar=\"slot2b\">".$row['date_entered']."</span></td></tr>";
			
			}
		
			//return $row; 
		} 
		if($flag==0)
		{ 
			echo "</tbody></table>";
		
		}
		
		//Displaying activities
		//DISPLAYING TREATMENT PLAN NOTES
		$query1 = "SELECT * FROM tasks where parent_id='".$tmp."' AND deleted!=1" ;
     	$result = $this->bean->db->query($query1, true); 
		$flag=1;
		$count=0;
		while (($row = $this->bean->db->fetchByAssoc($result) ) != null ){ 
			$count=$count+1;
			if($flag==1){
				$flag=0;
				echo"<br/>";
				echo "<h3>Activites</h3>";
				echo "<table cellpadding=\"0\" cellspacing=\"0\" width=\"100%\" border=\"0\" class=\"list view\"><tbody><tr height=\"20\"><th scope=\"col\" width=\"25%\"><span sugar=\"slot0\" style=\"white-space:normal;\">Subject &nbsp;</span></th><th scope=\"col\" width=\"50%\"><span sugar=\"slot10\" style=\"white-space:normal;  \">Description &nbsp;</span></th><th scope=\"col\" width=\"25%\"><span sugar=\"slot1\" style=\"white-space:normal;\ width=\"25%\">Created Date &nbsp;</span></th></tr>";
			}
			//print_r($row);
			//print_r($row);
			//echo "<br/>";
			//echo $row['id'].".........".$row['name'];
			if($count%2==1){
				echo "<tr height=\"20\" class=\"oddListRowS1\"><td scope=\"row\" valign=\"top\" class=\"\"><span sugar=\"slot1b\"><a href=\"?action=ajaxui#ajaxUILoc=index.php%3Fmodule%3DTasks%26action%3DDetailView%26record%3D".$row['id']."\">".$row['name']."</a></span></td><td scope=\"row\" valign=\"top\" class=\"\"><span sugar=\"slot2b\">".$row['description']."</span></td><td scope=\"row\" valign=\"top\" class=\"\"><span sugar=\"slot2b\">".$row['date_entered']."</span></td></tr>";
			}
			else
			{
				echo "<tr height=\"20\" class=\"oddListRowS1\"><td scope=\"row\" valign=\"top\" class=\"\"><span sugar=\"slot1b\"><a href=\"?action=ajaxui#ajaxUILoc=index.php%3Fmodule%3DTasks%26action%3DDetailView%26record%3D".$row['id']."\">".$row['name']."</a></span></td><td scope=\"row\" valign=\"top\" class=\"\"><span sugar=\"slot2b\">".$row['description']."</span></td><td scope=\"row\" valign=\"top\" class=\"\"><span sugar=\"slot2b\">".$row['date_entered']."</span></td></tr>";
			
			}
		
			//return $row; 
		} 
		if($flag==0)
		{ 
			echo "</tbody></table>";
		
		}
		
		
		//echo "<table cellpadding=\"0\" cellspacing=\"0\" width=\"100%\" border=\"0\" class=\"list view\"><tbody><tr height=\"20\"><th scope=\"col\" width=\"45%\"><span sugar=\"slot0\" style=\"white-space:normal;\">Name &nbsp;</span></th><th scope=\"col\" width=\"45%\"><span sugar=\"slot1\" style=\"white-space:normal;\">Date Modified &nbsp;</span></th><th scope=\"col\" width=\"45%\"><span sugar=\"slot1\" style=\"white-space:normal;\">&nbsp;</span></th></tr><tr height=\"20\" class=\"oddListRowS1\"><td scope=\"row\" valign=\"top\" class=\"\"><span sugar=\"slot1b\"><a href=\"?action=ajaxui#ajaxUILoc=index.php%3Fmodule%3DREG_Structured_Element%26action%3DDetailView%26record%3D2a7c04e6-512e-f69e-4f38-50d3470f645b\">Test2</a></span></td><td scope=\"row\" valign=\"top\" class=\"\"><span sugar=\"slot2b\">12/20/2012 05:16pm</span></td><td scope=\"row\" valign=\"top\" class=\"inlineButtons\"></td></tr><tr height=\"20\" class=\"evenListRowS1\"><td scope=\"row\" valign=\"top\" class=\"\"><span sugar=\"slot5b\"><a href=\"?action=ajaxui#ajaxUILoc=index.php%3Fmodule%3DREG_Structured_Element%26action%3DDetailView%26record%3D9615402c-b343-64d8-2c3c-50d33d6780a6\">Test1</a></span></td><td scope=\"row\" valign=\"top\" class=\"\"><span sugar=\"slot6b\">12/20/2012 04:33pm</span></td><td scope=\"row\" valign=\"top\" class=\"inlineButtons\"></td></tr></tbody></table>";
		echo "</td></tr>";
		}
		
		//display encounter list view
		//$query2 = "SELECT * FROM reg_structured_element where id in( SELECT reg_treatm68ecelement_idb from reg_treatment_plan_reg_structured_element_c where reg_treatment_plan_reg_structured_elementreg_treatment_plan_ida = '".$tmp."' AND deleted!=1)" ;
		$query2 = "SELECT * FROM reg_encounter where id in( SELECT  reg_patient_reg_encounterreg_encounter_idb from reg_patient_reg_encounter_c where reg_patient_reg_encounterreg_patient_ida = '".$this->bean->id."' AND deleted!=1)" ;
		$result = $this->bean->db->query($query2, true); 
		
		if(($row = $this->bean->db->fetchByAssoc($result) ) != null )
		{
			echo "<td style='border-color: rgb( 100, 100, 255); border-style: ridge;border-width: 2px;' >";
			//$query1 = "SELECT * FROM reg_structured_element where id in( SELECT reg_treatm68ecelement_idb from reg_treatment_plan_reg_structured_element_c where reg_treatment_plan_reg_structured_elementreg_treatment_plan_ida = '".$tmp."' AND deleted!=1)" ;
			//$result = $this->bean->db->query($query1, true); 
			$flag1=1;
			$count=0;
			do{ 
				$count=$count+1;
				if($flag1==1){
					$flag1=0;
					echo "<h3>Encounters</h3>";
					echo "<table cellpadding=\"0\" cellspacing=\"0\" width=\"100%\" border=\"0\" class=\"list view\"><tbody><tr height=\"20\"><th scope=\"col\" width=\"45%\"><span sugar=\"slot0\" style=\"white-space:normal;\">Summary &nbsp;</span></th><th scope=\"col\" width=\"45%\"><span sugar=\"slot1\" style=\"white-space:normal;\">Created Date &nbsp;</span></th><th scope=\"col\" width=\"45%\"><span sugar=\"slot1\" style=\"white-space:normal;\">Created By&nbsp;</span></th></tr>";
				}
				//print_r($row);
				//print_r($row);
//			echo "<br/>";
				//echo $row['id'].".........".$row['name'];
				$query3 = "SELECT first_name,last_name from users where id='".$row['created_by']."'";
				$result2 = $this->bean->db->query($query3, true); 
				$row2=$this->bean->db->fetchByAssoc($result2);

				if($count%2==1){
					echo "<tr height=\"20\" class=\"oddListRowS1\"><td scope=\"row\" valign=\"top\" class=\"\"><span sugar=\"slot1b\"><a href=\"?action=ajaxui#ajaxUILoc=index.php%3Fmodule%3DREG_Encounter%26action%3DDetailView%26record%3D".$row['id']."\">".$row['summary']."</a></span></td><td scope=\"row\" valign=\"top\" class=\"\"><span sugar=\"slot2b\">".$row['date_entered']."</span></td><td scope=\"row\" valign=\"top\" class=\"\"><span sugar=\"slot2b\">".$row2['first_name']."&nbsp;".$row2['last_name']."</span></td></tr>";
				}
				else
				{
					echo "<tr height=\"20\" class=\"evenListRowS1\"><td scope=\"row\" valign=\"top\" class=\"\"><span sugar=\"slot1b\"><a href=\"?action=ajaxui#ajaxUILoc=index.php%3Fmodule%3DREG_Encounter%26action%3DDetailView%26record%3d".$row['id']."\">".$row['summary']."</a></span></td><td scope=\"row\" valign=\"top\" class=\"\"><span sugar=\"slot2b\">".$row['date_entered']."</span></td><td scope=\"row\" valign=\"top\" class=\"\"><span sugar=\"slot2b\">".$row2['first_name']."&nbsp;".$row2['last_name']."</span></td></tr>";
				}
		
				//return $row; 
			} while (($row = $this->bean->db->fetchByAssoc($result) ) != null );
				if($flag1==0)
				{ 
					echo "</tbody></table>";
		
				}
			//echo "<table cellpadding=\"0\" cellspacing=\"0\" width=\"100%\" border=\"0\" class=\"list view\"><tbody><tr height=\"20\"><th scope=\"col\" width=\"45%\"><span sugar=\"slot0\" style=\"white-space:normal;\">Name &nbsp;</span></th><th scope=\"col\" width=\"45%\"><span sugar=\"slot1\" style=\"white-space:normal;\">Date Modified &nbsp;</span></th><th scope=\"col\" width=\"45%\"><span sugar=\"slot1\" style=\"white-space:normal;\">&nbsp;</span></th></tr><tr height=\"20\" class=\"oddListRowS1\"><td scope=\"row\" valign=\"top\" class=\"\"><span sugar=\"slot1b\"><a href=\"?action=ajaxui#ajaxUILoc=index.php%3Fmodule%3DREG_Structured_Element%26action%3DDetailView%26record%3D2a7c04e6-512e-f69e-4f38-50d3470f645b\">Test2</a></span></td><td scope=\"row\" valign=\"top\" class=\"\"><span sugar=\"slot2b\">12/20/2012 05:16pm</span></td><td scope=\"row\" valign=\"top\" class=\"inlineButtons\"></td></tr><tr height=\"20\" class=\"evenListRowS1\"><td scope=\"row\" valign=\"top\" class=\"\"><span sugar=\"slot5b\"><a href=\"?action=ajaxui#ajaxUILoc=index.php%3Fmodule%3DREG_Structured_Element%26action%3DDetailView%26record%3D9615402c-b343-64d8-2c3c-50d33d6780a6\">Test1</a></span></td><td scope=\"row\" valign=\"top\" class=\"\"><span sugar=\"slot6b\">12/20/2012 04:33pm</span></td><td scope=\"row\" valign=\"top\" class=\"inlineButtons\"></td></tr></tbody></table>";
			echo "</td></tr>";
		}
		
		
		//displaying alerts
		echo "<tr><td ><h3 style='color:red;'>Alerts</h3><div id='REG_Treatment_Plan_detailview_tabs'><div><div id='detailpanel_1' class='detail view  detail508 '><table id='DEFAULT' class='panelContainer' cellspacing='0' border='1'><tbody><tr>
		<td width='12.5%' scope='col'>1.</td><td  width='77.5%' style='color:red;'>Treatment Plan is not completed yet</td></tr><tr>
		<td width='12.5%' scope='col'>2.</td><td width='77.5%' style='color:red;'>Blood test done on date 19-Dec-2012 was found to contain alchohol above allowed limit</td></tr></tbody></table></div></div></div></td><td></td></tr></table>";
		 
	//  <table border='1'><tr><td>Treatment Plan is not completed yet</td></tr><tr><td>Blood test done on date 19-Dec-2012 was found to contain alchohol above allowed limit</td></tr></table>
		
		

?>