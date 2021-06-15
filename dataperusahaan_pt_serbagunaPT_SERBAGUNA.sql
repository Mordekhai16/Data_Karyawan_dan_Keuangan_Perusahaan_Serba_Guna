-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 15 Jun 2021 pada 06.49
-- Versi server: 10.4.17-MariaDB
-- Versi PHP: 8.0.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `dataperusahaan_pt_serbaguna`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `data_karyawan`
--

CREATE TABLE `data_karyawan` (
  `NIK` varchar(15) NOT NULL,
  `Nama` varchar(50) NOT NULL,
  `Tempat_Lahir` varchar(40) NOT NULL,
  `Tanggal_Lahir` date NOT NULL,
  `Jenis_Kelamin` enum('Pria','Wanita') NOT NULL,
  `Agama` enum('Kristen','Katolik','Islam','Hindu','Budhha','Konghucu') NOT NULL,
  `Status_Menikah` enum('Belum Menikah','Sudah Menikah') NOT NULL,
  `Jabatan` varchar(40) NOT NULL,
  `Alamat` varchar(50) NOT NULL,
  `No_Telepon` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `data_karyawan`
--

INSERT INTO `data_karyawan` (`NIK`, `Nama`, `Tempat_Lahir`, `Tanggal_Lahir`, `Jenis_Kelamin`, `Agama`, `Status_Menikah`, `Jabatan`, `Alamat`, `No_Telepon`) VALUES
('0160431809', 'Megawati ', 'Sambas', '1997-02-01', 'Wanita', 'Islam', 'Belum Menikah', 'Direktur Keuangan 1', 'kel.benua melayu darat', '0812347311'),
('0160436012', 'Sabrina Sari', 'Bengkayang', '1995-06-14', 'Wanita', 'Islam', 'Sudah Menikah', 'Manajer Pemasaran 1', 'jln.a.dahlan, k.h kel.sekip darat', '0812349900'),
('0260431711', 'Mariana Eka', 'Sanggau', '1995-11-03', 'Wanita', 'Kristen', 'Belum Menikah', 'Manajer Personalia', 'gg. aim, panglima', '0812348923'),
('0260432002', 'Maya Ari Putri', 'Putussibau', '1996-03-16', 'Wanita', 'Katolik', 'Sudah Menikah', 'Divisi Regional 1', 'jln.abd.rahman, sultan kel.sei bangkong', '0812345234'),
('0275430005', 'Susi Indriani', 'Sukadana', '1997-02-20', 'Wanita', 'Kristen', 'Sudah Menikah', 'Manajer', 'jln.abd.rahman saleh, kel.parit tokaya', '0812656532'),
('0275439555', 'Robert Jong', 'Sekadau', '1994-12-10', 'Pria', 'Konghucu', 'Sudah Menikah', 'Administrasi dan Pergudangan', 'jln.alianyang', '0812651321'),
('0480432066', 'Tia Santrini', 'Ketapang', '1998-07-23', 'Wanita', 'Kristen', 'Sudah Menikah', 'Direktur Keuangan', 'jln.ade irma suryani', '0812451177'),
('0480438090', 'Febrianti Yustika', 'Sintang', '1996-10-11', 'Wanita', 'Konghucu', 'Belum Menikah', 'Manajer Pemasaran 2', 'jln.ampera, kel.sei pal lima', '0812456633'),
('0576431001', 'M. Siddiq', 'Sungai Raya', '1995-08-31', 'Pria', 'Islam', 'Sudah Menikah', 'Direktur Personalia', 'jln.adisucipto', '0812979005'),
('0576435227', 'Agus Prayoga', 'Pontianak', '1997-09-15', 'Pria', 'Katolik', 'Sudah Menikah', 'Divisi Regional 2', 'gg. balam, kel.tengah', '0812974441'),
('0770431119', 'Dandi Julianto', 'Singkawang', '1994-11-11', 'Pria', 'Katolik', 'Sudah Menikah', 'Direktur Keuangan 2', 'jln.batanghari barat', '0812569090'),
('0770435006', 'Rubin Orlando', 'Ngabang', '1994-04-07', 'Pria', 'Konghucu', 'Sudah Menikah', 'Direktur', 'jln.adiyaksa', '0812567678'),
('0869437003', 'Redi Suprianto', 'Mempawah', '1998-01-30', 'Pria', 'Katolik', 'Belum Menikah', 'Direktur Utama', 'jln.ahmad yani, kel.parit tokaya', '0812338877'),
('1080432007', 'Daniel Carlos', 'Nanga Pinoh', '1998-10-13', 'Pria', 'Kristen', 'Belum Menikah', 'Direksi', 'jln.ahmad marzuki', '0812456345');

-- --------------------------------------------------------

--
-- Struktur dari tabel `data_keuangan`
--

CREATE TABLE `data_keuangan` (
  `No_Bukti` varchar(5) NOT NULL,
  `No_Cek` varchar(4) NOT NULL,
  `Tanggal` date NOT NULL,
  `Keterangan` varchar(50) NOT NULL,
  `Penerimaan_(Debit)` float NOT NULL,
  `Pengeluaran_(Kredit)` float NOT NULL,
  `Saldo` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `data_keuangan`
--

INSERT INTO `data_keuangan` (`No_Bukti`, `No_Cek`, `Tanggal`, `Keterangan`, `Penerimaan_(Debit)`, `Pengeluaran_(Kredit)`, `Saldo`) VALUES
('SK/11', '1234', '2021-02-01', 'Saldo Awal', 250000000, 0, 250000000),
('SK/12', '1244', '2021-02-01', 'Pembelian Alat Tulis Kantor', 0, 1500000, 248500000),
('SK/13', '1254', '2021-02-05', 'Pembayaran Rekening Listrik', 0, 5500000, 243000000),
('SK/14', '1264', '2021-02-07', 'Pembayaran Rekening Telepon', 0, 3000000, 240000000),
('SK/15', '1274', '2021-02-09', 'Pembayaran Internet', 0, 5000000, 235000000),
('SK/16', '1284', '2021-02-11', 'Ambil Kas dari Bank XY', 3500000, 0, 238500000),
('SK/17', '1294', '2021-02-13', 'Pembelian 10 Unit Komputer', 0, 55000000, 183500000),
('SK/18', '1314', '2021-02-15', 'Transport dan Perjalanan Dinas', 0, 6000000, 177500000),
('SK/19', '1324', '2021-02-17', 'Ambil Kas dari Bank XY', 5000000, 0, 182500000),
('SK/20', '1334', '2021-02-19', 'Uang muka bahan bangunan', 0, 10500000, 172000000),
('SK/21', '1344', '2021-02-21', 'Pembayaran Biaya Promosi', 0, 5000000, 167000000),
('SK/22', '1354', '2021-02-23', 'Dana Dipinjam Karyawan', 0, 9000000, 158000000),
('SK/23', '1364', '2021-02-25', 'Biaya Administrasi Lainnya', 0, 15000000, 143000000);

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `data_karyawan`
--
ALTER TABLE `data_karyawan`
  ADD PRIMARY KEY (`NIK`);

--
-- Indeks untuk tabel `data_keuangan`
--
ALTER TABLE `data_keuangan`
  ADD PRIMARY KEY (`No_Bukti`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
