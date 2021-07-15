<?php
    $host = "localhost";
    $user = "root";
    $pass = "";
    $db   = "wilianto_311910184";

    $conn = mysqli_connect($host,$user,$pass,$db);
    if ($conn == false) {
        echo "connetion failed.";
        die();
    } else #echo "koneksi berhasil
?>