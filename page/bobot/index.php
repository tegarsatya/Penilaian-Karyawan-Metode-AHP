<?php

if (isset($_GET['delete'])) {
  $id = $_GET['id'];
  $sql = "DELETE from nilai_kriteria where id_nilai='$id'";
  $query = mysqli_query($con, $sql);
  if ($query) {
    echo "<script>alert('Data berhasil dihapus!');window.location.href='index.php?p=bobot&ta=$ta'</script>";
  } else {
    echo mysqli_error($con);
  }
}

?>

<div class="row">
  <div class="col-xs-12">

    <div class="box">
      <div class="box-header">
        <h3 class="box-title">Data Nilai Penilaian Kinerja Karyawan</h3>
      </div>
      <!-- /.box-header -->
      <div class="box-body">
        <table id="example1" class="table table-bordered table-striped">
          <thead>
            <tr>
              <th>Nama kriteria</th>
              <th>Nilai</th>
              <th>Aksi</th>
            </tr>
          </thead>
          <tbody>
            <?php

            $sql = "select * from nilai_kriteria";
            $query = mysqli_query($con, $sql);
            while ($row = mysqli_fetch_assoc($query)) :
              $kri = mysqli_query($con, "SELECT * from kriteria where id_kriteria='$row[id_kriteria]'");
              $kr = mysqli_fetch_array($kri);

            ?>
              <tr>
                <td><?= $kr['kriteria'] ?></td>
                <td><?= $row['nilai'] ?></td>

                <td>

                  <a href="index.php?p=bobot&act=show&id=<?= $row['id_nilai'] ?>"><?= $row['nilai_kriteria'] ?></a>
                  <a href="index.php?p=bobot&act=edit&id=<?= $row['id_nilai'] ?>" class="btn btn-primary"><i class="glyphicon glyphicon-edit"></i></a>
                  <a href="index.php?p=bobot&delete&id=<?= $row['id_nilai'] ?>" class="btn btn-danger" onclick="return confirm('Jika data dihapus, maka data bobot kriteria akan direset?')"><i class="glyphicon glyphicon-trash"></i></a>

                </td>
              </tr>
            <?php endwhile; ?>
          </tbody>
          <tfoot>
          </tfoot>
        </table>
      </div>
      <!-- /.box-body -->
    </div>
    <!-- /.box -->
  </div>
  <!-- /.col -->
</div>
<!-- /.row -->