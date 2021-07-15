<?php include("db/config.php");?>
<?php include("auth.php"); //file auth.php adalah biar web kita tidak bisa di akses sebelum login ?>
<?php include('template/header.php');?>
<a class="fa fa-home" style="font-size: 24px;" href="index.php">Home</a>
    <br/><br/>

    <h3>Table Data Tamu Hotel Mithic Glory</h3>
<table width='50%' border="1">
    <thead>
        <tr>
            <th>ID Tamu</th>
            <th>Nama Tamu</th>
            <th>No Telp</th>
            <th>Aksi</th>
        </tr>
    </thead>
    <?php
        include("db/config.php");
        $sql = 'SELECT * FROM  tamu_hotel';
        $query = mysqli_query($conn, $sql);
        while ($row = mysqli_fetch_array($query))
        {
            ?>
    <tbody>
        <tr>
            <td><?php echo $row['id_tamu']?></td>
            <td><?php echo $row['nama_tamu']?></td>
            <td><?php echo $row['no_telp']?></td>
            <td>
                <a
                    class="fas fa-edit"
                    style='font-size:24px;color:black'
                    href="edit_tamu.php?id=<?= $row['id_tamu']; ?>"></a>
                <a
                    class="fas fa-trash-alt"
                    style='font-size:24px;color:red'
                    onclick="return confirm('Apakah Yakin Mau menghapus ???'); " href="delete.php?id=<?= $row['id_tamu']; ?>"></a>
            </td>
        </tr>
    </tbody>
    <?php
        }
        ?>
</table>
<?php include('template/footer.php');?>