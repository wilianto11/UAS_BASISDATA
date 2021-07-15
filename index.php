<?php 
include("db/config.php");
include("auth.php"); //file auth.php adalah biar web kita tidak bisa di akses sebelum login ?>

<!DOCTYPE>
<html lang='ind'>
    <head>
        <meta charset='utf-8'>
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="stylesheet" href="assets/css/style_admin.css">

        <script src="assets/js/jquery.min.js"></script>
        <script src="assets/js/bootstrap.min.js"></script>
        <script src="assets/js/script.js"></script>
        <link
            rel="stylesheet"
            href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
        <!-- jQuery library -->

        <!-- Latest compiled JavaScript -->
        <link
            rel="stylesheet"
            href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
        <script
            src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
        <script src='https://kit.fontawesome.com/a076d05399.js' crossorigin='anonymous'></script>
        <link
            rel="stylesheet"
            href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
        <link rel="stylesheet" href="/resources/demos/style.css">
        <script src="https://code.jquery.com/jquery-1.12.4.js"></script>
        <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
        <script
            type="text/javascript"
            src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.6.0/js/bootstrap-datepicker.min.js"></script>
        <title>Dasboard</title>
    </head>
    <body>
        <div class="col-md-2 colmenu" style="padding:0;">
            <div class="col-md-12" style="padding:10px;">
                <center><img src="assets/images/patrik.jpg" alt="" height="100px" width="100px"></center>
            </div>
            <div class="form" style="text-align:center;">
                <p>Welcome
                    <?php echo $_SESSION['username']; ?>!
                </p>

            </div>
            <?php include "menu.php"; ?>
        </div>
    <?php 
         if (isset($_GET['table_transaksi'])) {
            include "table_transaksi.php";
       }
         else{
            include "home.php";
        }
         
   ?>

    </body>
    <footer>
        <p>
            <div class="col-md-12" style="background:#a6f77b;padding:8px;color:blue;font-size:larger">
                <center>Universitas pelita bangsa Fakultas Teknik Informatika</a>
                &copy 2021</center>
        </div>
    </p>
</footer>
<html>