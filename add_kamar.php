<?php include("auth.php"); //file auth.php adalah biar web kita tidak bisa di akses sebelum login ?>
<?php include('template/header.php');?>

<body>
<a class="fa fa-home" style="font-size: 24px;" href="index.php">Home</a>
    <br/><br/>

    <h3>Form Menambahkan Kamar Hotel</h3>
    <form action="add_kamar.php" method="post" name="form1">
        <table width="25%" border="0">
            <tr>
                <td>ID Kamar</td>
                <td><input type="text" name="id_kamar" readonly></td>
            </tr>
            <tr>
                <td>Jenis Kamar</td>
                <td><input type="text" name="jenis_kamar"></td>
            </tr>
            <tr>
                <td>Tarif/day</td>
                <td><input type="text" name="tarif"></td>
            </tr>
            <tr>
                <td></td><br>
                <td><input type="submit" class="btn info" name="Submit" value="Tambah Kamar"></td>
            </tr>
        </table>
    </form>

    <?php
 
	// Check If form submitted, insert form data into users table.
	if(isset($_POST['Submit'])) {
		$id_kamar = $_POST['id_kamar'];
		$jenis_kamar = $_POST['jenis_kamar'];
		$tarif = $_POST['tarif'];
		
		// include database connection file
		include("db/config.php");
				
		// Insert user data into table
		$result = mysqli_query($conn, "INSERT INTO kamar(id_kamar,jenis_kamar,tarif) 
		VALUES('$id_kamar','$jenis_kamar','$tarif')");
		
		// Show message when user added
		echo "User added successfully. <a href='table_kamar.php'>View Users</a>";
    }
	?>
</body>
<?php include('template/footer.php');?>