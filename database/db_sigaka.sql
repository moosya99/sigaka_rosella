-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 31 Jan 2023 pada 08.43
-- Versi server: 10.4.27-MariaDB
-- Versi PHP: 7.4.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_sigaka`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `sigaka_absen`
--

CREATE TABLE `sigaka_absen` (
  `absen_id` varchar(20) NOT NULL,
  `absen_karyawan_id` varchar(20) NOT NULL,
  `absen_hari` varchar(10) NOT NULL,
  `absen_status` enum('lembur','normal') NOT NULL DEFAULT 'normal',
  `absen_date_created` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `sigaka_absen`
--

INSERT INTO `sigaka_absen` (`absen_id`, `absen_karyawan_id`, `absen_hari`, `absen_status`, `absen_date_created`) VALUES
('ABS-45721', 'PEG-44998', 'Minggu', 'normal', '2022-02-01 08:35:21'),
('ABS-45733', 'PEG-45075', 'Minggu', 'lembur', '2022-02-01 08:35:33'),
('ABS-45743', 'PEG-45320', 'Minggu', 'normal', '2022-02-01 08:35:43'),
('ABS-45755', 'PEG-45192', 'Minggu', 'lembur', '2022-02-01 08:35:55'),
('ABS-45892', 'PEG-45260', 'Minggu', 'normal', '2022-02-01 08:38:12'),
('ABS-45904', 'PEG-76226', 'Minggu', 'normal', '2022-02-01 08:38:24'),
('ABS-46029', 'PEG-45075', 'Minggu', 'normal', '2022-03-01 08:40:29'),
('ABS-46042', 'PEG-45320', 'Minggu', 'lembur', '2022-03-01 08:40:42'),
('ABS-46054', 'PEG-45192', 'Minggu', 'normal', '2022-03-01 08:40:54'),
('ABS-46070', 'PEG-45260', 'Minggu', 'normal', '2022-03-01 08:41:10'),
('ABS-46082', 'PEG-76226', 'Minggu', 'lembur', '2022-03-01 08:41:22'),
('ABS-46233', 'PEG-45075', 'Minggu', 'normal', '2022-04-01 08:43:53'),
('ABS-46240', 'PEG-45192', 'Minggu', 'normal', '2022-04-01 08:44:00'),
('ABS-46259', 'PEG-45320', 'Minggu', 'normal', '2022-04-01 08:44:19'),
('ABS-46269', 'PEG-45260', 'Minggu', 'lembur', '2022-04-01 08:44:29'),
('ABS-46277', 'PEG-76226', 'Minggu', 'lembur', '2022-04-01 08:44:37'),
('ABS-46358', 'PEG-45075', 'Minggu', 'normal', '2022-05-01 08:45:58'),
('ABS-46365', 'PEG-45320', 'Minggu', 'lembur', '2022-05-01 08:46:05'),
('ABS-46372', 'PEG-45192', 'Minggu', 'lembur', '2022-05-01 08:46:12'),
('ABS-46384', 'PEG-45260', 'Minggu', 'normal', '2022-05-01 08:46:24'),
('ABS-46390', 'PEG-76226', 'Minggu', 'normal', '2022-05-01 08:46:30'),
('ABS-46514', 'PEG-45075', 'Minggu', 'lembur', '2022-06-01 08:48:34'),
('ABS-46521', 'PEG-45320', 'Minggu', 'normal', '2022-06-01 08:48:41'),
('ABS-46528', 'PEG-45192', 'Minggu', 'normal', '2022-06-01 08:48:48'),
('ABS-46534', 'PEG-45260', 'Minggu', 'lembur', '2022-06-01 08:48:54'),
('ABS-46540', 'PEG-76226', 'Minggu', 'normal', '2022-06-01 08:49:00'),
('ABS-46630', 'PEG-45075', 'Minggu', 'normal', '2022-07-01 08:50:30'),
('ABS-46637', 'PEG-45320', 'Minggu', 'lembur', '2022-07-01 08:50:37'),
('ABS-46643', 'PEG-45192', 'Minggu', 'normal', '2022-07-01 08:50:43'),
('ABS-46649', 'PEG-45260', 'Minggu', 'normal', '2022-07-01 08:50:49'),
('ABS-46657', 'PEG-76226', 'Minggu', 'lembur', '2022-07-01 08:50:57');

-- --------------------------------------------------------

--
-- Struktur dari tabel `sigaka_bagian`
--

CREATE TABLE `sigaka_bagian` (
  `bagian_id` varchar(20) NOT NULL,
  `bagian_nama` varchar(255) DEFAULT NULL,
  `bagian_gaji` int(20) DEFAULT NULL,
  `bagian_date_created` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `sigaka_bagian`
--

INSERT INTO `sigaka_bagian` (`bagian_id`, `bagian_nama`, `bagian_gaji`, `bagian_date_created`) VALUES
('JAB-74569', 'Frontliner', 100000, '2019-07-15 14:09:29'),
('JAB-76143', 'frontliner', 100000, '2019-07-15 14:35:43');

-- --------------------------------------------------------

--
-- Struktur dari tabel `sigaka_gaji`
--

CREATE TABLE `sigaka_gaji` (
  `gaji_id` varchar(20) NOT NULL,
  `gaji_karyawan_id` varchar(20) NOT NULL,
  `gaji_lembur` int(20) DEFAULT 0,
  `gaji_total` int(20) NOT NULL,
  `gaji_bayar_pinjaman` int(20) NOT NULL,
  `gaji_tanggal` date DEFAULT NULL,
  `gaji_bulan_ke` int(11) DEFAULT NULL,
  `gaji_status` enum('sudah','belum') NOT NULL DEFAULT 'belum',
  `gaji_date_created` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `sigaka_gaji`
--

INSERT INTO `sigaka_gaji` (`gaji_id`, `gaji_karyawan_id`, `gaji_lembur`, `gaji_total`, `gaji_bayar_pinjaman`, `gaji_tanggal`, `gaji_bulan_ke`, `gaji_status`, `gaji_date_created`) VALUES
('GJI-45388', 'PEG-44998', 0, 200000, 0, '2022-08-21', 1, 'belum', '2022-08-21 08:29:48'),
('GJI-45394', 'PEG-45075', 200000, 700000, 0, '2022-08-21', 1, 'sudah', '2022-08-21 08:29:54'),
('GJI-45400', 'PEG-45320', 300000, 700000, 0, '2022-08-21', 1, 'sudah', '2022-08-21 08:30:00'),
('GJI-45408', 'PEG-45260', 200000, 700000, 0, '2022-08-21', 1, 'sudah', '2022-08-21 08:30:08'),
('GJI-45440', 'PEG-45192', 200000, 700000, 0, '2022-08-21', 1, 'sudah', '2022-08-21 08:30:40'),
('GJI-74757', 'PEG-74722', 35000, 35000, 0, '2019-07-15', 1, 'sudah', '2019-07-15 14:12:37'),
('GJI-76293', 'PEG-76226', 335000, 670000, 30000, '2022-08-21', 1, 'sudah', '2019-07-15 14:38:13');

-- --------------------------------------------------------

--
-- Struktur dari tabel `sigaka_karyawan`
--

CREATE TABLE `sigaka_karyawan` (
  `karyawan_id` varchar(20) NOT NULL,
  `karyawan_bagian_id` varchar(20) DEFAULT NULL,
  `karyawan_nama` varchar(255) DEFAULT NULL,
  `karyawan_tempat_lahir` varchar(255) DEFAULT NULL,
  `karyawan_tanggal_lahir` date DEFAULT NULL,
  `karyawan_alamat` text DEFAULT NULL,
  `karyawan_tanggal_gabung` date DEFAULT NULL,
  `karyawan_nomor_hp` varchar(20) DEFAULT NULL,
  `karyawan_no_rekening` varchar(30) DEFAULT NULL,
  `karyawan_date_created` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `sigaka_karyawan`
--

INSERT INTO `sigaka_karyawan` (`karyawan_id`, `karyawan_bagian_id`, `karyawan_nama`, `karyawan_tempat_lahir`, `karyawan_tanggal_lahir`, `karyawan_alamat`, `karyawan_tanggal_gabung`, `karyawan_nomor_hp`, `karyawan_no_rekening`, `karyawan_date_created`) VALUES
('PEG-45075', 'JAB-76143', 'Intan Erviatun', 'Situbondo', '2003-06-11', 'Jl. Karang Asem', '2022-01-19', '082334556772', '', '2022-08-21 08:24:35'),
('PEG-45192', 'JAB-76143', 'Yoga Agus Saputra', 'Pati', '2000-01-27', 'Jl. Pejuang', '2023-01-19', '087887997001', '', '2022-08-21 08:26:32'),
('PEG-45260', 'JAB-76143', 'Widya Prastika', 'Pati', '2002-06-04', 'Ds. Sukolilo', '2023-01-20', '085445664774', '', '2022-08-21 08:27:40'),
('PEG-45320', 'JAB-76143', 'Muhammad Agus Saputra', 'Pati', '2000-11-03', 'Ds. Karangwotan', '2023-01-20', '087665443551', '', '2022-08-21 08:28:40'),
('PEG-76226', 'JAB-76143', 'Widi Syafara', 'Surabaya', '2000-07-09', 'Jl. Babatan Unesa', '2023-01-08', '091443556723', '', '2019-07-15 14:37:06');

-- --------------------------------------------------------

--
-- Struktur dari tabel `sigaka_pengguna`
--

CREATE TABLE `sigaka_pengguna` (
  `pengguna_id` int(20) NOT NULL,
  `pengguna_username` varchar(255) DEFAULT NULL,
  `pengguna_password` varchar(255) DEFAULT NULL,
  `pengguna_nama` varchar(255) DEFAULT NULL,
  `pengguna_foto` text DEFAULT NULL,
  `pengguna_hak_akses` enum('manajer','owner') DEFAULT NULL,
  `pengguna_date_created` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `sigaka_pengguna`
--

INSERT INTO `sigaka_pengguna` (`pengguna_id`, `pengguna_username`, `pengguna_password`, `pengguna_nama`, `pengguna_foto`, `pengguna_hak_akses`, `pengguna_date_created`) VALUES
(1, 'admin', '21232f297a57a5a743894a0e4a801fc3', 'Mochamat Syahri', NULL, 'manajer', '2019-06-28 21:06:43'),
(2, 'owner', '5be057accb25758101fa5eadbbd79503', 'Muhammad Sayfuddin', NULL, 'owner', '2019-07-15 12:27:55');

-- --------------------------------------------------------

--
-- Struktur dari tabel `sigaka_pinjam`
--

CREATE TABLE `sigaka_pinjam` (
  `pinjam_id` varchar(20) NOT NULL,
  `pinjam_karyawan_id` varchar(20) NOT NULL,
  `pinjam_jumlah` int(20) NOT NULL,
  `pinjam_bayar` int(20) NOT NULL DEFAULT 0,
  `pinjam_date_created` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `sigaka_pinjam`
--

INSERT INTO `sigaka_pinjam` (`pinjam_id`, `pinjam_karyawan_id`, `pinjam_jumlah`, `pinjam_bayar`, `pinjam_date_created`) VALUES
('PJM-44503', 'PEG-76226', 30000, 30000, '2022-05-03 22:01:43');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `sigaka_absen`
--
ALTER TABLE `sigaka_absen`
  ADD PRIMARY KEY (`absen_id`);

--
-- Indeks untuk tabel `sigaka_bagian`
--
ALTER TABLE `sigaka_bagian`
  ADD PRIMARY KEY (`bagian_id`);

--
-- Indeks untuk tabel `sigaka_gaji`
--
ALTER TABLE `sigaka_gaji`
  ADD PRIMARY KEY (`gaji_id`);

--
-- Indeks untuk tabel `sigaka_karyawan`
--
ALTER TABLE `sigaka_karyawan`
  ADD PRIMARY KEY (`karyawan_id`);

--
-- Indeks untuk tabel `sigaka_pengguna`
--
ALTER TABLE `sigaka_pengguna`
  ADD PRIMARY KEY (`pengguna_id`);

--
-- Indeks untuk tabel `sigaka_pinjam`
--
ALTER TABLE `sigaka_pinjam`
  ADD PRIMARY KEY (`pinjam_id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `sigaka_pengguna`
--
ALTER TABLE `sigaka_pengguna`
  MODIFY `pengguna_id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
