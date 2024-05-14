<html>
<head>
<style>
input[type="submit"] {
  border: none;
  background-color: white; 
  color: black; 
  border: 2px solid #4CAF50;
  padding: 16px 32px;
  text-align: center;
  text-decoration: none;
  display: inline-block;
  font-size: 16px;
  margin: 4px 2px;
  transition-duration: 0.4s;
  cursor: pointer;
}

input[type="submit"]:hover {
  background-color: #258f25;
  color: white;
}

input[type="text"] {
  border: none;
  background-color: white; 
  color: black; 
  border: 2px solid #4CAF50;
  padding: 16px 32px;
  text-align: center;
  text-decoration: none;
  display: inline-block;
  font-size: 16px;
  margin: 4px 2px;
  transition-duration: 0.4s;
  cursor: pointer;
}

input[type="text"]:hover {
  background-color: #f7f7f7;
}

table {
	border:1px solid #b3adad;
	border-collapse:collapse;
	padding:5px;
}
table th {
	border:1px solid #b3adad;
	padding:5px;
	background: #f0f0f0;
	color: #313030;
}
table td {
	border:1px solid #b3adad;
	text-align:center;
	padding:5px;
	background: #ffffff;
	color: #313030;
}
		
</style>

</head>
<body>

<a href="http://localhost/Phase-3_php_Demo/">
<h1><span
style = "
 -webkit-text-stroke-width: 1px;
 -webkit-text-stroke-color: black;
 color: white;
 font-weight: bold;
 display: inline-block;
 font-family: Arial;
"
><strong>Arlington Sprouts : Display Vendors</span></strong></h1></a>
<hr/>

<form method="post">
	<fieldset><legend>Display Vendor</legend>
	<label for="fname">Enter Name/ID or Leave Blank for All:</label><br>
	<input type="text" name="nameID" placeholder="Name/ID"> 
	<input type="submit" name="display" value="Display"><br></fieldset>
</form>

<?php
	require './Module.php';
	$module = new Module();
	
	echo"<hr>"; // adds a horizontal line to indicate start of table
	if(isset($_POST['display'])){
		display($_POST['nameID']);
	}
	function display($nameID){
		global $module;
		$result = null;
		// check if text is empty
		if(!isset($nameID) || trim($nameID) == '' ){ // is empty, display all vendors
			$result = $module->getAllVendor(); // all tables inside array result
			
		}else{ //text gave an id/name
			$result = $module->getNameID($nameID);
		}
		if($result){ // check if result is valid
				// echo the table headers
			echo"<body><table><thead><tr><th>Vendor ID<br></th><th>Vendor Name<br></th>
			<th>Street</th><th>City</th><th>StateAb<br></th><th>Zip Code</th><th>E-Mail</th>
			<th>Telephone Number<br></th></tr></thead>";
			
			// loop through table, echo into page.
			foreach($result as $vendor) {
				echo "<tr>";
				echo "<td>" . $vendor->vId ."</td>";
				echo "<td>" . $vendor->Vname ."</td>";
				echo "<td>" . $vendor->Street ."</td>";
				echo "<td>" . $vendor->City ."</td>";
				echo "<td>" . $vendor->StateAb ."</td>";
				echo "<td>" . $vendor->ZipCode ."</td>";
				echo "<td>" . $vendor->Vemail ."</td>";
				echo "<td>" . $vendor->VTelNo ."</td>";
				echo "</tr>";
			}
			// end table gen
			echo "</table></body>";
		}else {
			echo "<strong>".$nameID." is not a valid Name/ID.</strong>";
		}
	}

	
?>

</body>
</html>
