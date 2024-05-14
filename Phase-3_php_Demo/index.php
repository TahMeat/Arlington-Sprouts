<html>
<head>
<style>
.button {
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

.button:hover {
  background-color: #258f25;
  color: white;
}

.button span {
  cursor: pointer;
  display: inline-block;
  position: relative;
  transition: 0.5s;
}

.button span:after {
  content: '\00bb';
  position: absolute;
  opacity: 0;
  top: 0;
  right: -20px;
  transition: 0.5s;
}

.button:hover span {
  padding-right: 25px;
}

.button:hover span:after {
  opacity: 1;
  right: 0;
}
</style>
</head>
<body>
	<a href="http://localhost/Phase-3_php_Demo/">
		<h1>
			<span style = 
				"-webkit-text-stroke-width: 1px;
				 -webkit-text-stroke-color: black;
				 color: white;
				 font-weight: bold;
				 display: inline-block;
				 font-family: Arial;">Arlington Sprouts : Home
			</span>
		</h1>
	</a>
<hr/>
<p><a href="http://localhost/Phase-3_php_Demo/displayVendor.php"> <button class="button"><span>Display Vendors </span></button></a></p>
<p><a href="http://localhost/Phase-3_php_Demo/insertVendor.php"> <button class="button"><span>Insert New Vendor </span></button></a></p>
<p><a href="http://localhost/Phase-3_php_Demo/updateVendor.php"> <button class="button"><span>Update Vendor </span></button></a></p>
<p><a href="http://localhost/Phase-3_php_Demo/deleteVendor.php"> <button class="button"><span>Delete Vendor </span></button></a></p>


</body>
</html>
