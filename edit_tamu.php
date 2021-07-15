<?php
// include database connection file
include("db/config.php");
 
// Check if form is submitted for user update, then redirect to homepage after update
if(isset($_POST['update']))
{	
	$id = $_POST['id_tamu'];
	
	$id_tamu=$_POST['id_tamu'];
	$nama_tamu=$_POST['nama_tamu'];
	$no_telp=$_POST['no_telp'];
		
	// update user data
	$result = mysqli_query($conn, 
	"UPDATE tamu_hotel SET id_tamu='$id_tamu',nama_tamu='$nama_tamu',no_telp='$no_telp' WHERE id_tamu=$id");
	
	// Redirect to homepage to display updated user in list
	header("Location: table_tamu.php");
}
?>
<?php
// Display selected user data based on id
// Getting id from url
$id = $_GET['id'];
 
// Fetech user data based on id
$result = mysqli_query($conn, "SELECT * FROM tamu_hotel WHERE id_tamu=$id");
 
while($user_data = mysqli_fetch_array($result))
{
	$id_tamu = $user_data['id_tamu'];
	$nama_tamu = $user_data['nama_tamu'];
	$no_telp = $user_data['no_telp'];
}
?>
<?php include("auth.php"); //file auth.php adalah biar web kita tidak bisa di akses sebelum login ?>
<?php include('template/header.php');?>

<body>
<a class="fa fa-home" style="font-size: 24px;" href="index.php">Home</a>
    <br/><br/>

    <form name="update_user" method="post" action="edit_tamu.php">
        <table border="0">
            <tr>
                <td>ID Tamu</td>
                <td><input type="text" name="id_tamu" value=<?php echo $id_tamu;?>></td>
            </tr>
            <tr>
                <td>Nama Tamu</td>
                <td><input type="text" name="nama_tamu" value=<?php echo $nama_tamu;?>></td>
            </tr>
            <tr>
                <td>No Telp</td>
                <td><input type="text" name="no_telp" value=<?php echo $no_telp;?>></td>
            </tr>
            <tr>
                <td><input type="hidden" name="id" value=<?php echo $_GET['id'];?>></td>
                <td><input type="submit" name="update" value="Update"></td>
            </tr>
        </table>
    </form>
</body>
<?php include('template/footer.php');?>