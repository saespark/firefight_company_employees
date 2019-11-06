-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 06 Nov 2019 pada 04.40
-- Versi server: 10.4.8-MariaDB
-- Versi PHP: 7.1.32

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `firefight_company_employees`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `allowances`
--

CREATE TABLE `allowances` (
  `id` int(11) NOT NULL,
  `nik` varchar(16) NOT NULL,
  `name` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `position` varchar(255) NOT NULL,
  `allowance` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `allowances`
--

INSERT INTO `allowances` (`id`, `nik`, `name`, `address`, `position`, `allowance`) VALUES
(1, '32050612345677', 'Mang Omen', 'bintar', 'Komisaris', '20.000.000');

-- --------------------------------------------------------

--
-- Struktur dari tabel `attendance_record`
--

CREATE TABLE `attendance_record` (
  `id` int(11) NOT NULL,
  `nik` varchar(16) NOT NULL,
  `name` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `position` varchar(14) NOT NULL,
  `attendance` varchar(20) NOT NULL,
  `sick` char(4) NOT NULL,
  `leave` char(4) NOT NULL,
  `absen` char(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `attendance_record`
--

INSERT INTO `attendance_record` (`id`, `nik`, `name`, `address`, `position`, `attendance`, `sick`, `leave`, `absen`) VALUES
(1, '32050612345677', 'Mang Omen', 'bintaro', 'manager', '20', '1', '1', '2');

-- --------------------------------------------------------

--
-- Struktur dari tabel `educational_history`
--

CREATE TABLE `educational_history` (
  `id` int(11) NOT NULL,
  `nik` varchar(16) NOT NULL,
  `name` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `educational` varchar(255) NOT NULL,
  `position` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `educational_history`
--

INSERT INTO `educational_history` (`id`, `nik`, `name`, `address`, `educational`, `position`) VALUES
(1, '32050612345677', 'mang omen', 'bintaro', 'google chrome', 'manager');

-- --------------------------------------------------------

--
-- Struktur dari tabel `employee_data`
--

CREATE TABLE `employee_data` (
  `id` int(11) NOT NULL,
  `nik` char(16) NOT NULL,
  `name` varchar(255) NOT NULL,
  `date_of_birth` varchar(255) NOT NULL,
  `position` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `employee_data`
--

INSERT INTO `employee_data` (`id`, `nik`, `name`, `date_of_birth`, `position`, `address`) VALUES
(1, '3205061234567890', 'Mang Omen', '25, april 1985', 'Komisaris', ' Bintaro- tangsel'),
(2, '320506123456788', 'Nick novaldi', '14, desember 1993', 'vice chairman', 'Tangsel'),
(3, '32050612345677', 'Arif', '01 januari 1991', 'junior staff', 'Cianjur'),
(6, '3205061234567890', 'OGAH AMAT', '', 'SUPORT', 'CURUG'),
(7, '3205061234567890', 'OGAH CAPE', '25-04-1992', 'SUPORT NANA', 'CURUG OROK');

-- --------------------------------------------------------

--
-- Struktur dari tabel `employee_insurance`
--

CREATE TABLE `employee_insurance` (
  `id` int(11) NOT NULL,
  `no_insurance` varchar(13) NOT NULL,
  `name` varchar(200) NOT NULL,
  `wife_or_husband` varchar(200) NOT NULL,
  `childern` varchar(200) NOT NULL,
  `healt_insurance` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `employee_insurance`
--

INSERT INTO `employee_insurance` (`id`, `no_insurance`, `name`, `wife_or_husband`, `childern`, `healt_insurance`) VALUES
(1, '0001234567890', 'Mang Omen', 'Mellisa Ayu Lestari', '2', 'Mandiri Health'),
(2, '0001234567891', 'Thomas Haryadi', 'Sama Nama Ayu', '2', 'Alianz'),
(3, '0001234567893', 'M aldy', 'Ara', '1', 'Mandiri Aja');

-- --------------------------------------------------------

--
-- Struktur dari tabel `employee_placement`
--

CREATE TABLE `employee_placement` (
  `id` int(11) NOT NULL,
  `nik` varchar(16) NOT NULL,
  `name` varchar(20) NOT NULL,
  `education` varchar(255) NOT NULL,
  `skill` varchar(255) NOT NULL,
  `placement` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `employee_placement`
--

INSERT INTO `employee_placement` (`id`, `nik`, `name`, `education`, `skill`, `placement`) VALUES
(2, '32050612345677', 'Mang Omen', 'Chrome', 'php.', 'beckend'),
(3, '320506123456788', 'Nick Novaldi', 'edge', 'html', 'frontend');

-- --------------------------------------------------------

--
-- Struktur dari tabel `employee_record`
--

CREATE TABLE `employee_record` (
  `id` int(11) NOT NULL,
  `name` varchar(200) NOT NULL,
  `company_name` varchar(200) NOT NULL,
  `company_type` varchar(200) NOT NULL,
  `position` varchar(200) NOT NULL,
  `periode` varchar(100) NOT NULL,
  `reason` varchar(225) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `employee_record`
--

INSERT INTO `employee_record` (`id`, `name`, `company_name`, `company_type`, `position`, `periode`, `reason`) VALUES
(1, 'Mang Omen', 'Usaha Mandiri Sejahtera', 'Finance', 'komisaris', '2012-2019', 'contrat ends'),
(2, 'Mellisa Ayu Lestari', 'BRIlink', 'Finance', 'Head Office', '2015-2018', 'moving residence'),
(3, 'Andy yamica', 'Gojek', 'transportasi', 'manager', '2016-2019', 'bete');

-- --------------------------------------------------------

--
-- Struktur dari tabel `job_description`
--

CREATE TABLE `job_description` (
  `id` int(11) NOT NULL,
  `nik` varchar(16) NOT NULL,
  `name` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `position` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `job_description`
--

INSERT INTO `job_description` (`id`, `nik`, `name`, `address`, `position`, `description`) VALUES
(1, '32050612345677', 'Mang Omen', 'Bintaro', 'Manager', 'management');

-- --------------------------------------------------------

--
-- Struktur dari tabel `performance_or_reward_achievement`
--

CREATE TABLE `performance_or_reward_achievement` (
  `id` int(11) NOT NULL,
  `nik` varchar(16) NOT NULL,
  `name` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `position` varchar(255) NOT NULL,
  `achievement` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `performance_or_reward_achievement`
--

INSERT INTO `performance_or_reward_achievement` (`id`, `nik`, `name`, `address`, `position`, `achievement`) VALUES
(1, '32050612345677', 'Omen', 'bintaro', 'manager', 'promote');

-- --------------------------------------------------------

--
-- Struktur dari tabel `training_record`
--

CREATE TABLE `training_record` (
  `id` int(11) NOT NULL,
  `nik` char(16) NOT NULL,
  `name` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `position` varchar(255) NOT NULL,
  `skill_or_certificate` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `training_record`
--

INSERT INTO `training_record` (`id`, `nik`, `name`, `address`, `position`, `skill_or_certificate`) VALUES
(1, '32050612345677', 'Mang Omen', 'Bintaro', 'Diruktur ', 'php'),
(2, '320506123456789', 'Gerry', 'jaksel', 'staff', 'disgn');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `allowances`
--
ALTER TABLE `allowances`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `attendance_record`
--
ALTER TABLE `attendance_record`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `educational_history`
--
ALTER TABLE `educational_history`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `employee_data`
--
ALTER TABLE `employee_data`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `employee_insurance`
--
ALTER TABLE `employee_insurance`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `employee_placement`
--
ALTER TABLE `employee_placement`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `employee_record`
--
ALTER TABLE `employee_record`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `job_description`
--
ALTER TABLE `job_description`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `performance_or_reward_achievement`
--
ALTER TABLE `performance_or_reward_achievement`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `training_record`
--
ALTER TABLE `training_record`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `allowances`
--
ALTER TABLE `allowances`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `attendance_record`
--
ALTER TABLE `attendance_record`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `educational_history`
--
ALTER TABLE `educational_history`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `employee_data`
--
ALTER TABLE `employee_data`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT untuk tabel `employee_insurance`
--
ALTER TABLE `employee_insurance`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `employee_placement`
--
ALTER TABLE `employee_placement`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `employee_record`
--
ALTER TABLE `employee_record`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2134445557;

--
-- AUTO_INCREMENT untuk tabel `job_description`
--
ALTER TABLE `job_description`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `performance_or_reward_achievement`
--
ALTER TABLE `performance_or_reward_achievement`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `training_record`
--
ALTER TABLE `training_record`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
