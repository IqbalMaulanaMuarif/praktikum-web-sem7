<!-- Content Wrapper. Contains page content -->
<div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
        <div class="container-fluid">
            <div class="row mb-2">
                <div class="col-sm-6">
                    <h1><?= $data['title']; ?></h1>
                </div>
            </div>
        </div><!-- /.container-fluid -->
    </section>

    <!-- Main content -->
    <section class="content">
        <div class="row">
            <div class="col-sm-12">
                <?php
                Flasher::Message();
                ?>
            </div>
        </div>
        <!-- Default box -->
        <div class="card">
            <div class="card-header">
                <h3 class="card-title"><?= $data['title'] ?></h3>
            </div>
            <div class="card-body">
                <table class="table table-bordered">
                    <thead>
                        <tr>
                            <th style="width:10px">#</th>
                            <th>Nama</th>
                            <th>Alamat</th>
                            <th>Tanggal Lahir</th>
                            <th>Jenis Kelamin</th>
                            <th>Kontak Darurat</th>
                            <th>Program Studi</th>
                            <th style="width:150px">Action</th>
                        </tr>
                    </thead>
                    <tbody>
                        <?php $no = 1; ?>
                        <?php foreach ($data['mahasiswa'] as $row) : ?>
                            <tr>
                                <td><?= $no; ?></td>
                                <td><?= $row['Nama']; ?></td>
                                <td><?= $row['Alamat']; ?></td>
                                <td><?= $row['TanggalLahir']; ?></td>
                                <td><?= $row['JenisKelamin']; ?></td>
                                <td><?= $row['KontakDarurat']; ?></td>
                                <td><?= $row['NamaProgram']; ?></td>
                                <td>
                                    <a href="<?= base_url; ?>/mahasiswa/edit/<?= $row['MahasiswaID'] ?>" class="badge badge-info">Edit</a>
                                    <a href="<?= base_url; ?>/mahasiswa/hapus/<?= $row['MahasiswaID'] ?>" class="badge badge-danger" onclick="return confirm('Hapus data?');">Hapus</a>
                                </td>
                            </tr>
                            <?php $no++; ?>
                        <?php endforeach; ?>
                    </tbody>
                </table>
            </div>
            <!-- /.card-body -->
        </div>
        <!-- /.card -->
    </section>
    <!-- /.content -->
</div>
<!-- /.content-wrapper -->