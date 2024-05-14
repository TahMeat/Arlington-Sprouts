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
  background-color: #d94527;
  border: 2px solid #f02c05;
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
><strong>Arlington Sprouts : Delete Vendor</span></strong></h1></a>
<hr/>
<form method="post">
	<fieldset><legend>Delete Vendor</legend>
	<label for="fname">Enter ID:</label><br>
	<input type="text" name="id" pattern="[0-9]+" placeholder="ID"required> 
	<input type="submit" name="delete" value="Delete" ><br></fieldset>
</form>

<?php
	// requirements
	require './Module.php';
	$module = new Module();
	
	if(isset($_POST['delete'])){
		echo $module->deleteVendor();
	}
?>

</body>
</html>
