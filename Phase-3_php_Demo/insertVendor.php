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
><strong>Arlington Sprouts : Insert Vendor</span></strong></h1></a>
<hr/>
<html>
<head>

</head>
<body>
<form method="post">
	<fieldset><legend>Add Vendor</legend>
	<!-- Name -->
	<input type="text" name="name" placeholder="Name" required><br>
	
	<!-- Street -->
	<input type="text" name="street" placeholder="Street" required><br> 
	
	<!-- City -->
	<input type="text" name="city" placeholder="City" required><br> 
	
	<!-- StateAb -->
	<input type="text" name="stateab" pattern="[A-Z]+" maxlength=2 placeholder="StateAb" required><br> 
	
	<!-- ZipCode -->
	<input type="text" name="zip" placeholder="ZipCode" required><br>
	
	<!-- E-Mail -->
	<input type="email" name="mail" placeholder="E-Mail" required><br> 
	
	<!-- Phone -->
	<input type="tel" name="phone" placeholder="Phone" pattern="[0-9]+" minlength=10 required><br> 
	<input type="submit" name="submit" value="Submit"><br>	
	</fieldset>
</form>
<hr/>

<?php
	// requirements
	require './Module.php';
	$module = new Module();
	
	if(isset($_POST['submit'])){
		echo $module->addVendor();
	}
?>

</body>
</html>
