<div class="row">
    <div class="col-lg-3 col-xs-6">
        <div div class="small-box bg-aqua">
            <div class="inner">
                <h3><?= $anggota;?></h3>
                <p><b>Total Anggota</b></p>
            </div>
            <div class="icon">
                <i class="fa fa-users"></i>
            </div>
            <a href="<?= base_url()?>anggota" class="small-box-footer">More info <i class="fa fa-arrow-circle-right"></i></a>
        </div>
    </div>
    <div class="col-lg-3 col-xs-6">
        <div class="small-box bg-yellow">
            <div class="inner">
                <h3><?= $buku;?></h3>
                <p><b>Total Buku</b></p>
            </div>
            <div class="icon">
                <i class="fa fa-book"></i>
            </div>
            <a href="<?= base_url()?>buku" class="small-box-footer">More info <i class="fa fa-arrow-circle-right"></i></a>
        </div>
    </div>
    <div class="col-lg-3 col-xs-6">
        <div class="small-box bg-aqua">
            <div class="inner">
                <h3><?= $pinjam;?></h3>
                <p><b>Total Peminjaman Buku</b></p>
            </div>
            <div class="icon">
                <i class="fa fa-file-o"></i>
            </div>
            <a href="<?= base_url()?>peminjaman" class="small-box-footer">More info <i class="fa fa-arrow-circle-right"></i></a>
        </div>
    </div>
    <div class="col-lg-3 col-xs-6">
        <div class="small-box bg-yellow">
            <div class="inner">
                <h3><?= $kembali;?></h3>
                <p><b>Total Pengembalian Buku</b></p>
            </div>
            <div class="icon">
                <i class="fa fa-file"></i>
            </div>
            <a href="<?= base_url()?>pengembalian" class="small-box-footer">More info <i class="fa fa-arrow-circle-right"></i></a>
        </div>
    </div>
</div>