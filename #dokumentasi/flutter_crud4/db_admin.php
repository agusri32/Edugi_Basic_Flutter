<?php

$servername = "localhost";
$username = "root";
$password = "";
$dbname = "crud_empatdb";
$table = "ADMIN";

// we will get actions from the app to do operations in the database...
$action = $_POST["action"];

// Create Connection
$conn = new mysqli($servername, $username, $password, $dbname);
// Check Connection
if ($conn->connect_error) {
    die("Connection Failed: " . $conn->connect_error);
    return;
}

?>
