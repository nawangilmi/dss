<?php
include_once('includes/header.inc.php');

$id = isset($_GET['id']) ? $_GET['id'] : die('ERROR: missing ID.');

include_once('includes/alternatif.inc.php');

$altObj = new Alternatif($db);
$altObj->id = $id;
$altObj->readOne();

if ($_POST) {
  	$altObj->nama = $_POST["nama"];
  	$altObj->jumlah_sekolah = $_POST["jumlah_sekolah"];
  	$altObj->tanggal_lahir = $_POST["tanggal_lahir"];
  	$altObj->jumlah_guru = $_POST["jumlah_guru"];
  	$altObj->jumlah_murid = $_POST["jumlah_murid"];
  	$altObj->jumlah_tidak_bersekolah = $_POST["jumlah_tidak_bersekolah"];
    if ($altObj->update()) {
        echo "<script>location.href='data-alternatif.php'</script>";
    } else { ?>
      <script type="text/javascript">
        window.onload = function () {
          showStickyErrorToast();
        };
      </script> <?php
    }
}
?>

<div class="row">
  <div class="col-xs-12 col-sm-12 col-md-12">
    <ol class="breadcrumb">
      <li><a href="index.php">Beranda</a></li>
      <li><a href="data-alternatif.php">Data Alternatif</a></li>
      <li class="active">Ubah Data</li>
    </ol>
    <p style="margin-bottom:10px;">
      <strong style="font-size:18pt;"><span class="fa fa-pencil"></span> Ubah Alternatif</strong>
    </p>
      <div class="panel panel-default">
        <div class="panel-body">
          <form method="POST">
            <div class="form-group">
                <label for="id">ID Alternatif</label>
                <input type="text" name="id" id="id" class="form-control" autofocus="on" readonly="on" value="<?php echo $altObj->id; ?>">
            </div>
            <div class="form-group">
                <label for="nama">Nama Desa</label>
                <input type="text" name="nama" id="nama" class="form-control" required="on" value="<?php echo $altObj->nama; ?>">
            </div>
            <div class="form-group">
                <label for="jumlah_sekolah">Jumlah Sekolah</label>
                <input type="number" name="jumlah_sekolah" id="jumlah_sekolah" class="form-control" required="on" value="<?php echo $altObj->jumlah_sekolah; ?>">
            </div>
            <div class="form-group">
                <label for="jumlah_guru">Jumlah Guru</label>
                <input type="number" name="jumlah_guru" id="jumlah_guru" class="form-control" required="on" value="<?php echo $altObj->jumlah_guru; ?>">
            </div>
            <div class="form-group">
                <label for="jumlah_murid">Jumlah Murid</label>
                <input type="number" name="jumlah_murid" id="jumlah_murid" class="form-control" required="on" value="<?php echo $altObj->jumlah_murid; ?>">
            </div>
            <div class="form-group">
                <label for="jumlah_tidak_bersekolah">Jumlah Tidak Bersekolah</label>
                <input type="number" name="jumlah_tidak_bersekolah" id="jumlah_tidak_bersekolah" class="form-control" required="on" value="<?php echo $altObj->jumlah_tidak_bersekolah; ?>">
            </div>
            <div class="btn-group">
              <button type="submit" class="btn btn-dark">Ubah</button>
              <button type="button" onclick="location.href = 'data-alternatif.php'" class="btn btn-default">Kembali</button>
            </div>
          </form>
        </div>
      </div>
  </div>
</div>

<?php include_once('includes/footer.inc.php'); ?>
