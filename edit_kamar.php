<?php
// include database connection file
include("db/config.php");
 
// Check if form is submitted for user update, then redirect to homepage after update
if(isset($_POST['update']))
{	
	$id = $_POST['id_kamar'];
	
	$id_kamar=$_POST['id_kamar'];
	$jenis_kamar=$_POST['jenis_kamar'];
	$tarif=$_POST['tarif'];
		
	// update user data
	$result = mysqli_query($conn, 
	"UPDATE kamar SET id_kamar='$id_kamar',jenis_kamar='$jenis_kamar',tarif='$tarif' WHERE id_kamar=$id");
	
	// Redirect to homepage to display updated user in list
	header("Location: table_kamar.php");
}
?>
<?php
// Display selected user data based on id
// Getting id from url
$id = $_GET['id'];
 
// Fetech user data based on id
$result = mysqli_query($conn, "SELECT * FROM kamar WHERE id_kamar=$id");
 
while($user_data = mysqli_fetch_array($result))
{
	$id_kamar = $user_data['id_kamar'];
	$jenis_kamar = $user_data['jenis_kamar'];
	$tarif = $user_data['tarif'];
}
?>
<?php include("auth.php");  //file auth.php adalah biar web kita tidak bisa di akses sebelum login ?>
<?php include('template/header.php');?>

<body>
<a class="fa fa-home" style="font-size: 24px;" href="index.php">Home</a>
    <br/><br/>

    <form name="update_user" method="post" action="edit_kamar.php">
        <table border="0">
            <tr>
                <td>ID Kamar</td>
                <td><input type="text" name="id_kamar" value=<?php echo $id_kamar;?>></td>
            </tr>
            <tr>
                <td>Jenis Kamar</td>
                <td><input type="text" name="jenis_kamar" value=<?php echo $jenis_kamar;?>></td>
            </tr>
            <tr>
                <td>tarif/day</td>
                <td><input type="text" name="tarif" value=<?php echo $tarif;?>></td>
            </tr>
            <tr>
                <td><input type="hidden" name="id" value=<?php echo $_GET['id'];?>></td>
                <td><input type="submit" name="update" value="Update"></td>
            </tr>
        </table>
    </form>
</body>
<?php include('template/footer.php');?>