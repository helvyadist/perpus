<aside class="main-sidebar">
    <section class="sidebar">
        <div class="user-panel">
            <div class="pull-left image">
                <img src="<?= base_url()?>assets/dist/img/ars.png" class="img-circle" alt="User Image">
            </div>
            <div class="pull-left info">
                <p>Admin</p>
                <a href="#"><i class="fa fa-circle text-success"></i> Online</a>
            </div>
        </div>

        <ul class="sidebar-menu" data-widget="tree">
            <hr>
            <li class="active">
                <a href="<?= base_url()?>dashboard">
                    <i class="fa fa-home"></i> <span>Dashboard</span>
                </a>
            </li>

            <li><a href="<?= base_url()?>anggota"><i class="fa fa-user"></i> Anggota</a></li>

            <li class="treeview">
                <a href="#">
                    <i class="fa fa-book"></i>
                <span>Buku</span>
                    <span class="pull-right-container">
                        <i class="fa fa-angle-left pull-right"></i>
                    </span>
                </a>
                <ul class="treeview-menu">
                    <li><a href="<?= base_url()?>pengarang"><i class="fa fa-circle-o"></i> Pengarang</a></li>
                    <li><a href="<?= base_url()?>penerbit"><i class="fa fa-circle-o"></i> Penerbit</a></li>
                    <li><a href="<?= base_url()?>buku"><i class="fa fa-circle-o"></i> Buku</a></li>
                </ul>
            </li>

            <li class="treeview">
                <a href="#">
                    <i class="fa fa-exchange"></i>
                <span>Transaksi</span>
                    <span class="pull-right-container">
                        <i class="fa fa-angle-left pull-right"></i>
                    </span>
                </a>
                <ul class="treeview-menu">
                    <li><a href="<?= base_url()?>peminjaman"><i class="fa fa-circle-o"></i> Peminjaman</a></li>
                    <li><a href="<?= base_url()?>pengembalian"><i class="fa fa-circle-o"></i> Pengembalian</a></li>
                </ul>
            </li>

            <hr>

            <li><a href="<?= base_url()?>login/logout"><i class="fa fa-sign-out"></i> Logout</a></li>
        
        </ul>
    </section>
</aside>