<?php

class Database {
	public function connectDB(){
		try{
			$host = "localhost";
			$dbusername = "root";
			$dbpassword = "";
			$dbname = "sprouts";
			// Create connection
			$conn = new PDO('mysql:host='.$host.';dbname='.$dbname, $dbusername, $dbpassword);
			$conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
			return $conn;
		}catch (mysqli_sql_exception $e){
			echo $e->getMessage();
		}
	}
}
?>