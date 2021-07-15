<?php include("db/config.php"); ?>
<?php include("auth.php"); //file auth.php adalah biar web kita tidak bisa di akses sebelum login ?>
<!DOCTYPE html>
<html>
	<head>
		<title>Tambah Data Transaksi</title>
		<meta charset="utf-8">
		<meta http-equiv="X-UA-Compatible" content="IE=edge">
		<meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
        <!-- jQuery library -->
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
        <!-- Latest compiled JavaScript -->
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>   
        <script src='https://kit.fontawesome.com/a076d05399.js' crossorigin='anonymous'></script>
        <link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
        <link rel="stylesheet" href="/resources/demos/style.css">
        <script src="https://code.jquery.com/jquery-1.12.4.js"></script>
        <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
        <script>
        $( function() {
        $( "#date" ).datepicker();
        } );
        </script>
         <script>
        $( function() {
        $( "#datepik" ).datepicker();
        } );
        </script>
        <script type="text/javascript">
    <?php echo $jsArray; ?>
    function changeValue(id_kamar) {
      document.getElementById("tarif").value = tarif[id_kamar].tarif;
    };
    </script> <!-- Tampilkan Harga berdasarkan kode barang -->
	</head>
	<body>
		<header>
			<?php include("template/header.php"); ?>
		</header>
		<div class='container' style='margin-top:70px'>
			<div class='row' style='min-height:520px'>
				<div class='col-md-12'>
					<div class='panel panel-danger' id='tambah'>
						<div class='panel-heading'>Tambah Data Transaksi</div>
						<div class='panel-body'>



							<form method='post' action='add_transaksi.php?act=input'>
								<div class='form-group'>

									<label>pilih kamar</label>
									<select name='id_kamar' class='form-control'>

									<?php
									$sqlquery = "SELECT * FROM kamar";
									if ($result = mysqli_query($conn, $sqlquery)) {
										while ($row = mysqli_fetch_assoc($result)) {
											$id_kamar = $row["id_kamar"];
											$jenis_kamar = $row["jenis_kamar"];
											echo "<option value='$id_kamar'>$jenis_kamar</option>";
										}
										mysqli_free_result($result);
									}
									?>
									</select>
								</div>
                                <div class='form-group'>
                                    <label>Tanggal Cek In</label>
                                    <input type="text" id="date" name="tgl_cekin" class='form-control'>
                                </div>
                                <div class='form-group'>
									<label>Tanggal Cek Out</label>
									<input type='text' name='berat' id="datepik" class='form-control' >
								</div>
								<button type='input' name='input' class='btn btn-danger'>Simpan</button>
							</form>

						</div>
					</div>
				</div>
			</div>
		</div>
		<?php include("template/footer.php"); ?>
	</body>
</html>