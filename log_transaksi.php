<?php include("db/config.php");?>
<?php include("auth.php"); //file auth.php adalah biar web kita tidak bisa di akses sebelum login ?>
<?php include('template/header.php');?>
<a class="fa fa-home" style="font-size: 24px;" href="index.php">Home</a>
    <br/><br/>
<h2> TRIGGER DELETE, UPDATE & INSERT </h2>
    <h3>Table Data history</h3>
<table width='50%' border="1">
    <thead>
        <tr>
            <th>ID Log</th>
            <th>ID Transaksi</th>
            <th>ID Tamu</th>
            <th>ID Kamar</th>
            <th>Tanggal Pesan</th>
            <th>Tanggal Cek In</th>
            <th>Tanggal Cek Out</th>
            <th>Total Tarif</th>
            <th>Waktu</th>
        </tr>
    </thead>
    <?php
        include("db/config.php");
        $sql = 'SELECT * FROM  log_delete_transaksi';
        $query = mysqli_query($conn, $sql);
        while ($row = mysqli_fetch_array($query))
        {
            ?>
    <tbody>
        <tr>
        <td><?php echo $row['id_log']?></td>
        <td><?php echo $row['id_transaksi']?></td>
            <td><?php echo $row['id_tamu']?></td>
            <td><?php echo $row['id_kamar']?></td>
            <td><?php echo $row['tgl_pesan']?></td>
            <td><?php echo $row['tgl_cekin']?></td>
            <td><?php echo $row['tgl_cekout']?></td>
            <td><?php echo $row['total_tarif']?></td>
            <td><?php echo $row['waktu']?></td>
        </tr>
    </tbody>
    <?php
        }
        ?>
</table>
<h3>Table Data Update Transaksi</h3>
<table width='50%' border="1">
    <thead>
        <tr>
            <th>ID Log</th>
            <th>ID Transaksi</th>
            <th>ID Tamu</th>
            <th>Tanggal Cek in</th>
            <th>Tanggal Cek Out Old</th>
            <th>Tanggal Cek Out New</th>
            <th>Total Tarif Old</th>
            <th>Total Tarif New</th>
            <th>Waktu</th>
        </tr>
    </thead>
    <?php
        include("db/config.php");
        $sql = 'SELECT * FROM  log_update_transaksi';
        $query = mysqli_query($conn, $sql);
        while ($row = mysqli_fetch_array($query))
        {
            ?>
    <tbody>
        <tr>
        <td><?php echo $row['id_log']?></td>
        <td><?php echo $row['id_transaksi']?></td>
            <td><?php echo $row['id_tamu']?></td>
            <td><?php echo $row['tgl_cekin']?></td>
            <td><?php echo $row['tgl_cekout_old']?></td>
            <td><?php echo $row['tgl_cekout_new']?></td>
            <td><?php echo $row['total_tarif_old']?></td>
            <td><?php echo $row['total_tarif_new']?></td>
            <td><?php echo $row['waktu']?></td>
        </tr>
    </tbody>
    <?php
        }
        ?>
</table>
<h3>Table Data Tamu Baru</h3>
<table width='50%' border="1">
    <thead>
        <tr>
            <th>ID Log</th>
            <th>ID Tamu</th>
            <th>Nama Tamu</th>
            <th>No Telp</th>
            <th>Waktu</th>
        </tr>
    </thead>
    <?php
        include("db/config.php");
        $sql = 'SELECT * FROM  log_insert_tamu';
        $query = mysqli_query($conn, $sql);
        while ($row = mysqli_fetch_array($query))
        {
            ?>
    <tbody>
        <tr>
        <td><?php echo $row['id_log']?></td>
            <td><?php echo $row['id_tamu']?></td>
            <td><?php echo $row['nama_tamu']?></td>
            <td><?php echo $row['no_telp']?></td>
            <td><?php echo $row['waktu']?></td>
        </tr>
    </tbody>
    <?php
        }
        ?>
</table>
<?php include('template/footer.php');?>