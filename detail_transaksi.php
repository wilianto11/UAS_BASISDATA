<?php include("db/config.php");?>
<?php include("auth.php");  //file auth.php adalah biar web kita tidak bisa di akses sebelum login ?>
<?php include('template/header.php');?>
<a class="fa fa-home" style="font-size: 24px;" href="index.php">Home</a><br>
<form action="simpan.php" method="post">
    <label>Nama Tamu</label>
    <select name="nama_tamu">
        <?php
        $sql = mysqli_query($conn,"SELECT * FROM tamu_hotel");
        while ($data = mysqli_fetch_assoc($sql)) {
            echo '<option value="'.$data["id_tamu"].'">'.$data["nama_tamu"].'</option>';
        }
        ?>
    </select><br>
    <label>Jenis Kamar</label>
    <select name="jenis_kamar">
        <?php
        $sql = mysqli_query($conn,"SELECT * FROM kamar");
        while ($data = mysqli_fetch_assoc($sql)) {
            echo '<option value="'.$data["id_kamar"].'">'.$data["jenis_kamar"].', Rp.'.$data["tarif"].',- net'.'</option>';

        }
        ?>
    </select><br>
    <label>
        Tanggal Pesan</label>
    <input type="text" id="date" name="tgl_pesan"><br>
    <label>
        Tanggal Cek In</label>
    <input type="text" id="datepik" name="tgl_cekin"><br>
    <label>
        Tanggal Cek Out</label>
    <input type="text" id="datepi" name="tgl_cekout"><br>
    <label>
        Total tarif</label>
    <input type="text" name="total_tarif"><br>
    <input type="submit" name="simpan" value="simpan">
</form>

<?php include('template/footer.php');?>