-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 15 Jul 2021 pada 17.19
-- Versi server: 10.4.18-MariaDB
-- Versi PHP: 8.0.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `wilianto_311910184`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `anggota`
--

CREATE TABLE `anggota` (
  `id_anggota` int(11) NOT NULL,
  `kode_anggota` varchar(9) DEFAULT NULL,
  `nama_anggota` varchar(100) DEFAULT NULL,
  `jk_anggota` char(1) DEFAULT NULL,
  `jurusan_anggota` varchar(2) DEFAULT NULL,
  `no_telp_anggota` varchar(13) DEFAULT NULL,
  `alamat_anggota` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `anggota`
--

INSERT INTO `anggota` (`id_anggota`, `kode_anggota`, `nama_anggota`, `jk_anggota`, `jurusan_anggota`, `no_telp_anggota`, `alamat_anggota`) VALUES
(111, 'a111', 'wilianto', 'L', 'TI', '081384500309', 'indramayu'),
(112, 'b111', 'reza', 'L', 'TI', '081384500999', 'kebumen'),
(113, 'c111', 'apink', 'p', 'TI', '081384500399', 'indramayu');

-- --------------------------------------------------------

--
-- Struktur dari tabel `barang`
--

CREATE TABLE `barang` (
  `id_barang` int(11) NOT NULL,
  `id_kategori` smallint(6) NOT NULL,
  `nama_barang` varchar(255) CHARACTER SET latin1 NOT NULL,
  `harga` int(11) NOT NULL,
  `stok` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

--
-- Dumping data untuk tabel `barang`
--

INSERT INTO `barang` (`id_barang`, `id_kategori`, `nama_barang`, `harga`, `stok`) VALUES
(1, 1, 'RAM', 230000, 4),
(2, 1, 'Mainboard', 1250000, 7),
(3, 1, 'Mouse', 80000, 6),
(4, 3, 'Mousepad', 35000, 3),
(5, 3, 'Keyboard', 80000, 5);

-- --------------------------------------------------------

--
-- Struktur dari tabel `buku`
--

CREATE TABLE `buku` (
  `id_buku` int(11) NOT NULL,
  `kode_buku` char(5) NOT NULL,
  `judul_buku` varchar(50) DEFAULT NULL,
  `penulis_buku` varchar(50) DEFAULT NULL,
  `penerbit_buku` varchar(50) DEFAULT NULL,
  `tahun_penerbit` char(4) DEFAULT NULL,
  `stok` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `buku`
--

INSERT INTO `buku` (`id_buku`, `kode_buku`, `judul_buku`, `penulis_buku`, `penerbit_buku`, `tahun_penerbit`, `stok`) VALUES
(202101, 'py001', 'pemograman python', 'hanna arini parhusip', 'penerbit andi', '2019', 5),
(202102, 'jv002', 'pemograman java', 'anik andriani', 'wahana komputer', '2017', 10),
(202103, 'ph003', 'php dan mysql', 'anik andriani', 'wahana komputer', '2020', 10);

-- --------------------------------------------------------

--
-- Struktur dari tabel `kamar`
--

CREATE TABLE `kamar` (
  `id_kamar` int(10) NOT NULL,
  `jenis_kamar` varchar(100) DEFAULT NULL,
  `tarif` int(12) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `kamar`
--

INSERT INTO `kamar` (`id_kamar`, `jenis_kamar`, `tarif`) VALUES
(111, 'standart room', 200000),
(116, 'family', 2000000),
(117, 'suite room', 2000000),
(119, 'regular room', 150000),
(120, 'special room', 5000000),
(122, 'king queen room', 1500000);

-- --------------------------------------------------------

--
-- Struktur dari tabel `log_delete_transaksi`
--

CREATE TABLE `log_delete_transaksi` (
  `id_log` int(6) NOT NULL,
  `id_transaksi` int(10) DEFAULT NULL,
  `id_tamu` int(10) DEFAULT NULL,
  `id_kamar` int(10) DEFAULT NULL,
  `tgl_pesan` date DEFAULT NULL,
  `tgl_cekin` date DEFAULT NULL,
  `tgl_cekout` date DEFAULT NULL,
  `total_tarif` int(12) DEFAULT NULL,
  `waktu` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `log_delete_transaksi`
--

INSERT INTO `log_delete_transaksi` (`id_log`, `id_transaksi`, `id_tamu`, `id_kamar`, `tgl_pesan`, `tgl_cekin`, `tgl_cekout`, `total_tarif`, `waktu`) VALUES
(1, 1012, 222222, 113, '2021-07-01', '2021-07-02', '2021-07-03', 800000, '2021-07-10'),
(2, 1001, 222222, 111, '2021-01-01', '2021-01-03', '2021-01-04', 200000, '2021-07-10'),
(3, 1016, 222229, 117, '2021-07-10', '2021-07-11', '2021-07-13', 4000000, '2021-07-12'),
(4, 1017, 222230, 118, '2021-07-10', '2021-07-11', '2021-07-12', 900000, '2021-07-14'),
(5, 1015, 222228, 116, '2021-07-10', '2021-07-24', '2021-07-26', 2000000, '2021-07-14'),
(6, 1014, 222222, 111, '2021-07-01', '2021-07-02', '2021-07-04', 400000, '2021-07-15'),
(7, 1020, 222233, 111, '2021-07-03', '2021-07-03', '2021-07-05', 400000, '2021-07-15'),
(8, 1021, 222222, 117, '2021-07-10', '2021-07-11', '2021-07-13', 4000000, '2021-07-15'),
(9, 1022, 222237, 122, '2021-07-10', '2021-07-11', '2021-07-12', 1500000, '2021-07-15');

-- --------------------------------------------------------

--
-- Struktur dari tabel `log_insert_tamu`
--

CREATE TABLE `log_insert_tamu` (
  `id_log` int(6) NOT NULL,
  `id_tamu` int(12) NOT NULL,
  `nama_tamu` varchar(200) NOT NULL,
  `no_telp` varchar(13) NOT NULL,
  `waktu` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `log_insert_tamu`
--

INSERT INTO `log_insert_tamu` (`id_log`, `id_tamu`, `nama_tamu`, `no_telp`, `waktu`) VALUES
(2, 222235, 'nunuk', '087666555444', '2021-07-15'),
(3, 222236, 'popol', '087555445566', '2021-07-15'),
(4, 222237, 'panca', '087888999000', '2021-07-15'),
(5, 222238, 'solihin', '089000777666', '2021-07-15');

-- --------------------------------------------------------

--
-- Struktur dari tabel `log_update_transaksi`
--

CREATE TABLE `log_update_transaksi` (
  `id_log` int(6) NOT NULL,
  `id_transaksi` int(12) NOT NULL,
  `id_tamu` int(12) NOT NULL,
  `tgl_cekin` date NOT NULL,
  `tgl_cekout_old` date NOT NULL,
  `tgl_cekout_new` date NOT NULL,
  `total_tarif_old` int(11) NOT NULL,
  `total_tarif_new` int(12) NOT NULL,
  `waktu` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `log_update_transaksi`
--

INSERT INTO `log_update_transaksi` (`id_log`, `id_transaksi`, `id_tamu`, `tgl_cekin`, `tgl_cekout_old`, `tgl_cekout_new`, `total_tarif_old`, `total_tarif_new`, `waktu`) VALUES
(3, 1018, 222231, '2021-07-03', '2021-07-06', '2021-07-07', 450000, 600000, '2021-07-15'),
(4, 1021, 222222, '2021-07-11', '2021-07-12', '2021-07-13', 2000000, 4000000, '2021-07-15'),
(5, 1019, 222232, '2021-07-03', '2021-07-04', '2021-07-05', 5000000, 10000000, '2021-07-15');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pelanggan`
--

CREATE TABLE `pelanggan` (
  `id_pelanggan` int(11) NOT NULL,
  `nama` varchar(50) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

--
-- Dumping data untuk tabel `pelanggan`
--

INSERT INTO `pelanggan` (`id_pelanggan`, `nama`, `email`) VALUES
(1, 'Alfa', 'alfa@yahoo.com'),
(2, 'Beta', 'beta@yahoo.com'),
(3, 'Charlie', 'charlie@gmail.com'),
(4, 'Delta', 'delta@gmail.com');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pembayaran`
--

CREATE TABLE `pembayaran` (
  `id_bayar` int(11) NOT NULL,
  `id_transaksi` int(11) DEFAULT NULL,
  `tgl_bayar` date DEFAULT NULL,
  `total_bayar` int(12) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `pembayaran`
--

INSERT INTO `pembayaran` (`id_bayar`, `id_transaksi`, `tgl_bayar`, `total_bayar`) VALUES
(0, 111, '2021-12-01', 0),
(22, 222, '2021-07-20', 700000);

-- --------------------------------------------------------

--
-- Struktur dari tabel `pembeli`
--

CREATE TABLE `pembeli` (
  `id_pembeli` int(11) NOT NULL,
  `nama_pembeli` varchar(30) DEFAULT NULL,
  `jk` char(1) DEFAULT NULL,
  `no_telp` varchar(13) DEFAULT NULL,
  `alamat` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `pembeli`
--

INSERT INTO `pembeli` (`id_pembeli`, `nama_pembeli`, `jk`, `no_telp`, `alamat`) VALUES
(1234, 'willy', 'L', '081384500309', 'indramayu'),
(1235, 'pote', 'L', '081384500333', 'bekasi'),
(1236, 'nunuk', 'P', '085384500000', 'karawang');

-- --------------------------------------------------------

--
-- Struktur dari tabel `peminjaman`
--

CREATE TABLE `peminjaman` (
  `id_peminjaman` int(11) NOT NULL,
  `tanggal_pinjam` date DEFAULT NULL,
  `tanggal_kembali` date DEFAULT NULL,
  `id_buku` int(11) DEFAULT NULL,
  `id_anggota` int(11) DEFAULT NULL,
  `id_petugas` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `peminjaman`
--

INSERT INTO `peminjaman` (`id_peminjaman`, `tanggal_pinjam`, `tanggal_kembali`, `id_buku`, `id_anggota`, `id_petugas`) VALUES
(2021001, '2021-04-20', '2021-04-26', 202101, 111, 910),
(2021002, '2021-04-19', '2021-04-24', 202102, 112, 911),
(2021003, '2021-04-21', '2021-04-27', 202103, 113, 911);

-- --------------------------------------------------------

--
-- Struktur dari tabel `pengembalian`
--

CREATE TABLE `pengembalian` (
  `id_pengembalian` int(11) NOT NULL,
  `tanggal_pengembalian` date DEFAULT NULL,
  `denda` int(11) DEFAULT NULL,
  `id_buku` int(11) DEFAULT NULL,
  `id_anggota` int(11) DEFAULT NULL,
  `id_petugas` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `pengembalian`
--

INSERT INTO `pengembalian` (`id_pengembalian`, `tanggal_pengembalian`, `denda`, `id_buku`, `id_anggota`, `id_petugas`) VALUES
(2022, '2021-04-26', 0, 202101, 111, 912),
(2023, '2021-04-26', 5000, 202102, 112, 912),
(2024, '2021-04-29', 5000, 202103, 113, 911);

-- --------------------------------------------------------

--
-- Struktur dari tabel `penjualan`
--

CREATE TABLE `penjualan` (
  `id_transaksi` int(11) NOT NULL,
  `id_pelanggan` int(11) DEFAULT NULL,
  `tgl_transaksi` date NOT NULL,
  `total_transaksi` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

--
-- Dumping data untuk tabel `penjualan`
--

INSERT INTO `penjualan` (`id_transaksi`, `id_pelanggan`, `tgl_transaksi`, `total_transaksi`) VALUES
(1, NULL, '2017-02-22', 230000),
(2, NULL, '2017-02-22', 195000),
(3, NULL, '2017-01-01', 1710000),
(4, NULL, '2017-02-04', 310000),
(5, NULL, '2017-02-10', 80000);

-- --------------------------------------------------------

--
-- Struktur dari tabel `penjualan_detail`
--

CREATE TABLE `penjualan_detail` (
  `id_transaksi_detail` int(11) NOT NULL,
  `id_transaksi` int(11) DEFAULT NULL,
  `id_barang` int(11) DEFAULT NULL,
  `jml_barang` smallint(6) DEFAULT NULL,
  `harga_satuan` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `penjualan_detail`
--

INSERT INTO `penjualan_detail` (`id_transaksi_detail`, `id_transaksi`, `id_barang`, `jml_barang`, `harga_satuan`) VALUES
(1, 1, 1, 1, 230000),
(2, 2, 4, 1, 35000),
(3, 2, 5, 2, 80000),
(4, 3, 2, 1, 1250000),
(5, 3, 1, 2, 230000),
(6, 4, 4, 2, 35000),
(7, 4, 5, 1, 80000),
(8, 4, 3, 2, 80000),
(9, 5, 3, 1, 80000);

-- --------------------------------------------------------

--
-- Struktur dari tabel `petugas`
--

CREATE TABLE `petugas` (
  `id_petugas` int(11) NOT NULL,
  `nama_petugas` varchar(50) DEFAULT NULL,
  `jabatan_petugas` varchar(50) DEFAULT NULL,
  `no_telp_petugas` char(13) DEFAULT NULL,
  `alamat_petugas` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `petugas`
--

INSERT INTO `petugas` (`id_petugas`, `nama_petugas`, `jabatan_petugas`, `no_telp_petugas`, `alamat_petugas`) VALUES
(910, 'ahmad', 'kepala perpus', '081384200213', 'bandung'),
(911, 'kratos', 'pengurus', '081384200200', 'serang'),
(912, 'sri ningsih', 'penata', '081384200212', 'jakarta');

-- --------------------------------------------------------

--
-- Struktur dari tabel `produk`
--

CREATE TABLE `produk` (
  `id_produk` int(11) NOT NULL,
  `id_suplier` int(11) DEFAULT NULL,
  `nama_produk` varchar(20) DEFAULT NULL,
  `harga` int(11) DEFAULT NULL,
  `stok` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `produk`
--

INSERT INTO `produk` (`id_produk`, `id_suplier`, `nama_produk`, `harga`, `stok`) VALUES
(2222, 1, 'helm ink', 500000, 20),
(3333, 1, 'helm ink fc', 700000, 10),
(4444, 2, 'helm kyt dj', 400000, 30);

-- --------------------------------------------------------

--
-- Struktur dari tabel `rak`
--

CREATE TABLE `rak` (
  `id_rak` int(11) NOT NULL,
  `nama_rak` varchar(50) DEFAULT NULL,
  `lokasi_rak` varchar(50) DEFAULT NULL,
  `id_buku` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `rak`
--

INSERT INTO `rak` (`id_rak`, `nama_rak`, `lokasi_rak`, `id_buku`) VALUES
(1001, 'python', 'tengah', 202101),
(1002, 'java', 'samping kiri', 202102),
(1003, 'php', 'depan', 202103);

-- --------------------------------------------------------

--
-- Struktur dari tabel `suplier`
--

CREATE TABLE `suplier` (
  `id_suplier` int(11) NOT NULL,
  `nama_suplier` varchar(30) DEFAULT NULL,
  `alamat` varchar(100) DEFAULT NULL,
  `no_telp` varchar(13) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `suplier`
--

INSERT INTO `suplier` (`id_suplier`, `nama_suplier`, `alamat`, `no_telp`) VALUES
(1, 'joko', 'cikarang', '081222333888'),
(2, 'willy', 'surabaya', '081999888777');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tamu_hotel`
--

CREATE TABLE `tamu_hotel` (
  `id_tamu` int(10) NOT NULL,
  `nama_tamu` varchar(200) DEFAULT NULL,
  `no_telp` varchar(12) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tamu_hotel`
--

INSERT INTO `tamu_hotel` (`id_tamu`, `nama_tamu`, `no_telp`) VALUES
(222222, 'willy', '087000999000'),
(222223, 'lancelot', '081234567888'),
(222225, 'jaya prawoto', '089777666555'),
(222227, 'wilianto', '097888999000'),
(222230, 'salisa', '087555222000'),
(222231, 'ibrahim', '081234555888'),
(222232, 'hanabi', '087666555333'),
(222233, 'gusion assasin', '086555444333'),
(222234, 'wiro', '087777888999'),
(222235, 'nunuk', '087666555444'),
(222236, 'popol', '087555445566'),
(222237, 'panca', '087888999000'),
(222238, 'solihin', '089000777666');

--
-- Trigger `tamu_hotel`
--
DELIMITER $$
CREATE TRIGGER `log_insert_tamu` AFTER INSERT ON `tamu_hotel` FOR EACH ROW BEGIN
INSERT INTO log_insert_tamu
set id_tamu=new.id_tamu,
nama_tamu=new.nama_tamu,
no_telp=new.no_telp,
waktu = NOW();
END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_jurusan`
--

CREATE TABLE `tbl_jurusan` (
  `kd_jurusan` varchar(30) NOT NULL,
  `nm_jurusan` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_kelas`
--

CREATE TABLE `tbl_kelas` (
  `kd_kelas` varchar(30) NOT NULL,
  `nm_kelas` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_murid`
--

CREATE TABLE `tbl_murid` (
  `no_id` varchar(30) DEFAULT NULL,
  `nama` varchar(30) DEFAULT NULL,
  `kd_kelas` varchar(5) DEFAULT NULL,
  `kd_jurusan` varchar(5) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_siswa`
--

CREATE TABLE `tbl_siswa` (
  `no_id` varchar(30) NOT NULL,
  `nm_siswa` varchar(30) DEFAULT NULL,
  `ttl` varchar(30) DEFAULT NULL,
  `alamat` varchar(30) DEFAULT NULL,
  `nm_ortu` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktur dari tabel `transaksi`
--

CREATE TABLE `transaksi` (
  `id_transaksi` int(11) NOT NULL,
  `id_produk` int(11) DEFAULT NULL,
  `id_pembeli` int(11) DEFAULT NULL,
  `keterangan` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `transaksi`
--

INSERT INTO `transaksi` (`id_transaksi`, `id_produk`, `id_pembeli`, `keterangan`) VALUES
(111, 2222, 1234, 'proses'),
(222, 3333, 1234, 'proses');

-- --------------------------------------------------------

--
-- Struktur dari tabel `transaksi_hotel`
--

CREATE TABLE `transaksi_hotel` (
  `id_transaksi` int(10) NOT NULL,
  `id_tamu` int(10) DEFAULT NULL,
  `id_kamar` int(10) DEFAULT NULL,
  `tgl_pesan` date DEFAULT NULL,
  `tgl_cekin` date DEFAULT NULL,
  `tgl_cekout` date DEFAULT NULL,
  `total_tarif` int(12) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `transaksi_hotel`
--

INSERT INTO `transaksi_hotel` (`id_transaksi`, `id_tamu`, `id_kamar`, `tgl_pesan`, `tgl_cekin`, `tgl_cekout`, `total_tarif`) VALUES
(1018, 222231, 119, '2021-07-02', '2021-07-03', '2021-07-07', 600000),
(1019, 222232, 120, '2021-07-03', '2021-07-03', '2021-07-05', 10000000);

--
-- Trigger `transaksi_hotel`
--
DELIMITER $$
CREATE TRIGGER `log_delete_transaksi` BEFORE DELETE ON `transaksi_hotel` FOR EACH ROW BEGIN
declare data int default 0;
select count(*) into data from transaksi_hotel where id_transaksi = old.id_transaksi;
if data > 0 then
insert into log_delete_transaksi
set id_transaksi =old.id_transaksi,
id_tamu =old.id_tamu,
id_kamar =old.id_kamar,
tgl_pesan =old.tgl_pesan,
tgl_cekin =old.tgl_cekin,
tgl_cekout =old.tgl_cekout,
total_tarif =old.total_tarif,
waktu = NOW();
end if;
end
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `log_update_transaksi` BEFORE UPDATE ON `transaksi_hotel` FOR EACH ROW BEGIN
INSERT INTO log_update_transaksi
set id_transaksi=old.id_transaksi,
id_tamu = OLD.id_tamu,
tgl_cekin=old.tgl_cekin,
tgl_cekout_old=old.tgl_cekout,
tgl_cekout_new=new.tgl_cekout,
total_tarif_old = old.total_tarif,
total_tarif_new = new.total_tarif,
waktu = NOW();
END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `trn_date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id`, `username`, `email`, `password`, `trn_date`) VALUES
(4, 'wilianto', 'wilianto2021@gmail.com', '74aba0a47b6940007eb7fcafaf1cda26', '2021-06-30 00:00:00'),
(10, 'user1', 'user@email.com', '202cb962ac59075b964b07152d234b70', '2021-07-15 15:01:04');

-- --------------------------------------------------------

--
-- Struktur dari tabel `wilianto_311910184`
--

CREATE TABLE `wilianto_311910184` (
  `NIM` int(10) NOT NULL,
  `nama_mhs` varchar(30) DEFAULT NULL,
  `alamat_mhs` varchar(20) DEFAULT NULL,
  `jurusan_mhs` varchar(20) DEFAULT NULL,
  `tgl_lahir` date DEFAULT NULL,
  `IPK` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `wilianto_311910184`
--

INSERT INTO `wilianto_311910184` (`NIM`, `nama_mhs`, `alamat_mhs`, `jurusan_mhs`, `tgl_lahir`, `IPK`) VALUES
(311910184, 'willy', 'indramayu', 'hukum', '1998-07-23', 4),
(311910185, 'recha', 'kebumen', 'fisika', '1996-04-20', 3),
(311910186, 'maul', 'ngawi', 'informatika', '1996-05-01', 3),
(311910187, 'jannah', 'blora', 'ekonomi', '2000-05-20', 2),
(311910188, 'nunuk', 'pati', 'akutansi', '1999-01-01', 2);

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `anggota`
--
ALTER TABLE `anggota`
  ADD PRIMARY KEY (`id_anggota`);

--
-- Indeks untuk tabel `barang`
--
ALTER TABLE `barang`
  ADD PRIMARY KEY (`id_barang`);

--
-- Indeks untuk tabel `buku`
--
ALTER TABLE `buku`
  ADD PRIMARY KEY (`id_buku`,`kode_buku`);

--
-- Indeks untuk tabel `kamar`
--
ALTER TABLE `kamar`
  ADD PRIMARY KEY (`id_kamar`);

--
-- Indeks untuk tabel `log_delete_transaksi`
--
ALTER TABLE `log_delete_transaksi`
  ADD PRIMARY KEY (`id_log`);

--
-- Indeks untuk tabel `log_insert_tamu`
--
ALTER TABLE `log_insert_tamu`
  ADD PRIMARY KEY (`id_log`);

--
-- Indeks untuk tabel `log_update_transaksi`
--
ALTER TABLE `log_update_transaksi`
  ADD PRIMARY KEY (`id_log`);

--
-- Indeks untuk tabel `pelanggan`
--
ALTER TABLE `pelanggan`
  ADD PRIMARY KEY (`id_pelanggan`);

--
-- Indeks untuk tabel `pembayaran`
--
ALTER TABLE `pembayaran`
  ADD PRIMARY KEY (`id_bayar`),
  ADD KEY `id_transaksi` (`id_transaksi`);

--
-- Indeks untuk tabel `pembeli`
--
ALTER TABLE `pembeli`
  ADD PRIMARY KEY (`id_pembeli`);

--
-- Indeks untuk tabel `peminjaman`
--
ALTER TABLE `peminjaman`
  ADD PRIMARY KEY (`id_peminjaman`),
  ADD KEY `id_anggota` (`id_anggota`),
  ADD KEY `id_buku` (`id_buku`),
  ADD KEY `id_petugas` (`id_petugas`);

--
-- Indeks untuk tabel `pengembalian`
--
ALTER TABLE `pengembalian`
  ADD PRIMARY KEY (`id_pengembalian`),
  ADD KEY `id_anggota` (`id_anggota`),
  ADD KEY `id_buku` (`id_buku`),
  ADD KEY `id_petugas` (`id_petugas`);

--
-- Indeks untuk tabel `penjualan`
--
ALTER TABLE `penjualan`
  ADD PRIMARY KEY (`id_transaksi`),
  ADD KEY `FK_penjualan_pelanggan` (`id_pelanggan`);

--
-- Indeks untuk tabel `penjualan_detail`
--
ALTER TABLE `penjualan_detail`
  ADD PRIMARY KEY (`id_transaksi_detail`),
  ADD KEY `FK_tb_penjualan_detail_tb_barang` (`id_barang`),
  ADD KEY `FK_tb_penjualan_detail_tb_penjualan` (`id_transaksi`);

--
-- Indeks untuk tabel `petugas`
--
ALTER TABLE `petugas`
  ADD PRIMARY KEY (`id_petugas`);

--
-- Indeks untuk tabel `produk`
--
ALTER TABLE `produk`
  ADD PRIMARY KEY (`id_produk`),
  ADD KEY `id_suplier` (`id_suplier`);

--
-- Indeks untuk tabel `rak`
--
ALTER TABLE `rak`
  ADD PRIMARY KEY (`id_rak`),
  ADD KEY `id_buku` (`id_buku`);

--
-- Indeks untuk tabel `suplier`
--
ALTER TABLE `suplier`
  ADD PRIMARY KEY (`id_suplier`);

--
-- Indeks untuk tabel `tamu_hotel`
--
ALTER TABLE `tamu_hotel`
  ADD PRIMARY KEY (`id_tamu`);

--
-- Indeks untuk tabel `tbl_jurusan`
--
ALTER TABLE `tbl_jurusan`
  ADD PRIMARY KEY (`kd_jurusan`);

--
-- Indeks untuk tabel `tbl_kelas`
--
ALTER TABLE `tbl_kelas`
  ADD PRIMARY KEY (`kd_kelas`);

--
-- Indeks untuk tabel `tbl_murid`
--
ALTER TABLE `tbl_murid`
  ADD KEY `no_id` (`no_id`),
  ADD KEY `kd_kelas` (`kd_kelas`),
  ADD KEY `kd_jurusan` (`kd_jurusan`);

--
-- Indeks untuk tabel `tbl_siswa`
--
ALTER TABLE `tbl_siswa`
  ADD PRIMARY KEY (`no_id`);

--
-- Indeks untuk tabel `transaksi`
--
ALTER TABLE `transaksi`
  ADD PRIMARY KEY (`id_transaksi`),
  ADD KEY `id_produk` (`id_produk`),
  ADD KEY `id_pembeli` (`id_pembeli`);

--
-- Indeks untuk tabel `transaksi_hotel`
--
ALTER TABLE `transaksi_hotel`
  ADD PRIMARY KEY (`id_transaksi`),
  ADD KEY `id_tamu` (`id_tamu`),
  ADD KEY `id_kamar` (`id_kamar`);

--
-- Indeks untuk tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `wilianto_311910184`
--
ALTER TABLE `wilianto_311910184`
  ADD PRIMARY KEY (`NIM`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `barang`
--
ALTER TABLE `barang`
  MODIFY `id_barang` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT untuk tabel `kamar`
--
ALTER TABLE `kamar`
  MODIFY `id_kamar` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=123;

--
-- AUTO_INCREMENT untuk tabel `log_delete_transaksi`
--
ALTER TABLE `log_delete_transaksi`
  MODIFY `id_log` int(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT untuk tabel `log_insert_tamu`
--
ALTER TABLE `log_insert_tamu`
  MODIFY `id_log` int(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT untuk tabel `log_update_transaksi`
--
ALTER TABLE `log_update_transaksi`
  MODIFY `id_log` int(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT untuk tabel `pelanggan`
--
ALTER TABLE `pelanggan`
  MODIFY `id_pelanggan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `penjualan`
--
ALTER TABLE `penjualan`
  MODIFY `id_transaksi` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT untuk tabel `penjualan_detail`
--
ALTER TABLE `penjualan_detail`
  MODIFY `id_transaksi_detail` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT untuk tabel `tamu_hotel`
--
ALTER TABLE `tamu_hotel`
  MODIFY `id_tamu` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=222239;

--
-- AUTO_INCREMENT untuk tabel `transaksi_hotel`
--
ALTER TABLE `transaksi_hotel`
  MODIFY `id_transaksi` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1023;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `pembayaran`
--
ALTER TABLE `pembayaran`
  ADD CONSTRAINT `pembayaran_ibfk_1` FOREIGN KEY (`id_transaksi`) REFERENCES `transaksi` (`id_transaksi`);

--
-- Ketidakleluasaan untuk tabel `peminjaman`
--
ALTER TABLE `peminjaman`
  ADD CONSTRAINT `peminjaman_ibfk_1` FOREIGN KEY (`id_anggota`) REFERENCES `anggota` (`id_anggota`),
  ADD CONSTRAINT `peminjaman_ibfk_2` FOREIGN KEY (`id_buku`) REFERENCES `buku` (`id_buku`),
  ADD CONSTRAINT `peminjaman_ibfk_3` FOREIGN KEY (`id_petugas`) REFERENCES `petugas` (`id_petugas`);

--
-- Ketidakleluasaan untuk tabel `pengembalian`
--
ALTER TABLE `pengembalian`
  ADD CONSTRAINT `pengembalian_ibfk_1` FOREIGN KEY (`id_anggota`) REFERENCES `anggota` (`id_anggota`),
  ADD CONSTRAINT `pengembalian_ibfk_2` FOREIGN KEY (`id_buku`) REFERENCES `buku` (`id_buku`),
  ADD CONSTRAINT `pengembalian_ibfk_3` FOREIGN KEY (`id_petugas`) REFERENCES `petugas` (`id_petugas`);

--
-- Ketidakleluasaan untuk tabel `penjualan`
--
ALTER TABLE `penjualan`
  ADD CONSTRAINT `FK_penjualan_pelanggan` FOREIGN KEY (`id_pelanggan`) REFERENCES `pelanggan` (`id_pelanggan`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `penjualan_detail`
--
ALTER TABLE `penjualan_detail`
  ADD CONSTRAINT `FK_tb_penjualan_detail_tb_barang` FOREIGN KEY (`id_barang`) REFERENCES `barang` (`id_barang`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_tb_penjualan_detail_tb_penjualan` FOREIGN KEY (`id_transaksi`) REFERENCES `penjualan` (`id_transaksi`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `produk`
--
ALTER TABLE `produk`
  ADD CONSTRAINT `produk_ibfk_1` FOREIGN KEY (`id_suplier`) REFERENCES `suplier` (`id_suplier`);

--
-- Ketidakleluasaan untuk tabel `rak`
--
ALTER TABLE `rak`
  ADD CONSTRAINT `rak_ibfk_1` FOREIGN KEY (`id_buku`) REFERENCES `buku` (`id_buku`);

--
-- Ketidakleluasaan untuk tabel `tbl_murid`
--
ALTER TABLE `tbl_murid`
  ADD CONSTRAINT `tbl_murid_ibfk_1` FOREIGN KEY (`no_id`) REFERENCES `tbl_siswa` (`no_id`),
  ADD CONSTRAINT `tbl_murid_ibfk_2` FOREIGN KEY (`kd_kelas`) REFERENCES `tbl_kelas` (`kd_kelas`),
  ADD CONSTRAINT `tbl_murid_ibfk_3` FOREIGN KEY (`kd_jurusan`) REFERENCES `tbl_jurusan` (`kd_jurusan`);

--
-- Ketidakleluasaan untuk tabel `transaksi`
--
ALTER TABLE `transaksi`
  ADD CONSTRAINT `transaksi_ibfk_1` FOREIGN KEY (`id_produk`) REFERENCES `produk` (`id_produk`),
  ADD CONSTRAINT `transaksi_ibfk_2` FOREIGN KEY (`id_pembeli`) REFERENCES `pembeli` (`id_pembeli`);

--
-- Ketidakleluasaan untuk tabel `transaksi_hotel`
--
ALTER TABLE `transaksi_hotel`
  ADD CONSTRAINT `transaksi_hotel_ibfk_1` FOREIGN KEY (`id_tamu`) REFERENCES `tamu_hotel` (`id_tamu`),
  ADD CONSTRAINT `transaksi_hotel_ibfk_2` FOREIGN KEY (`id_kamar`) REFERENCES `kamar` (`id_kamar`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
