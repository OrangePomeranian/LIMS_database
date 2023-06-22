<?php
$servername = "localhost";
$username = "root";
$password = "";
$dbname = "mbdo";

// Create connection
$conn = new mysqli($servername, $username, $password, $dbname);

// Check connection
if (mysqli_connect_errno()){
  echo 'UWAGA! Błąd połączenia z bazą! <br>
  Za parę sekund zostaniesz przekierowany z powrotem do strony logowania';
  header("Refresh: 1; URL=index.php");
  exit;
}
echo "<br>Nawiązano poprawne połączonie z bazą!";

$pesel = $_POST['email'];
$surname = $_POST['password'];

$sql = "SELECT * FROM user WHERE pesel = ? AND surname = ?";
$stmt = $conn->prepare($sql); 
$stmt->bind_param("ss", $pesel, $surname);
$stmt->execute();
$result = $stmt->get_result(); 

if ($result->num_rows > 0) {
    header("Location: strona.html");
    exit;
} else {
    header("Location: wrong.html");
}
?>
