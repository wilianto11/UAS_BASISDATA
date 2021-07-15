<?php
// include database connection file
include("db/config.php");
 
// Check if form is submitted for user update, then redirect to homepage after update
if(isset($_POST['update']))
{	
	$id = $_POST['id_transaksi'];
	
	$id_transaksi=$_POST['id_transaksi'];
	$id_tamu=$_POST['id_tamu'];
	$id_kamar=$_POST['id_kamar'];
    $tgl_pesan=$_POST['tgl_pesan'];
    $tgl_cekin=$_POST['tgl_cekin'];
    $tgl_cekout=$_POST['tgl_cekout'];
    $total_tarif=$_POST['total_tarif'];
		
	// update user data
	$result = mysqli_query($conn, 
	"UPDATE transaksi_hotel SET id_transaksi='$id_transaksi',id_tamu='$id_tamu',id_kamar='$id_kamar',tgl_pesan='$tgl_pesan',tgl_cekin='$tgl_cekin',tgl_cekout='$tgl_cekout',total_tarif='$total_tarif' WHERE id_transaksi=$id");
	
	// Redirect to homepage to display updated user in list
	header("Location: index.php");
}
?>
<?php
// Display selected user data based on id
// Getting id from url
$id = $_GET['id'];
 
// Fetech user data based on id
$result = mysqli_query($conn, "SELECT * FROM transaksi_hotel WHERE id_transaksi=$id");
 
while($user_data = mysqli_fetch_array($result))
{
	$id_transaksi = $user_data['id_transaksi'];
	$id_tamu = $user_data['id_tamu'];
	$id_kamar = $user_data['id_kamar'];
    $tgl_pesan = $user_data['tgl_pesan'];
    $tgl_cekin = $user_data['tgl_cekin'];
    $tgl_cekout = $user_data['tgl_cekout'];
    $total_tarif = $user_data['total_tarif'];
}
?>
<?php include("auth.php");  //file auth.php adalah biar web kita tidak bisa di akses sebelum login ?>
<?php include('template/header.php');?>

<body>
<a class="fa fa-home" style="font-size: 24px;" href="index.php">Home</a>
    <br/><br/>

    <form name="update_user" method="post" action="edit_transaksi.php">
        <table border="0">
            <tr>
                <td>ID Transaksi</td>
                <td><input type="text" name="id_transaksi" value=<?php echo $id_transaksi;?>></td>
            </tr>
            <tr>
                <td>ID Tamu</td>
                <td><input type="text" name="id_tamu" value=<?php echo $id_tamu;?>></td>
            </tr>
            <tr>
                <td>ID Kamar</td>
                <td><input type="text" name="id_kamar" value=<?php echo $id_kamar;?>></td>
            </tr>
            <tr>
                <td>Tanggal Pesan</td>
                <td><input type="text" id="date" name="tgl_pesan" value=<?php echo $tgl_pesan;?>></td>
            </tr>
            <tr>
                <td>Tanggal Cek In</td>
                <td><input type="text" id="datepi" name="tgl_cekin" value=<?php echo $tgl_cekin;?>></td>
            </tr>
            <tr>
                <td>Tanggal Cek Out</td>
                <td><input type="text" id="datepik" name="tgl_cekout" value=<?php echo $tgl_cekout;?>></td>
            </tr>
            <tr>
                <td>Total Tarif</td>
                <td><input type="text" name="total_tarif" value=<?php echo $total_tarif;?>></td>
            </tr>
            <tr>
                <td><input type="hidden" name="id" value=<?php echo $_GET['id'];?>></td>
                <td><input type="submit" name="update" value="Update"></td>
            </tr>
        </table>
    </form>
</body>
<?php include('template/footer.php');?>