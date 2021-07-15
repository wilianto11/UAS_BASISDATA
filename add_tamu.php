<?php include("auth.php"); //include auth.php file on all secure pages ?>
<?php include('template/header.php');?>

<body>
    <a class="fa fa-home" style="font-size: 24px;" href="index.php">Home</a>
    <br/><br/>

    <h3>Form Menambahkan Tamu Hotel</h3>
    <form action="add_tamu.php" method="post" name="form1">
        <table width="25%" border="0">
            <tr>
                <td>ID Tamu</td>
                <td><input type="text" name="id_tamu" readonly></td>
            </tr>
            <tr>
                <td>Nama Tamu</td>
                <td><input type="text" name="nama_tamu"></td>
            </tr>
            <tr>
                <td>No telp</td>
                <td><input type="text" name="no_telp"></td>
            </tr>
            <tr>
                <td></td> <br>
                <td><input type="submit" class="btn info" name="Submit" value="Tambah Tamu"> </td>
            </tr>
        </table>
    </form>

    <?php
 
	// Check If form submitted, insert form data into users table.
	if(isset($_POST['Submit'])) {
		$id_tamu = $_POST['id_tamu'];
		$nama_tamu = $_POST['nama_tamu'];
		$no_telp = $_POST['no_telp'];
		
		// include database connection file
		include("db/config.php");
				
		// Insert user data into table
		$result = mysqli_query($conn, "INSERT INTO tamu_hotel(id_tamu,nama_tamu,no_telp) 
		VALUES('$id_tamu','$nama_tamu','$no_telp')");
		
		// Show message when user added
		echo "User added successfully. <a href='table_tamu.php'>View Users</a>";
    }
	?>
</body>
<?php include('template/footer.php');?>