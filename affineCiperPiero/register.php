<?php
require_once("config.php");
require_once("encrypt_decrypt.php");

if ($_SERVER["REQUEST_METHOD"] == "POST") {
    $username = $_POST["username_reg"];
    $password = $_POST["password_reg"];
    $nama = $_POST["nama_reg"];
    $alamat = $_POST["alamat_reg"];
    // Encrypt the password before storing it in the database
    $key1= 5;
    $key2= 8;
    $encryptedPassword = encrypt($password, $key1, $key2);

    // Insert user data into the database
    $sql = "INSERT INTO users (username, password,nama,alamat) VALUES (?, ?,?,?)";
    $stmt = $conn->prepare($sql);
    $stmt->execute([$username, $encryptedPassword,$nama,$alamat]);

    header("Location: index.php");
}

$conn = null;
?>
