<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Login and Registration</title>
    <link rel="stylesheet" href="style.css">
</head>
<body>
    <div class="container">
        

        <h2>Registration</h2>
        <form action="register.php" method="post">
            <label for="nama_reg">Nama :</label>
            <input type="text" name="nama_reg" required>
            <br>
            <label for="alamat_reg">Alamat:</label>
            <input type="text" name="alamat_reg" required>
            <br>
            <label for="username_reg">Username:</label>
            <input type="text" name="username_reg" required>
            <br>
            <label for="password_reg">Password:</label>
            <input type="password" name="password_reg" required>
            <br>
            <button type="submit">Register</button>
            <p ><a href="index.php">login</a></p>
        </form>
    </div>
</body>
</html>
