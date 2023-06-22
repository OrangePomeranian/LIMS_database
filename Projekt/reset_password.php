<?php
$servername = "localhost";  // Enter your MySQL server name
$username = "root";     // Enter your MySQL username
$password = "";     // Enter your MySQL password
$dbname = "mbdo";         // Enter your MySQL database name

// Create connection
$conn = new mysqli($servername, $username, $password, $dbname);

// Check connection
if ($conn->connect_error) {
  die("Connection failed: " . $conn->connect_error);
}

$pesel = $_POST['pesel'];
$name = $_POST['name'];

$sql = "SELECT * FROM user WHERE pesel = ? AND name = ?";
$stmt = $conn->prepare($sql); 
$stmt->bind_param("ss", $pesel, $name);
$stmt->execute();
$result = $stmt->get_result(); 

if ($result->num_rows > 0) {
    $user = $result->fetch_assoc();
    header("Location: display_password.php?password=" . urlencode($user['surname'])); 
} else {
    echo "No user found with this PESEL and name";
}

$conn->close();
?>
