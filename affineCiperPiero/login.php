<?php

require_once("config.php");
require_once("encrypt_decrypt.php"); // Sesuaikan ini dengan file yang berisi fungsi encrypt dan decrypt


if ($_SERVER["REQUEST_METHOD"] == "POST") {
    $username = $_POST["username"];
    $password = $_POST["password"];

    // Retrieve the stored hashed password from the database
    $sql = "SELECT * FROM users WHERE username=?";
    $stmt = $conn->prepare($sql);
    $stmt->execute([$username]);

    if ($stmt->rowCount() > 0) {
        $row = $stmt->fetch(PDO::FETCH_ASSOC);
        $storedPassword = $row["password"];

        // Decrypt the stored password using the appropriate keys
        $key1 = 5; // Sesuaikan dengan key1 yang sesuai
        $key2 = 8; // Sesuaikan dengan key2 yang sesuai
        $decryptedPassword = decrypt($storedPassword, $key1, $key2);
        $password = strtoupper($decryptedPassword);
        if ($password == $decryptedPassword) {
            header("Location: viewlogin.php");
            
        } else {
            echo "Invalid username or password.";
        }
    } else {
        echo "Invalid username or password.";
    }
}

$conn = null;
?>

