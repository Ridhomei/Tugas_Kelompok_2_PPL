<?php
	session_start();
	$_SESSION['err'] = 1;
	foreach($_POST as $key => $value){
		if(trim($value) == ''){
			$_SESSION['err'] = 0;
		}
		break;
	}

	if($_SESSION['err'] == 0){
		header("Location: checkout.php");
	} else {
		unset($_SESSION['err']);
	}


	$_SESSION['ship'] = array();
	foreach($_POST as $key => $value){
		if($key != "submit"){
			$_SESSION['ship'][$key] = $value;
		}
	}
	require_once "./functions/database_functions.php";
	// print out header here
	$title = "Purchase";
	require "./template/header.php";
	// connect database
	if(isset($_SESSION['cart']) && (array_count_values($_SESSION['cart']))){
?>
	<table class="table">
		<tr>
			<th>Jajan</th>
			<th>Harga</th>
	    	<th>Jumlah</th>
	    	<th>Total</th>
	    </tr>
	    	<?php
			    foreach($_SESSION['cart'] as $isbn => $qty){
					$conn = db_connect();
					$book = mysqli_fetch_assoc(getBookByIsbn($conn, $isbn));
			?>
		<tr>
			<td><?php echo $book['book_title'] . " by " . $book['book_author']; ?></td>
			<td><?php echo "$" . $book['book_price']; ?></td>
			<td><?php echo $qty; ?></td>
			<td><?php echo "$" . $qty * $book['book_price']; ?></td>
		</tr>
		<?php } ?>
		<tr>
			<th>&nbsp;</th>
			<th>&nbsp;</th>
			<th><?php echo $_SESSION['total_items']; ?></th>
			<th><?php echo "$" . $_SESSION['total_price']; ?></th>
		</tr>
		
		<h2>Tabel Konfirmasi</h2>
		<tr>
			<td>Ongkir</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
			<td>$20.00</td>
		</tr>
		
		<tr>
			<th>Total Biaya</th>
			<th>&nbsp;</th>
			<th>&nbsp;</th>
			<th><?php echo "$" . ($_SESSION['total_price'] + 20); ?></th>
		</tr>
	</table>
	<center><span class="help-block">Silahkan transfer ke rekening BCA 66458665 atas nama Akhmad Alva</span></center><br>
	
	<form method="post" action="process.php" class="form-horizontal">
		<?php if(isset($_SESSION['err']) && $_SESSION['err'] == 1){ ?>
		<p class="text-danger">All fields have to be filled</p>
		<?php } ?>
        
		<div class="form-group">
            <label for="card_type" class="col-lg-2 control-label">Rekening</label>
            <div class="col-lg-8">
              	<input type="text" class="form-control" name="card_type">
            </div>
        </div>
		<div class="form-group">
            <label for="card_owner" class="col-lg-2 control-label">Atas Nama</label>
            <div class="col-lg-8">
              	<input type="text" class="form-control" name="card_owner">
            </div>
        </div>
        <div class="form-group">
            <label for="card_number" class="col-lg-2 control-label">No Rekening</label>
            <div class="col-lg-8">
              	<input type="text" class="form-control" name="card_number">
            </div>
        </div>
		<div class="form-group">
            <label for="card_PID" class="col-lg-2 control-label">Transfer Via</label>
            <div class="col-lg-8">
              	<input type="text" class="form-control" name="card_PID">
            </div>
        </div>
        <div class="form-group">
            <label for="card_expire" class="col-lg-2 control-label">Tanggal Transfer</label>
            <div class="col-lg-8">
              	<input type="date" name="card_expire" class="form-control">
            </div>
        </div>
        <div class="form-group">
            <center>
              	<button type="reset" class="btn btn-default">Batal</button>
              	<button type="submit" class="btn btn-primary">Beli</button>
            </center>
        </div>
    </form>
	<center><span class="help-block">Silakan tekan beli untuk mengonfirmasi pembelian Anda, atau lanjutkan berbelanja untuk menambah atau menghapus item</span></center><br>
<?php
	} else {
		echo "<p class=\"text-warning\">Your cart is empty! Please make sure you add some books in it!</p>";
	}
	if(isset($conn)){ mysqli_close($conn); }
	require_once "./template/footer.php";
?>