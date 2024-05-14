<?php

// requirements
require './Database.php';
require './Vendor.php';

// global vars
$db = new Database();
$dbConnection = $db->connectDB();

//init class
class Module{
		//get all vendor function
		function getAllVendor(){
			global $dbConnection;
			$stmt = $dbConnection->prepare("SELECT * FROM VENDOR");
			$stmt->setFetchMode(PDO::FETCH_CLASS, 'Vendor');	
			if ($stmt->execute()){
				return $stmt->fetchAll();
			}else {
				return "Failed to get data.";
			}
		}
		//get vendor by name/id
		function getNameID($nameID){
			global $dbConnection;
			$stmt = $dbConnection->prepare("SELECT * FROM VENDOR WHERE vName = :name OR vId = :name");
			$stmt->setFetchMode(PDO::FETCH_CLASS, 'Vendor');	
			if ($stmt->execute(['name' => $nameID])){
				return $stmt->fetchAll();
			}else {
				return "Failed to get data";
			}
		}
		// add vendor
		//array("name", "street", "city", "stateab", "zip", "mail", "phone");
		function addVendor(){
			// attribute vars
			$name = $_POST['name'];
			$street = $_POST['street'];
			$city = $_POST['city'];
			$stateab = $_POST['stateab'];
			$zip = $_POST['zip'];
			$mail = $_POST['mail'];
			$phone = $_POST['phone'];
			
			// db stuff
			global $dbConnection;
			$stmt = $dbConnection->prepare("INSERT INTO VENDOR 
			(Vname, Street, City, StateAb, ZipCode, Vemail, VTelNo) 
			VALUES (?, ?, ?, ?, ?, ?, ?)");
			if ($stmt->execute([$name, $street, $city, $stateab, $zip, $mail, $phone])){
				return "<strong>Successfully added ". $name ."to database</strong>";
			}else {
				return "Failed";
			}
		}
		
		function updateVendor(&$attributes, &$values){
			// db stuff
			global $dbConnection;
			
			// get id
			$id = $_POST['id'];
			
			// check if if is valid.
			$stmt = $dbConnection->prepare("SELECT * FROM VENDOR WHERE vId = :id");
			$stmt->setFetchMode(PDO::FETCH_CLASS, 'Vendor');	
			if (($stmt->execute(['id' => $id])) ){
				$result = $stmt->fetchAll();
				if(empty($result)){
					return "<strong>". $id . " is not a valid ID.</strong>";
				}
			}else{
				return "Failed to get data or no data was found.";
			}
			
			// get values and put into push update 
			foreach($values as $key=>$val){ 
				$att = $attributes[$key];
				if ($att == "VTelNo"){
					$stmt2 = $dbConnection->query("UPDATE VENDOR SET ".$att." = ".$val." WHERE vId = ".$id);
				}else{
					$stmt2 = $dbConnection->query("UPDATE VENDOR SET ".$att." = '".$val."' WHERE vId = ".$id);
				}
			}
			return "Updated Vendor [".$id."]";
		}
		function deleteVendor(){
			// set attributes
			$id = $_POST['id'];
			// db stuff
			global $dbConnection;
			$stmt = $dbConnection->prepare("SELECT * FROM VENDOR WHERE vId = :id");
			$stmt->setFetchMode(PDO::FETCH_CLASS, 'Vendor');	
			if ($stmt->execute(['id' => $id])){ // valid, go delete
				$result = $stmt->fetchAll();
				if(empty($result)){
					return "<strong>". $id . " is not a valid ID.</strong>";
				}
			}else {
				return "Failed";
			}
			
			// delete vendor
			$stmt2 = $dbConnection->query("DELETE FROM VENDOR WHERE vId = ".$id);
			return "Vendor[".$id."] deleted";
		}
}
?>