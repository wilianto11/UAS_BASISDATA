<?php
// include database connection file
include("db/config.php");
 
// Get id from URL to delete that user
$id = $_GET['id'];
 
// Delete user row from table based on given id
// Delete table kamar
$result = mysqli_query($conn, "DELETE FROM kamar WHERE id_kamar=$id");
// Delete table tamu
$result = mysqli_query($conn, "DELETE FROM tamu_hotel WHERE id_tamu=$id");
// Delete table transaksi
$result = mysqli_query($conn, "DELETE FROM transaksi_hotel WHERE id_transaksi=$id");
// After delete redirect to Home, so that latest user list will be displayed.a

header("Location: index.php");
?>