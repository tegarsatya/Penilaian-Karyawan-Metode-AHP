-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 22 Okt 2020 pada 15.10
-- Versi server: 10.4.13-MariaDB
-- Versi PHP: 7.4.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ahp_1`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `alternatif`
--

CREATE TABLE `alternatif` (
  `id_alternatif` int(11) NOT NULL,
  `NIP` varchar(20) NOT NULL,
  `periode` varchar(30) NOT NULL,
  `lihat` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `alternatif`
--

INSERT INTO `alternatif` (`id_alternatif`, `NIP`, `periode`, `lihat`) VALUES
(4, '14045', '2019-November', 1),
(18, '40', '2020-November', 1),
(19, '40', '2020-Oktober', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `desc_kriteria`
--

CREATE TABLE `desc_kriteria` (
  `id_desc` int(11) NOT NULL,
  `id_kriteria` int(11) NOT NULL,
  `deskripsi` varchar(225) NOT NULL,
  `nilai` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `desc_kriteria`
--

INSERT INTO `desc_kriteria` (`id_desc`, `id_kriteria`, `deskripsi`, `nilai`) VALUES
(1, 7, 'abc', 4),
(2, 8, 'abc', 3),
(3, 9, '1', 7),
(4, 44, 'a', 20);

-- --------------------------------------------------------

--
-- Struktur dari tabel `jabatan`
--

CREATE TABLE `jabatan` (
  `id` int(30) NOT NULL,
  `nama_jabatan` varchar(40) NOT NULL,
  `job_desc` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `jabatan`
--

INSERT INTO `jabatan` (`id`, `nama_jabatan`, `job_desc`) VALUES
(1, 'Karyawan', 'Menyatakan bahwa kinerja merupakan terjemahan dari kata performance yang memiliki arti sebagai sebuah hasil kerja seorang pegawai atau pekerja, sebuah proses manajemen yang mana hasil kerja tersebut harus memiliki sebuah bukti konkret yang juga dapat diukur.'),
(3, 'Backend Developer', 'Web Developer\r\n');

-- --------------------------------------------------------

--
-- Struktur dari tabel `karyawan`
--

CREATE TABLE `karyawan` (
  `NIP` varchar(40) NOT NULL,
  `nama_karyawan` varchar(125) NOT NULL,
  `JK` varchar(50) DEFAULT NULL,
  `Jabatan` varchar(50) DEFAULT NULL,
  `status` varchar(25) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `karyawan`
--

INSERT INTO `karyawan` (`NIP`, `nama_karyawan`, `JK`, `Jabatan`, `status`) VALUES
('01', 'ramdan nugraha', 'Pria', '3', 'na'),
('40', 'Rentia Fitri', 'Wanita', '1', 'ok');

-- --------------------------------------------------------

--
-- Struktur dari tabel `kriteria`
--

CREATE TABLE `kriteria` (
  `id_kriteria` int(11) NOT NULL,
  `kriteria` varchar(125) NOT NULL,
  `seo` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `kriteria`
--

INSERT INTO `kriteria` (`id_kriteria`, `kriteria`, `seo`) VALUES
(45, 'Kepatuhan', 'Kepatuhan'),
(46, 'Prestasi Kerja', 'Prestasi_Kerja'),
(47, 'Dedikasi', 'Dedikasi'),
(48, 'Loyalitas', 'Loyalitas'),
(49, 'Tanggung Jawab', 'Tanggung_Jawab'),
(50, 'Kejujuran', 'Kejujuran'),
(51, 'Kerjasama', 'Kerjasama'),
(52, 'Prakasa', 'Prakasa'),
(53, 'Kepemimpinan', 'Kepemimpinan');

-- --------------------------------------------------------

--
-- Struktur dari tabel `nilai_alternatif`
--

CREATE TABLE `nilai_alternatif` (
  `id_nilai_alternatif` int(11) NOT NULL,
  `id_alternatif` int(11) NOT NULL,
  `id_kriteria` int(11) NOT NULL,
  `nilai` int(11) NOT NULL,
  `periode` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `nilai_alternatif`
--

INSERT INTO `nilai_alternatif` (`id_nilai_alternatif`, `id_alternatif`, `id_kriteria`, `nilai`, `periode`) VALUES
(108, 18, 12, 23, '2020-November'),
(109, 18, 13, 40, '2020-November'),
(110, 18, 14, 80, '2020-November'),
(111, 18, 15, 90, '2020-November'),
(112, 18, 16, 40, '2020-November'),
(113, 18, 17, 45, '2020-November'),
(114, 18, 18, 43, '2020-November'),
(115, 18, 19, 43, '2020-November'),
(116, 18, 20, 43, '2020-November'),
(117, 18, 21, 34, '2020-November'),
(118, 18, 22, 43, '2020-November'),
(119, 18, 23, 43, '2020-November'),
(120, 18, 24, 43, '2020-November'),
(121, 18, 25, 43, '2020-November'),
(122, 18, 26, 43, '2020-November'),
(123, 18, 27, 43, '2020-November'),
(124, 18, 28, 43, '2020-November'),
(125, 18, 29, 34, '2020-November'),
(126, 18, 30, 43, '2020-November'),
(127, 18, 31, 43, '2020-November'),
(128, 18, 32, 43, '2020-November'),
(129, 18, 33, 43, '2020-November'),
(130, 18, 34, 43, '2020-November'),
(131, 18, 35, 34, '2020-November'),
(132, 18, 36, 43, '2020-November'),
(133, 18, 37, 43, '2020-November'),
(134, 18, 38, 43, '2020-November'),
(135, 18, 39, 43, '2020-November'),
(136, 18, 40, 43, '2020-November'),
(137, 18, 41, 43, '2020-November'),
(138, 19, 45, 35, '2020-Oktober'),
(139, 19, 46, 53, '2020-Oktober'),
(140, 19, 47, 80, '2020-Oktober'),
(141, 19, 48, 80, '2020-Oktober'),
(142, 19, 49, 67, '2020-Oktober'),
(143, 19, 50, 55, '2020-Oktober'),
(144, 19, 51, 90, '2020-Oktober'),
(145, 19, 52, 43, '2020-Oktober'),
(146, 19, 53, 78, '2020-Oktober');

-- --------------------------------------------------------

--
-- Struktur dari tabel `nilai_kriteria`
--

CREATE TABLE `nilai_kriteria` (
  `id_nilai` int(11) NOT NULL,
  `id_kriteria` int(11) NOT NULL,
  `nilai` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `nilai_kriteria`
--

INSERT INTO `nilai_kriteria` (`id_nilai`, `id_kriteria`, `nilai`) VALUES
(1, 45, 20),
(2, 46, 10),
(3, 47, 10),
(4, 48, 10),
(5, 49, 10),
(6, 50, 10),
(7, 51, 10),
(8, 52, 10),
(9, 53, 10);

-- --------------------------------------------------------

--
-- Struktur dari tabel `pemberian_skor`
--

CREATE TABLE `pemberian_skor` (
  `id_pemberian` int(11) NOT NULL,
  `id_kriteria` int(11) NOT NULL,
  `deskripsi` varchar(225) NOT NULL,
  `data_awal` varchar(225) NOT NULL,
  `konversi` varchar(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `periode`
--

CREATE TABLE `periode` (
  `id_periode` int(5) NOT NULL,
  `periode` varchar(30) NOT NULL,
  `label` varchar(30) NOT NULL,
  `tahun` int(5) NOT NULL,
  `bulan` varchar(12) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `periode`
--

INSERT INTO `periode` (`id_periode`, `periode`, `label`, `tahun`, `bulan`) VALUES
(5, '2020-September', '2020 September', 2020, 'September'),
(6, '2020-Oktober', '2020 Oktober', 2020, 'Oktober'),
(7, '2020-November', '2020 November', 2020, 'November'),
(8, '2020-Desember', '2020 Desember', 2020, 'Desember');

-- --------------------------------------------------------

--
-- Struktur dari tabel `temp`
--

CREATE TABLE `temp` (
  `id_temp` int(11) NOT NULL,
  `NIP` varchar(40) NOT NULL,
  `nama_dosen` varchar(40) NOT NULL,
  `Pengajaran` int(5) DEFAULT NULL,
  `Penelitian_n_Publikasi` int(5) DEFAULT NULL,
  `Pengabdian_Masyarakat` int(5) DEFAULT NULL,
  `Penunjang` int(5) DEFAULT NULL,
  `creator` varchar(20) NOT NULL,
  `waktu` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `periode` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `user`
--

CREATE TABLE `user` (
  `id_user` int(11) NOT NULL,
  `nama` varchar(125) NOT NULL,
  `username` varchar(125) NOT NULL,
  `password` varchar(125) NOT NULL,
  `level` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `user`
--

INSERT INTO `user` (`id_user`, `nama`, `username`, `password`, `level`) VALUES
(1, 'admin', 'admin', 'admin', 'admin'),
(7, 'fitri', 'fitri', 'fitri', 'operator'),
(8, 'Ramdan Nugraha', 'ramdan', 'ramdan', 'operator');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `alternatif`
--
ALTER TABLE `alternatif`
  ADD PRIMARY KEY (`id_alternatif`);

--
-- Indeks untuk tabel `desc_kriteria`
--
ALTER TABLE `desc_kriteria`
  ADD PRIMARY KEY (`id_desc`);

--
-- Indeks untuk tabel `jabatan`
--
ALTER TABLE `jabatan`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `karyawan`
--
ALTER TABLE `karyawan`
  ADD PRIMARY KEY (`NIP`);

--
-- Indeks untuk tabel `kriteria`
--
ALTER TABLE `kriteria`
  ADD PRIMARY KEY (`id_kriteria`);

--
-- Indeks untuk tabel `nilai_alternatif`
--
ALTER TABLE `nilai_alternatif`
  ADD PRIMARY KEY (`id_nilai_alternatif`);

--
-- Indeks untuk tabel `nilai_kriteria`
--
ALTER TABLE `nilai_kriteria`
  ADD PRIMARY KEY (`id_nilai`);

--
-- Indeks untuk tabel `pemberian_skor`
--
ALTER TABLE `pemberian_skor`
  ADD PRIMARY KEY (`id_pemberian`);

--
-- Indeks untuk tabel `periode`
--
ALTER TABLE `periode`
  ADD PRIMARY KEY (`id_periode`);

--
-- Indeks untuk tabel `temp`
--
ALTER TABLE `temp`
  ADD PRIMARY KEY (`id_temp`);

--
-- Indeks untuk tabel `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id_user`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `alternatif`
--
ALTER TABLE `alternatif`
  MODIFY `id_alternatif` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT untuk tabel `desc_kriteria`
--
ALTER TABLE `desc_kriteria`
  MODIFY `id_desc` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `jabatan`
--
ALTER TABLE `jabatan`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `kriteria`
--
ALTER TABLE `kriteria`
  MODIFY `id_kriteria` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=54;

--
-- AUTO_INCREMENT untuk tabel `nilai_alternatif`
--
ALTER TABLE `nilai_alternatif`
  MODIFY `id_nilai_alternatif` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=147;

--
-- AUTO_INCREMENT untuk tabel `nilai_kriteria`
--
ALTER TABLE `nilai_kriteria`
  MODIFY `id_nilai` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT untuk tabel `pemberian_skor`
--
ALTER TABLE `pemberian_skor`
  MODIFY `id_pemberian` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `periode`
--
ALTER TABLE `periode`
  MODIFY `id_periode` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT untuk tabel `temp`
--
ALTER TABLE `temp`
  MODIFY `id_temp` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `user`
--
ALTER TABLE `user`
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
