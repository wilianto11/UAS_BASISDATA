<?php include("db/config.php");

    $insert = mysqli_query($conn,"INSERT INTO transaksi_hotel VALUES('','$_POST[nama_tamu]','$_POST[jenis_kamar]','$_POST[tgl_pesan]','$_POST[tgl_cekin]','$_POST[tgl_cekout]','$_POST[total_tarif]')");
    
    if($insert) {
        echo"transaction added successfully. <a href='index.php'>View Users</a>";
    }
    else{
        echo"transaction failed try again!!!";
    }
?>