<?php 
require "../koneksi.php";
if (isset($_GET['nip_dosen'])) {
	
	$input_nip = $_GET['nip_dosen'];

	$query = "DELETE FROM dosen WHERE nip_dosen='$input_nip'";
	$result = mysqli_query($link, $query);

	if ($result){
		header('location: index.php');

	}else{
		echo 'Gagal Dihapus : ' . mysqli_error($link);
	}
}


?>