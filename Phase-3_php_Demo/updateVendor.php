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

input[type="tel"] {
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

input[type="tel"]:hover {
  background-color: #f7f7f7;
}

input[type="email"] {
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

input[type="email"]:hover {
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
><strong>Arlington Sprouts : Update Vendor</span></strong></h1></a>
<hr/>
<form method="post">
	<fieldset><legend>Update Vendor</legend>
	<!-- ID -->
	<input type="text" name="id" pattern="[0-9]+" placeholder="ID" required><br>
	
	<!-- Name -->
	<input type="text" name="Vname" placeholder="Name"><br>
	
	<!-- Street -->
	<input type="text" name="Street" placeholder="Street"><br> 
	
	<!-- City -->
	<input type="text" name="City" placeholder="City"><br> 
	
	<!-- StateAb -->
	<input type="text" name="StateAb" pattern="[A-Z]+" maxlength=2 placeholder="StateAb"><br> 
	
	<!-- ZipCode -->
	<input type="text" name="ZipCode" placeholder="ZipCode"><br>
	
	<!-- E-Mail -->
	<input type="email" name="Vemail" placeholder="E-Mail"><br> 
	
	<!-- Phone -->
	<input type="tel" name="VTelNo" placeholder="Phone" pattern="[0-9]+" minlength=10><br> 
	<input type="submit" name="update" value="Update"><br>
	</fieldset>
</form>

<?php
	// requirements
	require './Module.php';
	$module = new Module();
	
	$atts = array("Vname", "Street", "City", "StateAb", "ZipCode", "Vemail", "VTelNo");
	$userInput = array();
	if(isset($_POST['update'])){
		// check for empty inputs
		foreach($atts as $key=>$val){
			if(empty($_POST[$val])){ // if empty, remove from table.
				unset($atts[$key]);
			}
		}
		$atts = array_values($atts); // reindex
		foreach($atts as $val){ // get values and put into an array
			array_push($userInput, $_POST[$val]);
		}
		//push variables as references into funct.
		echo $module->updateVendor($atts, $userInput);
	}
?>


</body>
</html>
