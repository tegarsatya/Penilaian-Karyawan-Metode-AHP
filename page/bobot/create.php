<?php
error_reporting(0);
// if ($_POST['Password']!=$_POST['CPassword']) {
//     echo "<script>//alert('Password Berbeda, harap lakukan registrasi kembali');
//     window.location.href='index.php?p=karyawan&act=create&s=dm&nip=".$_POST[NIP]."&nama=".$_POST[karyawan]."&JK=".$_POST[JK]."&uname=".$_POST[username]."&jabatan=".$_POST[jabatan]."&uname=".$_POST[username]."'</script>";
//   }
//   else{
if (isset($_POST['simpan'])) {
  $sql = "insert into nilai_kriteria values('" . $_POST[id_nilai] . "','" .$_POST[nilai]. "','" .$_POST[id_kriteria]. "')";
  $query = mysqli_query($con, $sql);
  if ($query) {
    echo "<script>alert('Data berhasil ditambahkan!');window.location.href='index.php?p=bobot'</script>";
  } else {
    echo "Error : " . mysqli_error($con);
  }
}
//}

?>
<style>
  .dm {
    margin: 5px;
    padding: 10px;
    background: #E65E4C;
    color: white;
    border-left: #ED2B12 solid 5px;
    font-weight: 35px;
  }
</style>

<div class="row">
  <!-- left column -->
  <div class="col-md-8">
    <!-- general form elements -->
    <div class="box box-primary">
      <div class="box-header with-border">
        <h3 class="box-title">Form Nilai Kriteria</h3>

      </div>
      <?php if ($_GET['s'] == "dm") {
        echo "<div class='dm'>Password berbeda, coba lagi</div>";
      } else {
        echo "";
      } ?>
      <!-- /.box-header -->
      <!-- form start -->
      <form role="form" method="post">
        <div class="box-body">

          <div class="form-group">
            <label for="exampleInputEmail1">Nilai Kriteria</label>
            <input type="text" class="form-control input-lg" id="exampleInputEmail1" placeholder="Masukan Nilai" name="nilai" <?php if (isset($_GET['nilai'])) {
                                                                                                                                            echo "value='" . $_GET['nilai'] . "'";
                                                                                                                                          } else {
                                                                                                                                            echo "";
                                                                                                                                        } ?> required>
          </div>

          <div class="form-group">
            <label for="exampleInputEmail1">Nama Kriteria</label>
            <select class="form-control input-lg" name="id_kriteria" required>
              <option disabled selected>-- Pilih Kriteria --</option>
              <?php
              $kri = mysqli_query($con, "SELECT * FROM kriteria order by kriteria");
              while ($kr = mysqli_fetch_array($kri)) {
                $id = $kr['id_kriteria'];
                $krite = $kr['kriteria'];
              ?>
                <option value='<?php echo $kr['id_kriteria']; ?>'><?php echo $kr['kriteria']; ?></option>
              <?php } ?>
            </select>
          </div>

        </div>
        <!-- /.box-body -->
        <div class="box-footer">
          <button type="submit" class="btn btn-primary" name="simpan">Simpan</button>
        </div>
      </form>
    </div>
    <!-- /.box -->


  </div>

</div>



<!-- /.row -->
<script>
  var check = function() {
    if (document.getElementById('password').value == document.getElementById('confirm_password').value) {
      document.getElementById('message').style.color = 'green';
      document.getElementById('message').innerHTML = 'matching';
    } else {
      document.getElementById('message').style.color = 'red';
      document.getElementById('message').innerHTML = 'not matching';
    }
  }
</script>