<?php
  $title = "Contact";
  require_once "./template/header.php";
?>
	<center><p class="lead"><h3>Layanan Kontak</h3></p>
	<span class="help-block">Konfirmasi Kepada Kami Untuk Layanan Lebih Baik</span></center><br>
    <div class="row">
        <div class="col-md-3"></div>
		<div class="col-md-6 text-center">
		<form class="form-horizontal">	  	
			<fieldset>
				    <div class="form-group">
				      	<label for="inputName" class="col-lg-2 control-label">Nama</label>
				      	<div class="col-lg-10">
				        	<input type="text" class="form-control" id="inputName" placeholder="Masukan Nama">
				      	</div>
				    </div>
				    <div class="form-group">
				      	<label for="inputEmail" class="col-lg-2 control-label">Email</label>
				      	<div class="col-lg-10">
				        	<input type="text" class="form-control" id="inputEmail" placeholder="Masukan Email">
				      	</div>
				    </div>
				    <div class="form-group">
				      	<label for="textArea" class="col-lg-2 control-label">Ulasan</label>
				      	<div class="col-lg-10">
				        	<textarea class="form-control" rows="3" id="textArea" placeholder="Masukan Ulasan"></textarea>
				      	</div>
				    </div>
				    <div class="form-group">
				      	<div class="col-lg-10 col-lg-offset-2">
				        	<button type="reset" class="btn btn-default">Batal</button>
				        	<button type="submit" class="btn btn-primary">Kirim</button>
				      	</div>
				    </div>
			  	</fieldset>
			</form>
		</div>
		<div class="col-md-3"></div>
    </div>
<?php
  require_once "./template/footer.php";
?>