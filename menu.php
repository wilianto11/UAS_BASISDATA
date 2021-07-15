<div id='cssmenu'>
    <ul>
        <li>
            <a href='index.php'>
                <i class="fa fa-home fa-fw"></i>&nbsp; Home</a>
        </li>
        <li>
            <a href='?table_transaksi'>
                <i class="fas fa-database"></i>&nbsp; Transaksi</a>
        </li>
        <li class='active has-sub'>
            <a href='#'>
                <i class="fa fa-bars fa-fw"></i>&nbsp; Data Master</a>
            <ul>
                <li class='has-sub'>
                    <a href='#'>
                        <span>Data Tamu</span>
                    </a>
                    <ul>
                        <li>
                            <a href='add_tamu.php'>
                                <span>Tambah Tamu</span>
                            </a>
                        </li>
                        <li class='last'>
                            <a href='table_tamu.php'>
                                <span>Aksi Tamu</span>
                            </a>
                        </li>
                    </ul>
                </li>
                <li class='has-sub'>
                    <a href='#'>
                        <span>Data Kamar</span>
                    </a>
                    <ul>
                        <li>
                            <a href='add_kamar.php'>
                                <span>Tambah Kamar</span>
                            </a>
                        </li>
                        <li class='last'>
                            <a href='table_kamar.php'>
                                <span>Aksi Kamar</span>
                            </a>
                        </li>
                    </ul>
                </li>
            </ul>
        </li>
        <li>
            <a href='laporan.php'>
                <i class="fas fa-file-signature"></i>&nbsp; Laporan </a>
        </li>
        <li>
            <a href='log_transaksi.php'>
                <i class="fas fa-outdent"></i>&nbsp; Trigger </a>
        </li>
        <li class='last'>
            <a onclick="return confirm('Apakah Yakin Mau Log Out Admin Sekarang ???'); " href='logout.php'>
                <i class="fas fa-power-off"></i>&nbsp; Logout</a>
        </li>
    </ul>
</div>