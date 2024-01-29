

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


CREATE TABLE `dosen` (
  `DosenID` int NOT NULL,
  `NamaDosen` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `Alamat` varchar(255) DEFAULT NULL,
  `TanggalLahir` date DEFAULT NULL,
  `JenisKelamin` varchar(10) DEFAULT NULL,
  `KontakDarurat` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;


INSERT INTO `dosen` (`DosenID`, `NamaDosen`, `Alamat`, `TanggalLahir`, `JenisKelamin`, `KontakDarurat`) VALUES
(1, 'Edya Rosadi, S.Kom, M.Kom', 'Banjarmasin', '2024-01-19', 'Laki-Laki', '0822'),
(2, 'Alamsyah, S.Kom, M.Kom', 'Banjarmasin', '2024-01-10', 'Laki-Laki', '0823'),
(4, 'Indu Indah Purnomo, S.Kom, M.Kom', 'Banjarmasin', '2024-01-11', 'Laki-Laki', '0877');

CREATE TABLE `fakultas` (
  `FakultasID` int NOT NULL,
  `NamaFakultas` varchar(100) NOT NULL,
  `Deskripsi` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

INSERT INTO `fakultas` (`FakultasID`, `NamaFakultas`, `Deskripsi`) VALUES
(1, 'Fakultas Teknik', 'Fakultas Teknik dan Ilmu Komputer'),
(2, 'Fakultas Ilmu Sosial', 'Fakultas Ilmu Sosial dan Humaniora'),
(3, 'Fakultas Ekonomi', 'Fakultas Ekonomi dan Bisnis'),
(4, 'Fakultas Kedokteran', 'Fakultas Kedokteran dan Ilmu Kesehatan'),
(5, 'Fakultas Hukum', 'Fakultas Hukum dan Ilmu Politik');

CREATE TABLE `mahasiswa` (
  `MahasiswaID` int NOT NULL,
  `Nama` varchar(100) NOT NULL,
  `Alamat` varchar(255) DEFAULT NULL,
  `TanggalLahir` date DEFAULT NULL,
  `JenisKelamin` varchar(10) DEFAULT NULL,
  `KontakDarurat` varchar(50) DEFAULT NULL,
  `ProgramStudiID` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

INSERT INTO `mahasiswa` (`MahasiswaID`, `Nama`, `Alamat`, `TanggalLahir`, `JenisKelamin`, `KontakDarurat`, `ProgramStudiID`) VALUES
(1, 'Mahasiswa 1', 'Alamat 1', '1995-05-10', 'Laki-Laki', 'Kontak 1', 1),
(2, 'Mahasiswa 2', 'Alamat 2', '1996-07-15', 'Perempuan', 'Kontak 2', 2),
(3, 'Mahasiswa 3', 'Alamat 3', '1997-03-20', 'Laki-Laki', 'Kontak 3', 1),
(4, 'Mahasiswa 4', 'Alamat 4', '1998-09-25', 'Perempuan', 'Kontak 4', 3),
(5, 'Mahasiswa 5', 'Alamat 5', '1999-01-30', 'Laki-Laki', 'Kontak 5', 2);


CREATE TABLE `matakuliah` (
  `MataKuliahID` int NOT NULL,
  `NamaMataKuliah` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;


INSERT INTO `matakuliah` (`MataKuliahID`, `NamaMataKuliah`) VALUES
(2, 'Sistem Penunjang Keputusan');



CREATE TABLE `pengguna` (
  `UserID` int NOT NULL,
  `NamaPengguna` varchar(50) NOT NULL,
  `KataSandi` varchar(255) NOT NULL,
  `Email` varchar(100) NOT NULL,
  `Peran` varchar(20) NOT NULL,
  `MahasiswaID` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;


INSERT INTO `pengguna` (`UserID`, `NamaPengguna`, `KataSandi`, `Email`, `Peran`, `MahasiswaID`) VALUES
(6, 'user1', 'password1', 'user1@email.com', 'Mahasiswa', 1),
(7, 'user2', 'password2', 'user2@email.com', 'Dosen', NULL),
(8, 'admin1', 'adminpass1', 'admin1@email.com', 'Admin', NULL),
(9, 'user3', 'password3', 'user3@email.com', 'Mahasiswa', 2),
(10, 'user4', 'password4', 'user4@email.com', 'Mahasiswa', 3);


CREATE TABLE `perubahandatamahasiswa` (
  `PerubahanID` int NOT NULL,
  `MahasiswaID` int DEFAULT NULL,
  `TanggalPerubahan` date DEFAULT NULL,
  `JenisPerubahan` varchar(50) DEFAULT NULL,
  `DetailPerubahan` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;


INSERT INTO `perubahandatamahasiswa` (`PerubahanID`, `MahasiswaID`, `TanggalPerubahan`, `JenisPerubahan`, `DetailPerubahan`) VALUES
(1, 1, '2023-03-15', 'Perubahan Alamat', 'Alamat diubah menjadi Alamat Baru 1'),
(2, 2, '2023-02-20', 'Perubahan Jurusan', 'Jurusan diubah menjadi Jurusan Baru 2'),
(3, 3, '2023-01-10', 'Perubahan Alamat', 'Alamat diubah menjadi Alamat Baru 3'),
(4, 4, '2023-04-05', 'Perubahan Jurusan', 'Jurusan diubah menjadi Jurusan Baru 4'),
(5, 5, '2023-05-25', 'Perubahan Alamat', 'Alamat diubah menjadi Alamat Baru 5');


CREATE TABLE `programstudi` (
  `ProgramStudiID` int NOT NULL,
  `NamaProgram` varchar(100) NOT NULL,
  `FakultasID` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;


INSERT INTO `programstudi` (`ProgramStudiID`, `NamaProgram`, `FakultasID`) VALUES
(1, 'Teknik Informatika', 1),
(2, 'Ilmu Komunikasi', 2),
(3, 'Manajemen Bisnis', 3),
(4, 'Kedokteran Umum', 4),
(5, 'Hukum', 5);

CREATE TABLE `riwayatregistrasi` (
  `RegistrasiID` int NOT NULL,
  `MahasiswaID` int DEFAULT NULL,
  `TahunAjaran` int DEFAULT NULL,
  `Semester` varchar(20) DEFAULT NULL,
  `MataKuliahID` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;


INSERT INTO `riwayatregistrasi` (`RegistrasiID`, `MahasiswaID`, `TahunAjaran`, `Semester`, `MataKuliahID`) VALUES
(1, 1, 2022, 'Ganjil', 101),
(2, 2, 2022, 'Ganjil', 102),
(3, 3, 2022, 'Ganjil', 103),
(4, 4, 2022, 'Ganjil', 104),
(5, 5, 2022, 'Ganjil', 105);

ALTER TABLE `mahasiswa`
  ADD CONSTRAINT `mahasiswa_ibfk_1` FOREIGN KEY (`ProgramStudiID`) REFERENCES `programstudi` (`ProgramStudiID`);

ALTER TABLE `pengguna`
  ADD CONSTRAINT `pengguna_ibfk_1` FOREIGN KEY (`MahasiswaID`) REFERENCES `mahasiswa` (`MahasiswaID`);

ALTER TABLE `perubahandatamahasiswa`
  ADD CONSTRAINT `perubahandatamahasiswa_ibfk_1` FOREIGN KEY (`MahasiswaID`) REFERENCES `mahasiswa` (`MahasiswaID`);

ALTER TABLE `programstudi`
  ADD CONSTRAINT `programstudi_ibfk_1` FOREIGN KEY (`FakultasID`) REFERENCES `fakultas` (`FakultasID`);

ALTER TABLE `riwayatregistrasi`
  ADD CONSTRAINT `riwayatregistrasi_ibfk_1` FOREIGN KEY (`MahasiswaID`) REFERENCES `mahasiswa` (`MahasiswaID`);
COMMIT;
