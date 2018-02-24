<?php
$servername = "localhost";
$username = "localhost";
$password = "";
$dbname = "test";

// Create connection
$conn = new mysqli($servername, $username, $password, $dbname);

// Check connection
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
} 
$a =$_POST['expense'];
$b = $_POST["type"];
$c = $_POST['comment'];
$d = date("d/m/Y");

$sql = "INSERT INTO expense (amount, type, comment, day)
VALUES ($a, '$b', '$c','$d')
";

if ($conn->query($sql) === TRUE) {
	echo "<script>
             alert('Expenses Updated successfully.Refresh the page to get the latest update.'); 
             window.history.go(-1);
     </script>";

} else {
    echo "Error: " . $sql . "<br>" . $conn->error;
}

$conn->close();

?>

