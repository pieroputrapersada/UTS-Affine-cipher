<?php
include 'config.php';

// Query untuk mendapatkan data
$query = "SELECT nama, alamat, password FROM users";
$result = $conn->query($query);
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Data Pengguna</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f2f2f2;
            margin: 0;
            padding: 0;
        }

        table {
            border-collapse: collapse;
            width: 80%;
            margin: 20px auto;
            background-color: #fff;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            
        }

        th, td {
            padding: 15px;
            text-align: left;
            border-bottom: 1px solid #ddd;
        }

        th {
            background-color: #4CAF50;
            color: white;
        }

        tr:hover {
            background-color: #f5f5f5;
        }
        h1{
            text-align: center;
        }
        h2 {
            text-align: center;
            color: #333;
        }
    </style>
</head>
<body>
<h1>Data Nasabah</h1>
<!-- Menampilkan data dalam tabel HTML -->
<table border='1'>
    <tr>
        <th>Nama</th>
        <th>Alamat</th>
        <th>Password</th>
    </tr>
    <?php
    while ($row = $result->fetch(PDO::FETCH_ASSOC)) {
        echo "<tr>
            <td>{$row['nama']}</td>
            <td>{$row['alamat']}</td>
            <td>{$row['password']}</td>
        </tr>";
    }
    ?>
</table>
</body>
</html>

<?php
// Tutup koneksi setelah selesai menggunakan database
$conn = null;
?>
