<?php 
require_once "../components/db_connect.php";

if ($_GET['id']) {
    $id = $_GET['id'];
    $sql = "select animals.*, adopid from animals join adoption on fkadopid = adopid where id = $id";
    $result = mysqli_query($connect, $sql);
    $data = mysqli_fetch_assoc($result);
    if (mysqli_num_rows($result) == 1) {
        $name = $data['name'];
        $picture = $data['picture'];
        $kind = $data['kind'];
        $breed = $data['breed'];
        $age = $data['age'];
        $size = $data['size'];
        $description = $data['description'];
        $hobby = $data['hobby'];
        $location = $data['location'];
        $adoption = $data['adop_date'];
        $tcontent = "<tr>
            <td><img class='img-thumbnail' src='../pictures/" .$picture."'</td>
            <td>" .$name."</td>
            <td>" .$kind."</td>
            <td>" .$breed."</td>
            <td>" .$age."</td>
            <td>" .$size."</td>
            <td>" .$description."€"."</td>
            <td>" .$hobby."</td>
            <td>" .$location."</td>
            <td>" .$adoption."</td>
            </tr>";
    } else {
        header("location: ../error.php");
    }
    mysqli_close($connect);
} else {
    header("location: ../error.php");
}  
?>

<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>PHP Restaurant</title>
        <?php require_once '../components/boot.php'?>
        <style type="text/css">
            .manageAnimal {           
                margin: auto;
                background-color: #FFFFF0;
            }
            .img-thumbnail {
                width: 70px !important;
                height: 70px !important;
            }
            td {          
                text-align: center;
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
                <a href= "../index.php"><button class='btn btn-primary'type="button" >Home</button></a>
                <a href= "../pet_adoption.php"><button class='btn btn-primary'type="button" >Take me home</button></a>
            </div>
            <p class='h2'>Animals</p>
            <table class='table table-striped'>
                <thead class='table-success'>
                    <tr>
                        <th>Picture</th>
                        <th>Name</th>
                        <th>Kind</th>
                        <th>Breed</th>
                        <th>Age</th>
                        <th>Size</th>
                        <th>Description</th>
                        <th>Hobby</th>
                        <th>Location</th>
                        <th>Aktion</th>
                    </tr>
                </thead>
                <tbody>
                    <?= $tcontent;?>
                </tbody>
            </table>
            <img src="../pictures/<?= $picture ?>" class="rounded-circle mx-auto d-block" alt="Not found" width="450px">
        </div>
    </body>
</html>