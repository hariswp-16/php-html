<!DOCTYPE html>
<html>
<head>

	<title>Data Dosen</title>
	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">

	


</head>


<body>

	<div class="container">
		
		<div class="alert alert-info">Data Dosen</div>
		<a href="create.php" class="btn btn-info">Tambah Data</a>
		<br> <br>

		<table class="table table-bordered">
			<thead>
				<tr>
					
					<th>No</th>
					<th>NIP</th>
					<th>Nama</th>
					<th>Alamat</th>
					<th>Aksi</th>

					<tbody>
						<?php  
						require "../koneksi.php";
						$query = "SELECT * FROM dosen";
						$result = mysqli_query($link, $query);
						$no = 1;
						while ($isi = mysqli_fetch_object($result)) {
							?>
							<tr>
								<td><?= $no++; ?></td>
								<td><?= $isi->nip_dosen;  ?></td>
								<td><?= $isi->nama_dosen;  ?></td>
								<td><?= $isi->alamat;  ?></td>
								<td>

									<a href="delete.php?nip_dosen=<?php echo $isi->nip_dosen; ?>"
										class = "btn btn-danger">Del</a>

									<a href="update.php?nip_dosen=<?php echo $isi->nip_dosen; ?>"
										class = "btn btn-warning">Edit</a>

								</td>
									</tr>
								<?php } ?>
							</tbody>
						</tr>
					</thead>
				</table>
			</div>

		</body>

		</html>