<?php include("db/config.php");?>

<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8"/>
        <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
        <meta
            name="viewport"
            content="width=device-width, initial-scale=1, shrink-to-fit=no"/>
        <meta name="description" content=""/>
        <meta name="author" content=""/>
        <!-- Latest compiled JavaScript -->
        <link
            rel="stylesheet"
            href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
        <script
            src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
        <script src='https://kit.fontawesome.com/a076d05399.js' crossorigin='anonymous'></script>
        <link
            rel="stylesheet"
            href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
        <title>Tables Transaksi Hotel</title>
        <link href="assets/css/style.css" rel="stylesheet"/>
    </head>
    <body class="sb-nav-fixed">
        <div id="layoutSidenav_content">
            <div class="container-fluid px-4">
                <h1 class="mt-4">Tables</h1>
                <ol class="breadcrumb mb-4">
                    <li class="breadcrumb-item active">Table Data Transaksi Hotel</li>
                </ol>
                <a class="btn btn-primary" href="detail_transaksi.php">
                    <span class="fas fa-plus-circle"></span>
                    Tambah Transaksi</a><br/><br/>
                <h3>Data Transaksi</h3>
                <div class="card mb-4">
                    <div class="card-header">
                        <i class="fas fa-table me-1"></i>
                        Data Table
                    </div>
                    <div class="card-body">
                        <table id="datatablesSimple" border="1">
                            <thead>
                                <tr>
                                    <th>ID Transaksi</th>
                                    <th>Nama Tamu</th>
                                    <th>Jenis Kamar</th>
                                    <th>Tarif/day</th>
                                    <th>Tanngal Pesan</th>
                                    <th>Tanggal Cek In</th>
                                    <th>Tanggal cek Out</th>
                                    <th>Total Tarif</th>
                                    <th>Aksi</th>
                                </tr>
                            </thead>
                            <?php
                            include("db/config.php");
                            $sql = 'SELECT * FROM  transaksi_hotel
                            CROSS JOIN kamar ON transaksi_hotel.id_kamar = kamar.id_kamar 
                            CROSS JOIN tamu_hotel ON transaksi_hotel.id_tamu = tamu_hotel.id_tamu';
                            $query = mysqli_query($conn, $sql);
                            while ($row = mysqli_fetch_array($query))
                            {
                                ?>
                            <tbody>
                                <tr>
                                    <td><?php echo $row['id_transaksi']?></td>
                                    <td><?php echo $row['nama_tamu']?></td>
                                    <td><?php echo $row['jenis_kamar']?></td>
                                    <td><?php echo $row['tarif']?></td>
                                    <td><?php echo $row['tgl_pesan']?></td>
                                    <td><?php echo $row['tgl_cekin']?></td>
                                    <td><?php echo $row['tgl_cekout']?></td>
                                    <td><?php echo $row['total_tarif']?></td>
                                    <td>
                                        <a
                                            class="fas fa-edit"
                                            style='font-size:24px;color:black'
                                            href="edit_transaksi.php?id=<?= $row['id_transaksi']; ?>"></a>
                                        <a
                                            class="fas fa-trash-alt"
                                            style='font-size:24px;color:red'
                                            onclick="return confirm('Yakin Mau menghapus data Transaksi?'); "
                                            href="delete.php?id=<?= $row['id_transaksi']; ?>"></a>
                                    </td>
                                </tr>
                            </tbody>
                            <?php
                        }
                        ?>
                        </table>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
</body>

</html>