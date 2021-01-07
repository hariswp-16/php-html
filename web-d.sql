-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 07 Jan 2021 pada 04.10
-- Versi server: 10.4.13-MariaDB
-- Versi PHP: 7.4.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `web-d`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `dosen`
--

CREATE TABLE `dosen` (
  `nip_dosen` int(5) NOT NULL,
  `nama_dosen` varchar(250) NOT NULL,
  `alamat` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `dosen`
--

INSERT INTO `dosen` (`nip_dosen`, `nama_dosen`, `alamat`) VALUES
(1810530254, 'Haris', 'Singapura'),
(2147483647, 'hehe', 'jiwa');

-- --------------------------------------------------------

--
-- Struktur dari tabel `mahasiswa`
--

CREATE TABLE `mahasiswa` (
  `nim` int(5) NOT NULL,
  `nama_mahasiswa` varchar(250) NOT NULL,
  `prodi` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `mahasiswa`
--

INSERT INTO `mahasiswa` (`nim`, `nama_mahasiswa`, `prodi`) VALUES
(1810550, 'Ris WP', 'S1 ILKOM'),
(1810570, 'Gofar Hilman', 'S1 DKV'),
(1810580, 'Aurelie Kamado', 'S1 Hukum\r\n');

-- --------------------------------------------------------

--
-- Struktur dari tabel `perwalian`
--

CREATE TABLE `perwalian` (
  `id` int(11) NOT NULL,
  `dosen_nip` int(5) NOT NULL,
  `mahasiswa_nim` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `dosen`
--
ALTER TABLE `dosen`
  ADD PRIMARY KEY (`nip_dosen`);

--
-- Indeks untuk tabel `mahasiswa`
--
ALTER TABLE `mahasiswa`
  ADD PRIMARY KEY (`nim`);

--
-- Indeks untuk tabel `perwalian`
--
ALTER TABLE `perwalian`
  ADD PRIMARY KEY (`id`),
  ADD KEY `dosen_nip` (`dosen_nip`),
  ADD KEY `mahasiswa_nim` (`mahasiswa_nim`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `perwalian`
--
ALTER TABLE `perwalian`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `perwalian`
--
ALTER TABLE `perwalian`
  ADD CONSTRAINT `perwalian_ibfk_1` FOREIGN KEY (`dosen_nip`) REFERENCES `dosen` (`nip_dosen`),
  ADD CONSTRAINT `perwalian_ibfk_2` FOREIGN KEY (`mahasiswa_nim`) REFERENCES `mahasiswa` (`nim`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
