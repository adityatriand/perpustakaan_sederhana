-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 24 Jun 2021 pada 17.31
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
-- Database: `db_perpustakaan`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_buku`
--

CREATE TABLE `tb_buku` (
  `Id_buku` varchar(12) NOT NULL,
  `Judul_buku` varchar(35) DEFAULT NULL,
  `Penulis` varchar(35) DEFAULT NULL,
  `Penerbit` varchar(35) DEFAULT NULL,
  `Kategori` varchar(100) NOT NULL,
  `Jumlah_hal` int(10) DEFAULT NULL,
  `Resensi` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tb_buku`
--

INSERT INTO `tb_buku` (`Id_buku`, `Judul_buku`, `Penulis`, `Penerbit`, `Kategori`, `Jumlah_hal`, `Resensi`) VALUES
('A001', 'Pemrograman Web dengan PHP', 'Simanjuntak', 'Erlangga', 'Buku Programming', 120, 'Buku ini berisi tentang PHP dan Kasus yang ada di PHP'),
('A002', 'Pemrograman dengan Java', 'Andi adila', 'Elex Media', 'Buku Programming', 123, 'Buku ini berisi tentang Java dan Kasus yang ada di Java'),
('A003', 'Pengantar Teknologi Informasi', 'Adila', 'Elex Media', 'Buku Komputer', 100, 'Buku ini berisi tentang Teknologi yang saat ini yang sedang berkembang'),
('A004', 'Probabilitas dan Statistika', 'Budi Herianto', 'Erlangga', 'Buku Komputer', 100, 'Buku ini berisi tentang Probabilitas serta Statistika'),
('A005', 'Strutur Diskrit', 'Renaldi Munir', 'Elex Media', 'Buku Komputer', 600, 'Buku ini berisi tentang Matematika Diskrit');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_login`
--

CREATE TABLE `tb_login` (
  `username` varchar(200) NOT NULL,
  `password` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tb_login`
--

INSERT INTO `tb_login` (`username`, `password`) VALUES
('adityatriananda', '$2y$10$gqNjt/gX3U5OwFaX3pWKgueCJwnqCGWWfqMMa5DmkePu3JAWRziVK');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `tb_buku`
--
ALTER TABLE `tb_buku`
  ADD PRIMARY KEY (`Id_buku`);

--
-- Indeks untuk tabel `tb_login`
--
ALTER TABLE `tb_login`
  ADD PRIMARY KEY (`username`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
