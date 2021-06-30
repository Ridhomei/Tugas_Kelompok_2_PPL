<?php
	session_start();
	require_once "./functions/admin.php";
	$title = "List book";
	require_once "./template/header.php";
	require_once "./functions/database_functions.php";
	$conn = db_connect();
	$result = getAll($conn);
?>
	<p class="lead"><a href="admin_add.php">Tambah Jajan</a></p>
	<a href="admin_signout.php" class="btn btn-primary">Keluar</a>
	<h2>Tabel Jajan</h2>
	<table class="table" style="margin-top: 20px">
		<tr>
			<th>Nomor</th>
			<th>Nama Jajan</th>
			<th>Jenis Jajan</th>
			<th>Merk</th>
			<th>Deskripsi</th>
			<th>Gambar</th>
			<th>Harga</th>
			<th>&nbsp;</th>
			<th>&nbsp;</th>
		</tr>
		<?php while($row = mysqli_fetch_assoc($result)){ ?>
		<tr>
			<td><?php echo $row['book_isbn']; ?></td>
			<td><?php echo $row['book_title']; ?></td>
			<td><?php echo getPubName($conn, $row['publisherid']); ?></td>
			<td><?php echo $row['book_author']; ?></td>
			<td><?php echo $row['book_descr']; ?></td>
			<td><?php echo $row['book_image']; ?></td>
			<td><?php echo $row['book_price']; ?></td>
			
			<td><a href="admin_edit.php?bookisbn=<?php echo $row['book_isbn']; ?>">Edit</a></td>
			<td><a href="admin_delete.php?bookisbn=<?php echo $row['book_isbn']; ?>">Delete</a></td>
		</tr>
		<?php } ?>
	</table>

<?php
	if(isset($conn)) {mysqli_close($conn);}
	require_once "./template/footer.php";
?>