<!DOCTYPE html>
<html>
<head>

	<title>Data Mahasiswa</title>
	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">

	


</head>


<body>

	<div class="container">
		
		<div class="alert alert-info">Data Mahasiswa</div>

		<?php
		require "../koneksi.php";
		if (isset($_POST["simpan"])){
			$input_nim = $_POST["txtnim"];
			$input_nama = $_POST["txtnama"];
			$input_prodi = $_POST["txtprodi"];


			$query = "INSERT INTO mahasiswa VALUES('$input_nim', '$input_nama', '$input_prodi')";
			$result = mysqli_query($link, $query);
			if ($result){
				header("location: index2.php");

			}else{
				echo "Gagal disimpan : " . mysqli_error($link);
			}
		}
		?>



		<form action="" method="post">
			<div class="form-group">
				<label for="">NIM</label>
				<input type="text"  class= "form-control" name="txtnim">
			</div>

			<div class="form-group">
				<label for="">Nama</label>
				<input type="text"  class= "form-control" name="txtnama">
			</div>

			<div class="form-group">
				<label for="">Prodi</label>
				<input type="text"  class= "form-control" name="txtprodi">
			</div>

			<input type="submit"  class= "btn btn-primary"
			name="simpan" value="Simpan Data">
			<a href="index2.php" class="btn btn-warning">Batal</a>  






		</form>
	</body>

	</html>