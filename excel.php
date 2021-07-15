
    <?php include("db/config.php");?>
<!DOCTYPE html>
<html>
	<head>
		<title>Laporan</title>
		<meta charset="utf-8">
		<meta http-equiv="X-UA-Compatible" content="IE=edge">
		<meta name="viewport" content="width=device-width, initial-scale=1">
	</head>
	<body>
    <?php
	header("Content-type: application/vnd-ms-excel");
	header("Content-Disposition: attachment; filename=Data Pegawai.xls");
	?>
						
							<center>
								<h3></h3>
								<h3>Laporan Data Transaksi Hotel Mythic Glory </h3>
								<p>&nbsp;</p>
							</center>

							<table class="table table-hover table-bordered">
							  <thead>
								<tr>
                                <th>No</th>
								  <th>ID Transaksi</th>
								  <th>Nama Tamu</th>
								  <th>No Telp</th>
								  <th>Jenis Kamar</th>
								  <th>Harga</th>
								  <th>Tanggal Pesan</th>
								  <th>Tanggal Cek In</th>
								  <th>Tanggal Cek Out</th>
								  <th>Total Bayar</th>
								</tr>
							  </thead>
							  <tbody> 
<?php
$query=mysqli_query($conn, "SELECT id_transaksi,nama_tamu,no_telp,jenis_kamar,tarif,tgl_pesan,tgl_cekin,tgl_cekout,total_tarif 
FROM transaksi_hotel
CROSS JOIN kamar ON transaksi_hotel.id_kamar = kamar.id_kamar 
CROSS JOIN tamu_hotel ON transaksi_hotel.id_tamu = tamu_hotel.id_tamu")or die (mysqli_error($conn)); 


$j=0; 
while ($row=mysqli_fetch_array($query)) {     
    echo "<tr><td align='left' bgcolor='#657FFF'>";
    echo $j+1;
    echo"</font>";
    echo"</td>";     
    echo "<td align='left' bgcolor='#E8D3DF'>";
    echo $row["id_transaksi"];
    echo"</font>";
    echo"</td>";  
    echo "<td align='left' bgcolor='#E8D3DF'>";
    echo $row["nama_tamu"];
    echo"</font>";
    echo"</td>";     
    echo"<td align='left' bgcolor='#E8D3DF'>";
    echo $row["no_telp"];
    echo"</font>";
    echo"</td>";     
    echo"<td align='left' bgcolor='#E8D3DF'>";
    echo $row["jenis_kamar"];
    echo"</font>";
    echo"</td>";     
    echo"<td align='left' bgcolor='#E8D3DF'>";
    echo $row["tarif"];
    echo"</font>";
    echo"</td>";     
    echo"<td align='left' bgcolor='#E8D3DF'>";
    echo $row["tgl_pesan"];
    echo"</font>";
    echo"</td>";     
    echo"<td align='left' bgcolor='#E8D3DF'>";
    echo $row["tgl_cekin"];
    echo"</font>";
    echo"</td>";     
    echo"<td align='left' bgcolor='#E8D3DF'>";
    echo $row["tgl_cekout"];
    echo"</font>";
    echo"</td>";     
    echo"<td align='left' bgcolor='#E8D3DF'>";
    echo $row["total_tarif"];
    echo"</font>";
    echo"</td>";     
    echo"<td align='left' bgcolor='#E8D3DF'>"; 
} ?>
</tbody>
</table>
<div class='pull-right'>
							Cikarang Pusat, 03 juli 2021 <br>
							<b><center>Manager Hotel Mithyc Glory</center></b>
							<p>&nbsp;</p>
							<p>&nbsp;</p>
                            <p>&nbsp;</p>
							<b><center>WILIANTO</center></b>
							</div>
                            <script>
		window.print();
	</script>
    </body>
</html>