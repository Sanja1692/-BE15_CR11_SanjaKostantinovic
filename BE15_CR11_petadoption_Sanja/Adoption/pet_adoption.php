<?php
session_start();
require_once '../components/db_connect.php';

if (isset($_SESSION['user']) != "") {
    header("Location: ../home.php");
    exit;
}

if (!isset($_SESSION['adm']) && !isset($_SESSION['user'])) {
    header("Location: ../index.php");
    exit;
}

$sql = "SELECT animals.*, user.fname, user.fname, adop.adop_date FROM animals join adoption on animals.fkadopid = adoption.adopid JOIN users ON adoption.fkuserid = users.id where adoption.adopid = animals.fkadopid;";
$result = mysqli_query($connect, $sql);
$tbody = ''; //this variable will hold the body for the table
if (mysqli_num_rows($result)  > 0) {
    while ($row = mysqli_fetch_array($result, MYSQLI_ASSOC)) {
        $tbody .= "<tr>
            <td>" . $row['name'] . "</td>
            <td><img class='img-thumbnail' src='../pictures/" . $row['picture'] . "'</td>
            <td>" . $row['kind'] . "</td>
            <td>" . $row['breed'] . "</td>
            <td>" . $row['age'] . "</td>
            <td>" . $row['size'] . "</td>
            <td>" . $row['description'] . "</td>
            <td>" . $row['hobby'] . "</td>
            <td>" . $row['location'] . "</td>
            <td>" . $row['fname'] . "</td>
            <td>" . $row['lname'] . "</td>
            <td>" . $row['adop_date'] . "</td>
                        </tr>";
    };
} else {
    $tbody =  "<tr><td colspan='10'><center>No Data Available </center></td></tr>";
}

mysqli_close($connect);
?>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>PHP CRUD</title>
    <?php require_once '../components/boot.php' ?>
    <style type="text/css">
        .manageAnimal {
            margin: auto;
            background-color: #E0FFFF;
        }

        .img-thumbnail {
            width: 70px !important;
            height: 70px !important;
        }

        td {
            text-align: left;
            vertical-align: middle;
        }

        tr {
            text-align: center;
        }
    </style>
</head>

<body>
    <div class="manageAnimal w-75 mt-3">
        <div class='mb-3'>
          <a href="../dashboard.php"><button class='btn btn-success' type="button">Dashboard</button></a>
        </div>
        <p class='h2'>Animal</p>
        <table class='table table-striped'>
            <thead class='table-success'>
                <tr>
                    <th>Name</th>
                    <th>Picture</th>
                    <th>Kind</th>
                    <th>Breed</th>
                    <th>Age</th>
                    <th>Size</th>
                    <th>Description</th>
                    <th>Hobby</th>
                    <th>Location</th>
                    <th>User Name</th>
                    <th>User Surname</th>
                    <th>Adoption Date</th>
                </tr>
            </thead>
            <tbody>
                <?= $tbody; ?>
            </tbody>
        </table>
    </div>
</body>
</html>