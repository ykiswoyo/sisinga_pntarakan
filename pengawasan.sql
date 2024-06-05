-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 27, 2024 at 06:18 PM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.2.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `pengawasan`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `c_admin` varchar(10) NOT NULL,
  `nama` varchar(30) NOT NULL,
  `username` varchar(30) NOT NULL,
  `password` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`c_admin`, `nama`, `username`, `password`) VALUES
('123456789', 'KISWOYO (Admin)', 'admin', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `aparatur`
--

CREATE TABLE `aparatur` (
  `c_aparatur` varchar(10) NOT NULL,
  `c_bagian` varchar(10) NOT NULL,
  `nip` varchar(20) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `jk` varchar(1) NOT NULL,
  `alamat` varchar(150) NOT NULL,
  `tl` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `aparatur`
--

INSERT INTO `aparatur` (`c_aparatur`, `c_bagian`, `nip`, `nama`, `jk`, `alamat`, `tl`) VALUES
('2nXjwso1B', 'yF8Surm2R', '198701312009121006', '07. AGUS PURWANTO, S.H., M.H.', 'L', 'Tanah Grogot', '1987-01-31'),
('4NyvcNs8o', 'ovuApUS1H', '199509272024051001', '18. ADRIAWAN ANUGRAH PEKERTI, S.H.', 'L', 'Kutai Kartanegara', '1995-09-27'),
('4u4lUwsqx', 'EWvpW6HBU', '199509212020121009', '23. YUDHITH ARDHI SATRIA, A.Md.', 'L', 'Semarang', '1995-09-21'),
('5bBK8wFyc', 'rc3WQPywS', '199604032022032016', '20. APRIYANTI KARTIKA DWI, A.Md.', 'P', 'Pangkalan Bun', '1996-04-03'),
('5bGPGOADu', 'Ovsu6cqPY', '197711152001121002', '01. DAMENTA ALEXANDER, S.H., M.Hum.', 'L', 'Jakarta Timur', '1977-11-15'),
('5FdUPyAYn', 'U0eQdVJQj', '197312061994032001 ', '09. SITI MUSRIFAH, S.H.', 'P', 'Tarakan', '1973-12-06'),
('7djuMg5x5', 'xIx9tRz2k', '-', '31. Aisyah S.H.', 'P', 'Tarakan', '1996-09-28'),
('9tBkr0vUo', 'xIx9tRz2k', '-', '27. Rusdar Syamsi', 'L', 'Tarakan', '1989-07-09'),
('AtBms6yuj', '80MmA6XiJ', '197511222016042001', '12. NOVA ZULAIKA IBRAHIM, S.H.', 'P', 'Manado', '1975-11-22'),
('b368Ef6Sn', 'xIx9tRz2k', '-', '25. Fichbar Tandy S.Kom.', 'L', 'Samarinda', '1970-01-01'),
('DdlIyJtXv', 'tFFJbDecE', '199601292023211010', '24. MUHAMMAD AFIQ, A.Md.A.B.', 'L', 'Parepare', '1996-01-29'),
('eDQuotjvn', 'H4MvD4YeL', '198906092020121002', '14. BENEDIKTUS EKA SETIAWAN, S.T.', 'L', 'Kuningan', '1989-07-09'),
('EmcPaR5x2', 'yF8Surm2R', '198404212009041004', '05. IMRAN MARANNU IRIANSYAH, S.H.,M.H.', 'L', 'Takalar', '1984-04-21'),
('hJtexm7pu', 'xIx9tRz2k', '-', '28. Mario Marccelo S.Kom.', 'L', 'Tarakan', '1994-08-15'),
('iWH00axzl', 'xIx9tRz2k', '-', '30. Sparta Yulita Sari', 'P', 'Bekasi', '1993-07-30'),
('jQQuuMyIg', 'EWvpW6HBU', '199707232022031012', '22. EDWINT ALDRIN MUHAMAD SHODIQ, A.Md.Akun', 'L', 'Banyumas', '1997-07-22'),
('JRRZbZizN', 'yF8Surm2R', '197708222009041001', '04. ABDUL RAHMAN TALIB, S.H.,M.H', 'L', 'Banggai', '1977-08-22'),
('lnREravDk', 'pEzNdBadR', '196701041991031002', '02. RADEN DIDI BUDI HARJO, S.H.', 'L', 'Bulungan', '1967-01-04'),
('mUpd4qZe6', 'sbnHkomsF', '197810292006041003', '03. KISWOYO, S.Sos.', 'L', 'Purwokerto', '1978-10-29'),
('NtFJ7OFxe', 'xIx9tRz2k', '-', '26. Suriani BT Sinring', 'P', 'Malaysia', '1970-01-01'),
('r7JcQHv6P', '1IXD4hX3N', '199811122024052001', '19. ADE RAHMAWATI, S.H.', 'P', 'Tarakan', '1998-11-12'),
('rNthpQWVM', 'vkyhHSaeO', '198904122014031005', '11. ESRA PAEMBONAN, S.H.', 'L', 'Samarinda', '1989-04-12'),
('rXA2GVX1G', 'FUuL745Ko', '198508172005022003', '15. RUSTIAH, S.H.', 'P', 'Balikpapan', '1985-08-17'),
('scKUbR4j2', 'hnUb4Zs0t', '199510282022031008', '16. FADILLAH MURSID AAN SAPUTRO, S.E.', 'L', 'Klaten', '1995-10-28'),
('sr1tDKH0f', 'xIx9tRz2k', '-', '29. Ryan Arie Hidayat', 'L', 'Tarakan', '1995-04-25'),
('u63W5rQwV', 'ZufBabdzO', '198603032006042001 ', '13. JAZILATUL HUMAIRA, S.H.', 'P', 'Samarinda', '1986-03-03'),
('UzBs8rCcE', 'WnuMDy1IF', '198512122014031003', '10. HANAFI, S.H.', 'L', 'Samarinda', '1985-12-12'),
('wZuDRahOz', 'aADVLuEWx', '199907232024051001', '17. AHMAD RIFQI SULISTIO, S.H.', 'L', 'Serang', '1999-07-22'),
('y4P1Xb4su', 'rc3WQPywS', '199701082022032018', '21. EKA NUR AMALINA FAJRIN, A.Md.A.B', 'P', 'Samarinda', '1997-01-08'),
('yBxrIDKKW', 'yF8Surm2R', '198101212009121002', '06. ANWAR W. M SAGALA, S.H.', 'L', 'Sidikalang', '1981-01-21'),
('zLr7i2rSc', 'yF8Surm2R', '198804082011011004', '08. ALFIANUS RUMONDOR, S.H.,M.H', 'L', 'Manado', '1988-04-08');

-- --------------------------------------------------------

--
-- Table structure for table `atasan`
--

CREATE TABLE `atasan` (
  `c_atasan` varchar(10) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `inisial` varchar(20) NOT NULL,
  `username` varchar(30) NOT NULL,
  `password` varchar(30) NOT NULL,
  `foto` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `atasan`
--

INSERT INTO `atasan` (`c_atasan`, `nama`, `inisial`, `username`, `password`, `foto`) VALUES
('3N6bnKtPt', '31. KISWOYO, S.Sos (aisyah)', 'KISWOYO', 'kiswoyo-aisyah', '12345@kiswoyo', ''),
('45usxSwyQ', '24. KISWOYO, S.Sos (afiq)', 'KISWOYO', 'kiswoyo-afiq', '12345@kiswoyo', ''),
('4My45tXua', '02. DAMENTA ALEXANDER, S.H., M.Hum. (budi)', 'D. ALEXANDER', 'alex-budi', 'alex', 'foto/damenta.ico'),
('67DG9XtBi', '14. KISWOYO, S.Sos (ema)', 'KISWOYO', 'kiswoyo-ema', '12345@kiswoyo', ''),
('aNEDAKF2W', '12. RADEN DIDI BUDI HARJO, S.H. (tiah)', 'BUDI HARJO', 'budi-tiah', 'budi', ''),
('AVvMuyVKl', '07. DAMENTA ALEXANDER, S.H., M.Hum. (agus)', 'D. ALEXANDER', 'alex-agus', 'alex', ''),
('b7gaj3ShV', '28. KISWOYO, S.Sos (mario)', 'KISWOYO', 'kiswoyo-mario', '12345@kiswoyo', ''),
('bJzhBRqMx', '27. KISWOYO, S.Sos (rusdar)', 'KISWOYO', 'kiswoyo-rusdar', '12345@kiswoyo', ''),
('gkIpELFqj', '26. KISWOYO, S.Sos (suriani)', 'KISWOYO', 'kiswoyo-suriani', '12345@kiswoyo', ''),
('hzUy3mq4u', '05. DAMENTA ALEXANDER, S.H., M.Hum. (imran)', 'D. ALEXANDER', 'alex-imran', 'alex', ''),
('KRXRDtysp', '19.  ESRA PAEMBONAN, S.H. (ade)', 'ESRA PAEMBONAN', 'esra-ade', 'esra', ''),
('KwCXs3uqS', '01. Dr. LILIK MULYADI, S.H., M.H. (alex)', 'LILIK MULYADI', 'lilik-alex', 'lilik', 'foto/kpt.png'),
('kyZRxRHhL', '16. BENEDIKTUS EKA SETIAWAN, S.T. (fadil)', 'EKA SETIAWAN', 'eka-fadil', 'eka', ''),
('lKpiqYbW4', '30. KISWOYO, S.Sos (sparta)', 'KISWOYO', 'kiswoyo-sparta', '12345@kiswoyo', ''),
('mK59VrkCw', '18. HANAFI, S.H. (adri)', 'HANAFI', 'hanafi-adri', 'hanafi', ''),
('N6zyAuVQR', '04. DAMENTA ALEXANDER, S.H., M.Hum. (rahman)', 'D. ALEXANDER', 'alex-rahman', 'alex', ''),
('nAyYKXt6Z', '11. RADEN DIDI BUDI HARJO, S.H. (esra)', 'BUDI HARJO', 'budi-esra', 'budi', ''),
('q3aI9GKlO', '06. DAMENTA ALEXANDER, S.H., M.Hum. (sagala)', 'D. ALEXANDER', 'alex-sagala', 'alex', ''),
('q3UERW9FE', '23. JAZILATUL HUMAIRA, S.H. (yudhith)', 'JAZILATUL HUMAIRA', 'ema-yudhith', 'ema', ''),
('Qg2l7DuBO', '03. DAMENTA ALEXANDER, S.H., M.Hum. (kiswoyo)', 'D. ALEXANDER', 'alex-kiswoyo', 'alex', 'foto/damenta.ico'),
('qHBRS5vDL', '22. JAZILATUL HUMAIRA, S.H. (edwint)', 'JAZILATUL HUMAIRA', 'ema-edwint', 'ema', 'foto/download (2).jpeg'),
('SgbetuijE', '25. KISWOYO, S.Sos (fichbar)', 'KISWOYO', 'kiswoyo-fichbar', '12345@kiswoyo', ''),
('t9NgI3w7F', '29. KISWOYO, S.Sos (ryan)', 'KISWOYO', 'kiswoyo-ryan', '12345@kiswoyo', ''),
('u2jLJo85Y', '08. DAMENTA ALEXANDER, S.H., M.Hum. (alfian)', 'D. ALEXANDER', 'alex-alfian', 'alex', ''),
('uLGmSOEZU', '13. KISWOYO, S.Sos (nova)', 'KISWOYO', 'kiswoyo-nova', '12345@kiswoyo', ''),
('Vzy2s7SzZ', '20. SITI MUSRIFAH, S.H. (dwi)', 'SITI MUSRIFAH', 'siti-dwi', 'siti', ''),
('W8gDi9uON', '17. SITI MUSRIFAH, S.H. (ahmad)', 'SITI MUSRIFAH', 'siti-ahmad', 'siti', ''),
('xn0rAOY96', '09. RADEN DIDI BUDI HARJO, S.H. (siti)', 'BUDI HARJO', 'budi-siti', 'budi', ''),
('XpbNDbAnF', '15. KISWOYO, S.Sos (eka)', 'KISWOYO', 'kiswoyo-eka', '12345@kiswoyo', 'foto/admin4.jpg'),
('YGdZr8Hzx', '21. SITI MUSRIFAH, S.H. (eka)', 'SITI MUSRIFAH', 'siti-eka', 'siti', ''),
('zPdhxkIh7', '10. RADEN DIDI BUDI HARJO, S.H. (hanafi)', 'BUDI HARJO', 'budi-hanafi', 'budi', '');

-- --------------------------------------------------------

--
-- Table structure for table `bagian`
--

CREATE TABLE `bagian` (
  `c_bagian` varchar(10) NOT NULL,
  `bagian` varchar(60) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `bagian`
--

INSERT INTO `bagian` (`c_bagian`, `bagian`) VALUES
('1IXD4hX3N', '20. Analis Perkara Peradilan Panmud Hukum'),
('80MmA6XiJ', '08. KASUBBAG KEPEGAWAIAN ORTA/ PPK'),
('aADVLuEWx', '18. Analis Perkara Peradilan Panmud Pidana'),
('bf5cKaPSb', '11. PANITERA PENGGANTI'),
('EWvpW6HBU', '22. Pengolah Data/Informasi Sub Bagian U&K'),
('FUuL745Ko', '12. JURU SITA/ BENDAHARA PENGELUARAN'),
('H4MvD4YeL', '10. Plt. KASUBBAG PTIP/ PPSPM'),
('hnUb4Zs0t', '17. Penelaah Teknis Kebijakan Sub Bagian PTIP'),
('Ovsu6cqPY', '01. KETUA PENGADILAN NEGERI'),
('ovuApUS1H', '19. Analis Perkara Peradilan Panmud Perdata'),
('pEzNdBadR', '03. PANITERA'),
('rc3WQPywS', '21.  Pengelola Penanganan Perkara Panmud Pidana'),
('sbnHkomsF', '04. SEKRETARIS/ KPA/ KPB'),
('tFFJbDecE', '23. Pegawai Pemerintah dengan Perjanjian Kerja (P3K)'),
('U0eQdVJQj', '05. PANMUD PIDANA'),
('vkyhHSaeO', '07. PANMUD HUKUM'),
('WnuMDy1IF', '06. PANMUD PERDATA'),
('xIx9tRz2k', '24. PPNPN'),
('yF8Surm2R', '02. HAKIM'),
('ZufBabdzO', '09. Plt. KASUBBAG U & K/ BENDAHARA PNBP');

-- --------------------------------------------------------

--
-- Table structure for table `benpel`
--

CREATE TABLE `benpel` (
  `c_benpel` varchar(10) NOT NULL,
  `c_katbenpel` varchar(10) NOT NULL,
  `benpel` text NOT NULL,
  `bobot` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `benpel`
--

INSERT INTO `benpel` (`c_benpel`, `c_katbenpel`, `benpel`, `bobot`) VALUES
('00ZyazFbD', 'pg45zYoYJ', 'Pasal 15 ayat 1: Pelanggaran terhadap kewajiban Masuk Kerja dan menaati ketentuan jam kerja sebagaimana dimaksud dalam Pasal 4 huruf f dihitung secara kumulatif sampai dengan akhir tahun berjalan.', 0),
('0bZMSkkiB', 'OReGjfOFG', 'PEMUTUSAN HUBUNGAN PERJANJIAN KERJA (Pasal 53 ayat 3 huruf c): Pemutusan hubungan perjanjian kerja PPPK dilakukan tidak dengan hormat karena: (c) menjadi anggota dan/atau pengurus partai politik.', 85),
('0QgbQIWys', 'pg45zYoYJ', 'HUKUMAN DISIPLIN SEDANG: Melanggar ketentuan larangan Pasal 5 huruf n angka 2: Memberikan dukungan kepada calon Presiden/Wakil\r\nPresiden, calon Kepala Daerah/Wakil Kepala Daerah, calon anggota Dewan Perwakilan Rakyat, calon anggota Dewan Perwakilan Daerah, atau calon anggota Dewan Perwakilan Rakyat Daerah dengan cara menjadi peserta kampanye dengan menggunakan atribut partai atau atribut PNS.', 50),
('18oOaaKA7', 'pg45zYoYJ', 'HUKUMAN DISIPLIN SEDANG: Pelanggaran terhadap kewajiban Pasal 3 huruf b, apabila pelanggaran berdampak negatif pada Unit Kerja dan/atau instansi yang bersangkutan (Tidak menjaga persatuan dan kesatuan bangsa).', 33),
('1EEykF76e', 'pg45zYoYJ', 'HUKUMAN DISIPLIN RINGAN: Pelanggaran terhadap kewajiban Pasal 4 huruf g, tidak memenuhi ketentuan, dan apabila pelanggaran berdampak negatif pada Unit Kerja (Tidak menggunakan dan memelihara barang milik negara dengan sebaik-baiknya).', 28),
('1FumtypQY', 'OReGjfOFG', 'PEMUTUSAN HUBUNGAN PERJANJIAN KERJA (Pasal 53 ayat 2 huruf b): Pemutusan hubungan perjanjian kerja PPPK dilakukan dengan hormat tidak atas permintaan sendiri karena: (b) melakukan pelanggaran disiplin PPPK tingkat berat.', 70),
('2SacgvKSX', 'pg45zYoYJ', 'HUKUMAN DISIPLIN SEDANG: Pelanggaran terhadap kewajiban Pasal 4 huruf b, tidak memenuhi ketentuan: (Tidak menghadiri dan mengucapkan sumpah/janji  jabatan sebagaimana dimaksud dalam Pasal 4 huruf b, apabila pelanggaran dilakukan tanpa alasan yang sah).', 35),
('321BvY4gS', 'pg45zYoYJ', 'HUKUMAN DISIPLIN SEDANG: Pelanggaran terhadap kewajiban Pasal 4 huruf f, tidak memenuhi ketentuan: (Tidak masuk kerja dan menaati ketentuan jam kerja) berupa: (1). Pemotongan tunjangan kinerja sebesar 25% (dua puluh lima persen) selama 6 (enam) bulan bagi PNS yang tidak Masuk Kerja tanpa alasan yang sah secara kumulatif selama 11 (sebelas) sampai dengan 13 (tiga belas) hari kerja dalam 1 (satu) tahun;', 45),
('3dXvpl6cB', 'pg45zYoYJ', 'HUKUMAN DISIPLIN BERAT: Melanggar ketentuan larangan Pasal 5 huruf a: Menyalahgunakan wewenang.', 60),
('3So10N2uZ', 'pg45zYoYJ', 'HUKUMAN DISIPLIN BERAT: Melanggar ketentuan larangan Pasal 5 huruf k: menerima hadiah yang berhubungan dengan jabatan dan/atau pekerjaan.', 75),
('45ZmzPkFJ', 'pg45zYoYJ', 'HUKUMAN DISIPLIN BERAT: Pelanggaran terhadap kewajiban Pasal 4 huruf f, tidak memenuhi ketentuan: (Tidak masuk kerja dan menaati ketentuan jam kerja) berupa: (3).  Pemberhentian dengan hormat tidak atas permintaan sendiri sebagai PNS bagi PNS yang tidak Masuk Kerja tanpa alasan yang sah secara kumulatif selama 28 (dua puluh delapan) hari kerja atau lebih dalam 1 (satu) tahun; dan', 85),
('47mPZnRJ9', 'pg45zYoYJ', 'HUKUMAN DISIPLIN BERAT: Melanggar ketentuan larangan Pasal 5 huruf g, apabila pelanggaran berdampak negatif pada negara dan/atau pemerintah: Melakukan pungutan di luar ketentuan.', 75),
('4Ju25r1Gu', '4e9XZis0K', 'PEMUTUSAN HUBUNGAN PERJANJIAN KERJA (Pasal 11 ayat 3 huruf a, b dan d): Pemutusan hubungan Perjanjian Kerja tidak dengan hormat dilakukan apabila: (a) melakukan penyelewengan terhadap pancasila dan Undang-Undang Dasar Negara Republik Indonesia Tahun 1945; (b) dihukum penjara atau kurungan berdasarkan putusan pengadilan yang telah memiliki kekuatan hukum tetap karena melakukan tindak pidana kejahatan jabatan atau tindak pidana kejahatan yang ada hubungannya dengan jabatan dan/atau pidana umum; (d) dihukum penjara berdasarkan putusan pengadilan yang telah memiliki kekuatan hukum tetap karena melakukan tindak pidana yang diancam dengan pidana penjara paling singkat 2 (dua) tahun atau lebih dan tindak pidana tersebut dilakukan dengan berencana.', 90),
('4PkzIicY1', 'pg45zYoYJ', 'HUKUMAN DISIPLIN BERAT: Melanggar ketentuan larangan Pasal 5 huruf e: Bekerja pada perusahaan asing, konsultan asing, atau lembaga swadaya masyarakat asing kecuali ditugaskan oleh Pejabat Pembina Kepegawaian.', 75),
('4qre5bVgu', 'hdpyYkbqr', 'PELANGGARAN BERAT: Larangan bagi hakim dalam penerapan berperilaku arif dan bijaksana (Pasal 7 ayat (3) huruf a, d dan i): (a) Hakim dilarang mengadili perkara di mana anggota keluarga hakim yang bersangkutan bertindak mewakili suatu pihak yang berperkara atau sebagai pihak yang mewakili kepentingan dengan perkara tersebut; (d) Hakim dilarang mempergunakan keterangan yang diperolehnya dalam proses peradilan untuk tujuan lain yang tidak terkait dengan wewenang dan tugas yudisialnya; (i) Hakim tidak boleh menjadi pengurus atau anggota partai politik.', 70),
('4vZt1nb2o', 'hdpyYkbqr', 'PELANGGARAN BERAT: Larangan bagi hakim dalam penerapan berperilaku menjunjung harga diri (Pasal 11 ayat (4) huruf b, d dan g): (b) Hakim dilarang menjadi advokat, atau pekerjaan lain yang berhubungan dengan perkara; (d) Hakim dilarang bertindak sebagai arbiter dalam kapasitas pribadi, kecuali bertindak dalam jabatan yang secara tegas diperintahkan atau diperbolehkan dalam undang-undang atau peraturan lain; (g) Hakim dilarang melakukan rangkap jabatan yang ditentukan oleh peraturan perundang-undangan  yang berlaku.', 90),
('5PexYHMat', 'OReGjfOFG', 'PEMUTUSAN HUBUNGAN PERJANJIAN KERJA (Pasal 53 ayat 1 huruf a, b, c, d, dan e): Pemutusan hubungan perjanjian kerja PPPK dilakukan\r\ndengan hormat karena: (a) jangka waktu perjanjian kerja berakhir; (b) meninggal dunia; (c) atas permintaan sendiri; (d) perampingan organisasi atau kebijakan pemerintah yang mengakibatkan pengurangan PPPK; (e) tidak cakap jasmani dan/atau rohani sehingga tidak dapat menjalankan tugas dan kewajiban sesuai perjanjian kerja yang disepakati.', 0),
('5V5W2VpZy', 'hdpyYkbqr', 'PELANGGARAN RINGAN: Pelanggaran terhadap Pasal 13 ayat (1), (2), (3), dan (4)): (1) Berperilaku rendah hati bermakna kesadaran akan keterbatasan kemampuan diri, jauh dari kesempurnaan dan terhindar dari setiap bentuk kenagkuhan; (2) Rendah hati akan mendorong terbentuknya sikap realistis, mau membuka diri untuk terus belajar, menghargai pendapat orang lain, menumbuh kembangkan sikap tenggang rasa, serta mewujudkan kesederhanaan, penuh rasa syukur dan ikhlas di dalam mengemban tugas; (3) Dalam penerapan berperilakiu rendah hati, Hakim harus melaksanakan pekerjaan sebagai sebuah pengabdian yang tulus, pekerjaan hakim bukan semata-mata sebagai mata pencaharian dalam lapangan kerja untuk mendapat penghasilan materi, melainkan sebuah amanat yang akan dipertanggung-jawabkan kepada masyarakat dan Tuhan Yang Maha Esa; (4) Dalam penerapan berperilaku rendah hati, hakim tidak boleh bersikap, bertingkah laku atau melakukan tindakan mencari popularitas, pujian, penghargaan dan sanjungan dari siapapun juga.', 28),
('65hk7aluu', 'pg45zYoYJ', 'HUKUMAN DISIPLIN BERAT: Pelanggaran terhadap kewajiban Pasal 3 huruf f, apabila pelanggaran berdampak negatif pada negara: (Tidak menunjukkan integritas dan keteladanan dalam sikap, perilaku, ucapan, dan tindakan kepada setiap orang, baik di dalam maupun di luar kedinasan).', 65),
('6uBHcxxp7', 'pg45zYoYJ', 'HUKUMAN DISIPLIN BERAT: Pelanggaran terhadap kewajiban Pasal 3 huruf g, apabila pelanggaran berdampak negatif pada negara: (Tidak  menyimpan rahasia jabatan dan hanya dapat mengemukakan rahasia jabatan sesuai dengan ketentuan peraturan perundang-undangan).', 68),
('7Ai3CReru', 'pg45zYoYJ', 'HUKUMAN DISIPLIN RINGAN: Pelanggaran terhadap kewajiban Pasal 4 huruf g, tidak memenuhi ketentuan, dan apabila pelanggaran berdampak negatif pada Unit Kerja (Tidak memberikan kesempatan kepada bawahan untuk mengembangkan kompetensi).', 30),
('7Sc0uCiyo', 'hdpyYkbqr', 'PELANGGARAN SEDANG: Pelanggaran terhadap kewajiban bagi hakim dalam penerapan berperilaku berintegritas tinggi (Pasal 9 ayat (4) huruf b dan g): (b) Hakim harus menghindari hubungan, baik langsung maupun tidak langsung dengan advokat, penuntut dan pihak-pihak dalam suatu perkara tengah diperiksa oleh hakim yang bersasngkutan; (g) apabila muncul keragu-raguan bagi hakim mengenai kewajiban mengundurkan diri, memriksa dan mengadili suatu perkara, wajib meminta pertimbangan Ketua.', 45),
('7viKu9ffX', 'hdpyYkbqr', 'PELANGGARAN RINGAN: Pelanggaran terhadap kewajiban hakim dalam penerapan berperilaku mandiri (Pasal 8 ayat (2) huruf b dan c): (b) Hakim wajib bebas dari hubungan yang tidak patut dengan lembaga eksekutif maupun legislatif serta kelompok lain yang berpotensi mengancam kemandirian (independensi) Hakim dan Badan Peradilan; (c) Hakim wajib berperilaku mandiri guna memperkuat kepercayaan masyarakat terhadap Badan Peradilan.', 13),
('7xb40oDSv', 'hdpyYkbqr', 'PELANGGARAN SEDANG: Larangan bagi hakim dalam penerapan berperilaku berintegritas tinggi (Pasal 9 ayat (5) huruf a, d dan j): (a) Hakim tidak boleh mengadili suatu perkara apabila memiliki konflik kepentingan, baik karena hubungan pribadi dan kekeluargaan, atau hubungan lain yang beralasan (reasonable) patut diduga mengandung konflik kepentingan; (d) Hakim dilarang mengadili suatu perkara apabila hakim itu memiliki hubungan pertemanan yang akrab dengan pihak yang berperkara, penuntut, advokat, yang menangani perkara tersebut; (j) Hakim dilarang menggunakan wibawa jabatan sebagai hakim untuk mengejar kepentingan pribadi, anggota keluarga atau siapapun juga dalam hubungan finansial.', 50),
('9SzhGmhAn', 'hdpyYkbqr', 'PELANGGARAN BERAT: Pelanggaran terhadap kewajiban bagi hakim dalam penerapan berperilaku berintegritas tinggi (Pasal 9 ayat (4) huruf a dan f): (a) Hakim harus berperilaku tidak tercela; (f) Hakim yang memiliki konflik kepentingan sebagaimana diatur dalam Pasal 9 ayat (5) huruf c dan huruf d wajib mengundurkan diri dari memeriksa dan mengadili perkara yang bersangkutan. Keputusan untuk mengundurkan diri harus dibuat seawal mungkin untuk mengurangi dampak negatif yang mungkin timbul terhadap lembaga peradilan atau persangkaan bahwa pengadilan tidak dijalankan secara jujur dan tidak berpihak.', 75),
('Acm1EdF3F', 'pg45zYoYJ', 'HUKUMAN DISIPLIN BERAT: Pelanggaran terhadap kewajiban Pasal 4 huruf d, tidak memenuhi ketentuan, dan apabila pelanggaran berdampak negatif pada negara dan/atau pemerintah: (Tidak melaporkan dengan segera kepada atasannya apabila mengetahui ada hal yang dapat membahayakan keamanan negara atau merugikan keuangan negara).', 75),
('AqhKGiWYQ', 'pg45zYoYJ', 'HUKUMAN DISIPLIN SEDANG: Pelanggaran terhadap kewajiban Pasal 3 huruf f, apabila pelanggaran berdampak negatif pada instansi yang bersangkutan (Tidak menunjukkan integritas dan keteladanan dalam sikap, perilaku, ucapan, dan tindakan kepada setiap orang, baik di dalam maupun di luar kedinasan).', 43),
('b7lfZYsex', 'OReGjfOFG', 'PEMUTUSAN HUBUNGAN PERJANJIAN KERJA (Pasal 53 ayat 3 huruf a, b, dan e): Pemutusan hubungan perjanjian kerja PPPK dilakukan tidak dengan hormat karena: (a) melakukan penyelewengan terhadap pancasila dan Undang-Undang Dasar Negara Republik Indonesia Tahun 1945; (b) dihukum penjara atau kurungan berdasarkan putusan pengadilan yang telah memiliki kekuatan hukum tetap karena melakukan tindak pidana kejahatan jabatan atau tindak pidana kejahatan yang ada hubungannya dengan jabatan dan/atau pidana umum; (d) dihukum penjara berdasarkan putusan pengadilan yang telah memiliki kekuatan hukum tetap karena melakukan tindak pidana yang diancam dengan pidana penjara paling singkat 2 (dua) tahun atau lebih dan tindak pidana tersebut dilakukan dengan berencana.', 90),
('BaabVQMOc', 'hdpyYkbqr', 'PELANGGARAN BERAT: Larangan bagi hakim dalam penerapan berperilaku adil (Pasal 5 ayat (3) huruf b, c dan d): (b) Hakim dalam menjalankan tugas yudisialnya dilarang menunjukkan rasa suka atau tidak suka, keberpihakan, prasangka, atau pelecehan terhadap suatu ras, jenis kelamin, agama, asal kebangsaan, perbedaan kemampuan fisik atau mental, usia, atau status sosial ekonomi maupun atas dasar kedekatan hubungan dengan pencari keadilan atau pihak-pihak yang terlibat dalam proses peradilan baik melalui perkataan maupun tindakan; (c) Hakim dilarang bersikap, mengeluarkan perkataan atau melakukan tindakan lain yang dapat menimbulkan kesan memihak, berprasangka, mengancam, atau menyudutkan para pihak atau kuasanya, atau saksi-saksi, dan harus pula menerapkan standar perilaku yang sama bagi advokat, penuntut, pegawai pengadilan atau pihak lain yang tunduk pada arahan dan pengawasan hakim yang bersangkutan; (d) Hakim dilarang menyuruh/mengizinkan pegawai pengadilan atau pihak-pihak lain untuk mempengaruhi, mengarahkan, atau mengontrol jalnnya sidang, sehingga menimbulkan perbedaan perlakuan terhadap para pihak yang terkait dengan perkara.', 65),
('BJqxBzNlG', 'u0rgkCKIz', 'HUKUMAN DISIPLIN RINGAN: Pelanggaran terhadap Larangan (Huruf J angka 3 huruf b (angka 2): (2) menjadi perantara untuk mendapatkan keuntungan pribadi dan/atau orang lain dengan menggunakan kewenangan orang lain;', 30),
('BKRMbwlKN', 'pg45zYoYJ', 'HUKUMAN DISIPLIN SEDANG: Pelanggaran terhadap kewajiban Pasal 4 huruf e, tidak memenuhi ketentuan: (Tidak melaporkan harta kekayaan kepada pejabat yang berwenang sesuai dengan ketentuan peraturan perundang-undangan sebagaimana dimaksud dalam Pasal 4 huruf e yang dilakukan pejabat administrator dan pejabat fungsional).', 43),
('bpgzuwMW5', 'pg45zYoYJ', 'HUKUMAN DISIPLIN RINGAN: Pelanggaran terhadap kewajiban Pasal 4 huruf c, tidak memenuhi ketentuan, dan apabila pelanggaran berdampak negatif pada Unit Kerja (Tidak mengutamakan kepentingan negara daripada kepentingan pribadi, seseorang, dan/atau golongan).', 18),
('bzN3Ryyzy', '4e9XZis0K', 'PEMUTUSAN HUBUNGAN PERJANJIAN KERJA (Pasal 11 ayat 2 huruf c): Pemutusan hubungan Perjanjian Kerja dengan hormat tidak atas permintaan sendiri dilakukan apabila: (c) Pihak Kedua tidak dapat memenuhi target kinerja yang telah disepakati sesuai dengan Perjanjian Kerja.', 65),
('CeSVpVIzq', 'pg45zYoYJ', 'HUKUMAN DISIPLIN RINGAN:  Melanggar ketentuan larangan Pasal 5 huruf f,  apabila pelanggaran berdampak negatif pada Unit Kerja: Memiliki, menjual, membeli, menggadaikan, menyewakan, atau meminjamkan barang baik bergerak atau tidak bergerak, dokumen, atau surat berharga milik negara secara tidak sah.', 15),
('cnqAwQckG', 'pg45zYoYJ', 'Pasal 15 ayat 2:  PNS yang tidak Masuk Kerja dan tidak menaati ketentuan jam kerja tanpa alasan yang sah secara terus menerus selama 10 (sepuluh) hari kerja sebagaimana dimaksud dalam Pasal 11 ayat (2) huruf d angka 4 diberhentikan pembayaran gajinya sejak bulan berikutnya.', 0),
('CqVmyuqdH', 'pg45zYoYJ', 'HUKUMAN DISIPLIN RINGAN: Pelanggaran terhadap kewajiban Pasal 4 huruf f, tidak memenuhi ketentuan, dan apabila pelanggaran berdampak negatif pada Unit Kerja (Tidak masuk kerja dan menaati ketentuan jam kerja) berupa: (2). Teguran tertulis bagi PNS yang tidak masuk kerja tanpa alasan yang sah secara kumulatif selama 4 (empat) sampai dengan 6 (enam) hari kerja dalam 1 (satu) tahun; dan', 23),
('d630DyYeL', 'pg45zYoYJ', 'HUKUMAN DISIPLIN BERAT: Melanggar ketentuan larangan Pasal 5 huruf f, apabila pelanggaran berdampak negatif pada negara dan/atau pemerintah: Memiliki, menjual, membeli, menggadaikan, menyewakan, atau meminjamkan barang baik bergerak atau tidak bergerak, dokumen, atau surat berharga milik negara secara tidak sah.', 75),
('DHXAr6kQr', 'pg45zYoYJ', 'HUKUMAN DISIPLIN BERAT: Pelanggaran terhadap kewajiban Pasal 3 huruf c, apabila pelanggaran berdampak negatif pada negara: (Tidak melaksanakan kebijakan yang ditetapkan oleh pejabat pemerintah yang berwenang).', 58),
('DIyARoYaw', 'pg45zYoYJ', 'HUKUMAN DISIPLIN RINGAN: Pelanggaran terhadap kewajiban Pasal 3 huruf c, apabila pelanggaran berdampak negatif pada Unit Kerja (Tidak melaksanakan kebijakan yang ditetapkan oleh pejabat pemerintah yang berwenang).\r\n', 3),
('dR1vp2KJg', 'pg45zYoYJ', 'HUKUMAN DISIPLIN RINGAN: Pelanggaran terhadap kewajiban Pasal 3 huruf d, apabila pelanggaran berdampak negatif pada Unit Kerja (Tidak menaati ketentuan peraturan perundang-undangan).', 5),
('DtbHBALHj', 'pg45zYoYJ', 'HUKUMAN DISIPLIN BERAT: Melanggar ketentuan larangan Pasal 5 huruf b: Menjadi perantara untuk mendapatkan keuntungan pribadi dan/atau orang lain dengan menggunakan kewenangan orang lain yang diduga terjadi konflik kepentingan dengan jabatan.', 70),
('dWwEI60e9', 'hdpyYkbqr', 'PELANGGARAN SEDANG: Larangan bagi hakim dalam penerapan berperilaku arif dan bijaksana (Pasal 7 ayat (3) huruf b, e, f dan j): (b) Hakim dilarang mengizinkan tempat kediamannya digunakan oleh seorang anggota suatu profesi hukum untuk menerima klien atau menerima anggota-anggota lainnya dari profesi hukum tersebut; (e) Hakim dilarang mengeluarkan pernyataan kepada masyarakat yang dapat mempengaruhi, menghambat atau mengganggu berlangsungnya proses peradilan yang adil, independen, dan tidak memihak; (f) Hakim tidak boleh memberi keterangan atau pendapat mengenai substansi suatu perkara di luar proses persidangan pengadilan, baik terhadap perkara yang diperiksa atau diputusnya maupun perkara lain; (j) Hakim tidak boleh secara terbuka menyatakan dukungan terhadap salah satu partai politik.', 40),
('dxx2yIX5p', 'pg45zYoYJ', 'HUKUMAN DISIPLIN BERAT: Pelanggaran terhadap kewajiban Pasal 4 huruf f, tidak memenuhi ketentuan: (Tidak masuk kerja dan menaati ketentuan jam kerja) berupa: (2).  Pembebasan dari jabatannya menjadi jabatan pelaksana selama 12 (dua belas) bulan bagi PNS yang tidak Masuk Kerja tanpa alasan yang sah secara kumulatif selama 25 (dua puluh lima) sampai dengan 27 (dua puluh tujuh) hari kerja dalam 1 (satu) tahun;', 83),
('e6ycEHdfs', 'OReGjfOFG', 'PEMUTUSAN HUBUNGAN PERJANJIAN KERJA (Pasal 53 ayat 2 huruf c): Pemutusan hubungan perjanjian kerja PPPK dilakukan dengan hormat tidak atas permintaan sendiri karena: (c) tidak memenuhi target kinerja yang telah disepakati sesuai dengan perjanjian kerja.', 65),
('eowxFru2I', 'OReGjfOFG', 'PEMUTUSAN HUBUNGAN PERJANJIAN KERJA (Pasal 53 ayat 2 huruf ac):  Pemutusan hubungan perjanjian kerja PPPK dilakukan dengan hormat tidak atas permintaan sendiri karena: (a)  dihukum penjara berdasarkan putusan pengadilan yang telah memperoleh kekuatan hukum tetap karena melakukan tindak pidana dengan pidana penjara paling singkat 2 (dua) tahun dan tindak pidana tersebut dilakukan dengan tidak berencana.', 80),
('EzvX0yMQ5', 'hdpyYkbqr', 'PELANGGARAN BERAT: Pelanggaran terhadap kewajiban bagi hakim dalam penerapan berperilaku bertanggung jawab (Pasal 10 ayat (2) huruf a dan b): (a) Hakim dilarang menyalahgunakan jabatan untuk kepentingan pribadi, keluarga atau pihak lain; (b) Hakim dilarang mengungkapkan atau menggunakan informasi yang bersifat rahasia, yang didapat dalam kedudukan sebagai hakim, untuk tujuan yang tidak ada hubungan dengan tugas-tugas peradilan.', 80),
('fchEbNHoH', 'hdpyYkbqr', 'PELANGGARAN SEDANG: Larangan bagi hakim dalam penerapan berperilaku adil (Pasal 5 ayat (3) huruf a dan e): (a) Hakim dilarang memberikan kesan bahwa salah satu pihak yang tengah berperkara atau kuasanya termasuk penuntut dan saksi berada dalam posisi yang istimewa untuk mempengaruhi hakim yang bersangkutan; (e) Hakim tidak boleh berkomunikasi dengan pihak yang berperkara di luar persidangan, kecuali dilakukan dalam lingkungan gedung pengadilan demi kepentingan kelancaran persidangan yang dilakukan secara terbuka, diketahui pihak-pihak yang berperkara, tidak melanggar prinsip persamaan perlakuan dan ketidak berpihakan.', 30),
('FMUAxyNbh', 'hdpyYkbqr', 'PELANGGARAN RINGAN: Pelanggaran terhadap kewajiban hakim dalam penerapan berperilaku arif  dan bijaksana (Pasal 7 ayat (2) huruf a, b dan c): (a) Hakim wajib menghindari tindakan tercela; (b) Hakim, dalam hubungan pribadinya dengan anggota profesi hukum lain yang secara teratur beracara di pengadilan, wajib menghindari situasi yang dapat meiingbulkan kecurigaan atau sikap keberpihakan; (c) Hakim dalam menjalankan tugas-tugas yudisialnya wajib terbebas dari pengaruh keluarga dan pihak ketiga lainnya.', 8),
('GOBsyBAYr', 'pg45zYoYJ', 'HUKUMAN DISIPLIN SEDANG: Pelanggaran terhadap kewajiban Pasal 3 huruf g, apabila pelanggaran berdampak negatif pada instansi yang bersangkutan (Tidak menyimpan rahasia jabatan dan hanya dapat mengemukakan rahasia jabatan sesuai dengan ketentuan peraturan perundang-undangan).', 45),
('h9EyBW342', 'pg45zYoYJ', 'HUKUMAN DISIPLIN BERAT: Pelanggaran terhadap kewajiban Pasal 4 huruf f, tidak memenuhi ketentuan: (Tidak masuk kerja dan menaati ketentuan jam kerja) berupa: (4).  Pemberhentian dengan hormat tidak atas permintaan sendiri sebagai PNS bagi PNS yang tidak Masuk Kerja tanpa alasan yang sah secara terus menerus selama 10 (sepuluh) hari kerja.', 88),
('hdrSvHmAJ', 'pg45zYoYJ', 'HUKUMAN DISIPLIN RINGAN: Pelanggaran terhadap kewajiban Pasal 4 huruf f, tidak memenuhi ketentuan, dan apabila pelanggaran berdampak negatif pada Unit Kerja (Tidak masuk kerja dan menaati ketentuan jam kerja) berupa: (3).pernyataan tidak puas secara tertulis bagi PNS yang tidak masuk kerja tanpa alasan yang sah secara kumulatif selama 7 (tujuh) sampai dengan 10 (sepuluh) hari kerja dalam 1 (satu) tahun.', 25),
('hKaDG15yJ', 'pg45zYoYJ', 'HUKUMAN DISIPLIN SEDANG: Melanggar ketentuan larangan Pasal 5 huruf f, apabila pelanggaran berdampak negatif pada instansi yang bersangkutan: Memiliki, menjual, membeli, menggadaikan, menyewakan, atau meminjamkan barang baik bergerak atau tidak bergerak, dokumen, atau surat berharga milik negara secara tidak sah.', 40),
('hlkroLIRz', 'hdpyYkbqr', 'PELANGGARAN RINGAN: Pelanggaran terhadap kewajiban hakim dalam berperilaku jujur (Pasal 6 ayat (2) huruf b dan c): (b) Hakim harus berperilaku jujur (fair) dan menghindari perbuatan yang dapat menimbulkan kesan tercela; (c) Hakim harus memastikan bahwa sikap, tingkah laku dan tindakannya, baik di dalam maupun di luar pengadilan, selalu menjaga dan meningkatkan kepercayaan masyarakat, penegak hukum lain serta para pihak berperkara, sehingga tercermin sikap ketidakberpihakan hakim dan lembaga peradilan (impartiality).', 5),
('HSB5gVX3C', 'hdpyYkbqr', 'PELANGGARAN SEDANG: Pelanggaran terhadap kewajiban bagi hakim dalam penerapan berperilaku menjunjung harga diri (Pasal 11 ayat (3) huruf b): (b) Hakim wajib menganjurkan agar anggota keluarganya tidak ikut dalam kegiatan yang dapat mengeksploitasi jabatan hakim tersebut.', 55),
('Huu78cPNY', 'pg45zYoYJ', 'HUKUMAN DISIPLIN RINGAN: Pelanggaran terhadap kewajiban Pasal 4 huruf f, tidak memenuhi ketentuan, dan apabila pelanggaran berdampak negatif pada Unit Kerja (Tidak masuk kerja dan menaati ketentuan jam kerja) berupa: (1). Teguran lisan bagi PNS yang tidak masuk kerja tanpa alasan yang sah secara kumulatif selama 3 (tiga) hari keda dalam 1 (satu) tahun; ', 20),
('hWoSasarH', 'u0rgkCKIz', 'HUKUMAN DISIPLIN BERAT: Pelanggaran terhadap kewajiban (Huruf J angka 3 huruf a (angka 1 dan 4): (1) setia dan taat sepenuhnya kepada Pancasila, Undang-Undang Dasar Negara Republik Indonesia Tahun 1945, Negara Kesatuan Republik Indonesia, dan Pemerintah; (4) menjunjung tinggi kehormatan negara, pemerintah, dan martabat satuan kerja.', 90),
('hyayuVHEF', 'pg45zYoYJ', 'HUKUMAN DISIPLIN BERAT: Pelanggaran terhadap kewajiban Pasal 3 huruf e, apabila pelanggaran berdampak negatif pada negara: (Tidak  melaksanakan tugas kedinasan dengan penuh pengabdian, kejujuran, kesadaran, dan tanggung jawab).', 63),
('ihJ1elz4x', 'pg45zYoYJ', 'HUKUMAN DISIPLIN SEDANG: Melanggar ketentuan larangan Pasal 5 huruf h, apabila pelanggaran berdampak negatif pada instansi yang bersangkutan: Melakukan kegiatan yang merugikan negara.', 45),
('IUhVxwMg5', 'pg45zYoYJ', 'HUKUMAN DISIPLIN SEDANG: Pelanggaran terhadap kewajiban Pasal 3 huruf h, apabila pelanggaran berdampak negatif pada instansi yang bersangkutan (Tidak bersedia ditempatkan di seluruh wilayah Negara Kesatuan Republik Indonesia).', 48),
('IXfPZD4Ut', 'pg45zYoYJ', 'HUKUMAN DISIPLIN RINGAN: Melanggar ketentuan larangan Pasal 5 huruf i, apabila pelanggaran berdampak negatif pada Unit Kerja:  Bertindak sewenang-wenang terhadap bawahan.', 25),
('juxWfBWvq', 'hdpyYkbqr', 'PELANGGARAN RINGAN: Larangan bagi hakim dalam penerapan berperilaku berintegritas tinggi (Pasal 9 ayat (5) huruf g, h, k, l dan m): (g) Hakim dilarang mengijinkan seseorang yang akan menimbulkan kesan bahwa orang tersebut seakan-akan berada dalam posisi khusus yang dapat mempengaruhi hakim secara tidak wajar dalam melaksanakan tugas-tugas peradilan; (h) Hakim dilarang mengadili suatu perkara yang salah satu pihaknya adalah organisasi atau kelompok masyarakat apabila hakim tersebut masih atau pernah aktif dalam organisasi atau kelompok masyarakat tersebut; (k) Hakim dilarang mengijinkan pihak lain yang akan menimbulkan kesan bahwa seseorang seakan-akan berada dalam posisi khusus yang dapat memperoleh keuntungan finansial; (l) Hakim dilarang mengadili suatu perkara apabila hakim tersebut telah memiliki prasangka yang berkaitan dengan salah satu pihak atau mengetahui fakta atau bukti yang berkaitan dengan suatu perkara yang akan disidangkan; (m) Hakim dilarang menerima janji, hadiah, hibah, pemberian, pinjaman, atau manfaat lainnya, khususnya yang bersifat rutin atau terus menerus dari Pemerintah Daerah, walau pemberian tersebut tidak mempengaruhi pelaksanaan tugas-tugas yudisial.', 20),
('JyvlZsqzM', 'pg45zYoYJ', 'HUKUMAN DISIPLIN RINGAN: Pelanggaran terhadap kewajiban Pasal 3 huruf f, apabila pelanggaran berdampak negatif pada Unit Kerja (Tidak menunjukkan integritas dan keteladanan dalam sikap, perilaku, ucapan, dan tindakan kepada setiap orang, baik di dalam maupun di luar kedinasan).', 10),
('kKbCbnpuz', 'pg45zYoYJ', 'HUKUMAN DISIPLIN SEDANG: Melanggar ketentuan larangan Pasal 5 huruf m, apabila pelanggaran berdampak negatif pada instansi yang bersangkutan: Melakukan tindakan atau tidak melakukan tindakan yang dapat mengakibatkan kerugian bagi yang dilayani.', 45),
('kldwsEpig', 'pg45zYoYJ', 'HUKUMAN DISIPLIN SEDANG: Pelanggaran terhadap kewajiban Pasal 3 huruf e, apabila pelanggaran berdampak negatif pada instansi yang bersangkutan (Tidak melaksanakan tugas kedinasan dengan penuh pengabdian, kejujuran, kesadaran, dan tanggung).', 40),
('KOh0m4edO', 'pg45zYoYJ', 'HUKUMAN DISIPLIN BERAT: Melanggar ketentuan larangan Pasal 5 huruf n angka 3, angka 4, angka 5, angka 6 dan angka 7, dengan cara: (1). Sebagai peserta kampanye dengan mengerahkan PNS lain; (2). Sebagai peserta kampanye dengan menggunakan fasilitas negara; (3). Membuat keputusan dan/atau tindakan yang menguntungkan atau merugikan salah satu pasangan calon sebelum, selama, dan sesudah masa kampanye; (4). Mengadakan kegiatan yang mengarah kepada keberpihakan terhadap pasangan calon yang menjadi peserta pemilu sebelum, selama, dan sesudah masa kampanye meliputi pertemuan, ajakan, himbauan, seruan, atau pemberian barang kepada PNS dalam lingkungan unit kerjanya, anggota keluarga, dan masyarakat; dan/atau, (5). memberikan surat dukungan disertai fotokopi Kartu Tanda Penduduk atau Surat Keterangan Tanda Penduduk.', 75),
('lh2Px6I4Y', 'pg45zYoYJ', 'HUKUMAN DISIPLIN RINGAN: Melanggar ketentuan larangan Pasal 5 huruf j, apabila pelanggaran berdampak negatif pada Unit Kerja: Menghalangi berjalannya tugas kedinasan.', 30),
('llDn2oHLQ', 'pg45zYoYJ', 'HUKUMAN DISIPLIN BERAT: Pelanggaran terhadap kewajiban Pasal 3 huruf d, apabila pelanggaran berdampak negatif pada negara: (Tidak  menaati ketentuan peraturan perundang-undangan).', 60),
('LnRAtCF5d', 'pg45zYoYJ', 'HUKUMAN DISIPLIN BERAT: Pelanggaran terhadap kewajiban Pasal 3 huruf h, apabila pelanggaran berdampak negatif pada negara: (Tidak \r\n bersedia ditempatkan di seluruh wilayah Negara Kesatuan Republik Indonesia).', 70),
('lUvuZ2eRo', '4e9XZis0K', 'PEMUTUSAN HUBUNGAN PERJANJIAN KERJA (Pasal 11 ayat 3 huruf c): Pemutusan hubungan Perjanjian Kerja tidak dengan hormat dilakukan apabila: (c) menjadi anggota dan/atau pengurus partai politik.', 85),
('m0SGycEgO', 'OReGjfOFG', 'Sanksi Disiplin Pegawai Pemerintah dengan Perjanjian Kerja (PPPK) dilaksanakan sesuai dengan ketentuan peraturan perundang-undangan yang mengatur mengenai Disiplin Pegawai Negeri Sipil (Pasal 52 ayat 3).', 0),
('mcmSQuO2q', 'pg45zYoYJ', 'HUKUMAN DISIPLIN SEDANG: Melanggar ketentuan larangan Pasal 5 huruf j, apabila pelanggaran berdampak negatif pada instansi yang bersangkutan: Menghalangi berjalannya tugas kedinasan.', 45),
('Mh8wRzcur', 'pg45zYoYJ', 'HUKUMAN DISIPLIN BERAT: Melanggar ketentuan larangan Pasal 5 huruf l: Meminta sesuatu yang berhubungan dengan jabatan.', 75),
('mPcOFjFgA', 'pg45zYoYJ', 'HUKUMAN DISIPLIN RINGAN: Melanggar ketentuan larangan Pasal 5 huruf h, apabila pelanggaran berdampak negatif pada Unit Kerja: Melakukan kegiatan yang merugikan negara.', 20),
('MzAOq3P23', 'pg45zYoYJ', 'HUKUMAN DISIPLIN BERAT: Pelanggaran terhadap kewajiban Pasal 3 huruf b, apabila pelanggaran berdampak negatif pada negara: (Tidak menjaga persatuan dan kesatuan bangsa).', 55),
('novauYmRO', 'hdpyYkbqr', 'PELANGGARAN BERAT: Pelanggaran terhadap kewajiban bagi hakim dalam penerapan berperilaku adil (Pasal 5 ayat (2) huruf a, b, c, d, e, dan f): (a) Hakim wajib melaksanakan tugas-tugas hukumnya dengan menghormati asas praduga tak bersalah, tanpa mengharapkan imbalan; (b) Hakim wajib tidak memihak, baik di dalam maupun di luar pengadilan, dan tetap menjaga serta menumbuhkan kepercayaan masyarakat pencari keadilan; (c) Hakim wajib menghindari hal-hal yang dapat mengakibatkan pencabutan haknya untuk mengadili perkara yang bersangkutan; (d) Hakim dalam suatu proses persidangan wajib meminta kepada semua pihak yang terlibat proses persidangan untuk tidak menunjukkan rasa suka atau tidak suka, keberpihakan, prasangka, atau pelecehan terhadap suatu ras, jenis kelamin, agama, asal kebangsaan, perbedaan kemampuan fisik atau mental, usia, atau status sosial ekonomi maupun atas dasar kedekatan hubungan dengan pencari keadilan atau pihak-pihak yang terlibat dalam proses peradilan baik melalui perkataan maupun tindakan; (e) Hakim harus memberikan keadilan kepada semua pihak dan tidak beritikad semata-mata untuk menghukum; (f) Hakim harus memberikan kesempatan yang sama kepada setiap orang khususnya pencari keadilan atau kuasanya yang mempunyai kepentingan dalam suatu proses hukum di Pengadilan.', 63),
('o6ix46snK', 'u0rgkCKIz', 'HUKUMAN DISIPLIN BERAT: Pelanggaran terhadap Larangan (Huruf J angka 3 huruf b (angka 3, 4, 6, 7 dan 10): (1) menyalahgunakan wewenang; (3) memiliki, menjual, membeli, menggadaikan, menyewakan, atau meminjamkan barang-barang baik bergerak atau tidak bergerak, surat berharga milik negara secara tidak sah; (4) melakukan kegiatan bersama dengan atasan, teman sejawat, atau orang lain di dalam maupun di luar lingkungan kerjanya dengan tujuan keuntungan pribadi, golongan, atau pihak lain, yang secara langsung atau tidak langsung merugikan negara; (6) membocorkan rahasia jabatan dan dokumen negara; (7) bekerja rangkap di instansi lain pada jam kerja yang disepakati; (10) melakukan perbuatan pidana.', 80),
('Oa5NPVEbe', 'hdpyYkbqr', 'PELANGGARAN BERAT: Pelanggaran terhadap kewajiban bagi hakim dalam penerapan berperilaku menjunjung harga diri (Pasal 11 ayat (3) huruf a): (a) Hakim harus menjaga kewibawaan serta martabat lembaga peradilan dan profesi baik di dalam maupun di luar pengadilan.', 85),
('PNEauuvVm', 'hdpyYkbqr', 'PELANGGARAN SEDANG: Larangan bagi hakim dalam penerapan berperilaku menjunjung harga diri (Pasal 11 ayat (4) huruf c): (c) Hakim dilarang bekerja dn menjalankan fungsi sebagai layaknya seorang advokat, kecuali jika: 1). hakim tersebut menjadi pihak di persidangan; 2). memberikan nasihat hukum cuma-cuma untuk anggota keluarga atau teman sesama hakim yang tengah menghadapi masalah hukum.', 60),
('poKRcImFy', 'pg45zYoYJ', 'HUKUMAN DISIPLIN BERAT: Pelanggaran terhadap kewajiban Pasal 3 huruf a, apabila pelanggaran berdampak negatif pada Unit Kerja, instansi, dan/atau negara: (Tidak setia dan taat sepenuhnya kepada Pancasila, Undang-Undang Dasar Negara Republik Indonesia Tahun 1945, Negara Kesatuan Republik Indonesia, dan Pemerintah).', 53),
('pp81KlfoY', 'u0rgkCKIz', 'HUKUMAN DISIPLIN SEDANG: Pelanggaran terhadap kewajiban (Huruf J angka 3 huruf a (angka 2): (2) menaati segala ketentuan peraturan perundang-undangan. ', 45),
('PWEzShp5Y', 'pg45zYoYJ', 'HUKUMAN DISIPLIN RINGAN: Pelanggaran terhadap kewajiban Pasal 3 huruf h, apabila pelanggaran berdampak negatif pada Unit Kerja (Tidak bersedia ditempatkan di seluruh wilayah Negara Kesatuan Republik Indonesia).', 15),
('q7MhyuZwO', 'pg45zYoYJ', 'HUKUMAN DISIPLIN SEDANG: Pelanggaran terhadap kewajiban Pasal 4 huruf a, tidak memenuhi ketentuan: (Tidak menghadiri dan mengucapkan sumpah/janji PNS sebagaimana dimaksud dalam Pasal 4 huruf a, apabila pelanggaran dilakukan tanpa alasan yang sah).', 33),
('qDBhsQ9C4', 'pg45zYoYJ', 'HUKUMAN DISIPLIN SEDANG: Pelanggaran terhadap kewajiban Pasal 4 huruf f, tidak memenuhi ketentuan: (Tidak masuk kerja dan menaati ketentuan jam kerja) berupa: (2). Pemotongan tunjangan kineda sebesar 25% (dua puluh lima persen) selama 9 (sembilan) bulan bagi PNS yang tidak Masuk Kerja tanpa alasan yang sah secara kumulatif selama 14 (empat belas) sampai dengan 16 (enam belas) hari keda dalam 1 (satu) tahun; dan;', 48),
('Qlz8P6LRE', '4e9XZis0K', 'PEMUTUSAN HUBUNGAN PERJANJIAN KERJA (Pasal 11 ayat 2 huruf a): Pemutusan hubungan Perjanjian Kerja dengan hormat tidak atas permintaan sendiri dilakukan apabila: (a) Pihak Kedua dihukum penjara berdasarkan putusan pengadilan yang telah memperoleh kekuatan hukum tetap karena melakukan tindak pidana dengan pidana penjara paling singkat 2 (dua) tahun dan tindak pidana tersebut dilakukan dengan tidak berencana.', 80),
('qWI73f32k', '4e9XZis0K', 'PEMUTUSAN HUBUNGAN PERJANJIAN KERJA (Pasal 11 ayat 2 huruf b): Pemutusan hubungan Perjanjian Kerja dengan hormat tidak atas permintaan sendiri dilakukan apabila: (b) Pihak Kedua melakukan pelanggaran kewajiban dan/atau larangan sebagaimana dimaksud dalam Pasal 5.', 70),
('qyGhIN8rV', 'pg45zYoYJ', 'HUKUMAN DISIPLIN SEDANG: Melanggar ketentuan larangan Pasal 5 huruf g, apabila pelanggaran berdampak negatif pada Unit Kerja  dan/atau instansi yang bersangkutan: melakukan pungutan di luar ketentuan.', 45),
('RREkhto28', 'pg45zYoYJ', 'HUKUMAN DISIPLIN SEDANG: Pelanggaran terhadap kewajiban Pasal 3 huruf c, apabila pelanggaran berdampak negatif pada instansi yang bersangkutan (Tidak melaksanakan kebijakan yang ditetapkan oleh pejabat pemerintah yang berwenang).', 35),
('rRxCKoeVC', 'pg45zYoYJ', 'HUKUMAN DISIPLIN SEDANG: Melanggar ketentuan larangan Pasal 5 huruf i, apabila pelanggaran berdampak negatif pada instansi yang bersangkutan: Bertindak sewenang-wenang terhadap bawahan.', 45),
('sb78BSnS0', 'pg45zYoYJ', 'HUKUMAN DISIPLIN BERAT: Pelanggaran terhadap kewajiban Pasal 4 huruf c, tidak memenuhi ketentuan, dan apabila pelanggaran berdampak negatif pada negara dan/atau pemerintah: (Tidak  mengutamakan kepentingan negara daripada kepentingan pribadi, seseorang, dan/atau golongan).', 73),
('SmI8WYK6M', '4e9XZis0K', 'PEMUTUSAN HUBUNGAN PERJANJIAN KERJA (Pasal 11 ayat 1 huruf a, b, c, dan d): Pemutusan hubungan Perjanjian Kerja dengan hormat dilakukan apabila: (a) jangka waktu Perjanjian Kerja berakhir; (b) Pihak Kedua meninggal dunia; (c) Pihak Kedua mengajukan permohonan berhenti sebagai PPPK; (d) terjadi perampingan organisasi atau kebijakan pemerintah yang mengakibatkan pengurangan PPPK pada Pihak Kesatu.', 0),
('So9gOyis7', 'pg45zYoYJ', 'HUKUMAN DISIPLIN SEDANG: Pelanggaran terhadap kewajiban Pasal 4 huruf g, tidak memenuhi ketentuan, dan apabila pelanggaran berdampak negatif pada instansi yang bersangkutan: (Tidak menggunakan dan memelihara barang milik negara dengan sebaik-baiknya).', 48),
('sPKmgd36d', 'pg45zYoYJ', 'HUKUMAN DISIPLIN BERAT: Pelanggaran terhadap kewajiban Pasal 4 huruf f, tidak memenuhi ketentuan: (Tidak masuk kerja dan menaati ketentuan jam kerja) berupa: (1).  Penurunan jabatan setingkat lebih rendah selama 12 (dua belas) bulan bagi PNS yang tidak Masuk Kerja tanpa alasan yang sah secara kumulatif selama 21 (dua puluh satu) sampai dengan 24 (dua puluh empat) hari kerja dalam 1 (satu) tahun;', 80),
('spNAdvV4S', 'pg45zYoYJ', 'HUKUMAN DISIPLIN SEDANG: Pelanggaran terhadap kewajiban Pasal 4 huruf f, tidak memenuhi ketentuan: (Tidak masuk kerja dan menaati ketentuan jam kerja) berupa: (3). Pemotongan tunjangan kinerja sebesar 25% (dua puluh lima persen) selama 12 (dua belas) bulan bagi PNS yang tidak Masuk Kerja tanpa alasan yang sah secara kumulatif selama 17 (tujuh belas) sampai dengan 20 (dua puluh) hari kerja dalam 1 (satu) tahun.', 50),
('Szmy90eq9', 'hdpyYkbqr', 'PELANGGARAN SEDANG: Larangan bagi hakim dalam berperilaku jujur (Pasal 6 ayat (3) huruf a dan b): (a) Hakim tidak boleh meminta/menerima dan harus mencegah suami atau istri hakim, orang tua, anak atau anggota keluarga hakim lainnya, untuk meminta atau menerima janji, hadiah, hibah, warisan, pemberian, penghargaan dan pinjaman atau fasilitas dari: 1). advokat; 2). penuntut; 3). orang yang sedang diadili; 4). pihak lain yang kemungkinan kuat akan diadili; 5). pihak yang memiliki kepentingan baik langsung maupun tidak langsung terhadap suatu perkara yang sedang diadili atau kemungkinan kuat akan diadili oleh hakim yang bersangkutan yang secara wajar (reasonable) patut dianggap bertujuan atau mengandung maksud untuk mempengaruhi Hakim dalam menjalankan tugas peradilannya; (b) Hakim dilarang menyuruh/mengizinkan pegawai pengadilan atau pihak lain yang di bawah pengaruh, petunjuk atau kewenangan hakim yang bersangkutan untuk meminta atau menerima hadiah, hibah, warisan, pemberian, pinjaman, atau bantuan apapun sehubungan dengan segala hal yang dilakukan atau akan dilakukan atau tidak dilakukan oleh hakim yang bersangkutan berkaitan dengan tugas atau fungsinya dari: 1). advokat; 2). penuntut; 3). orang yang sedang diadili; 4). pihak lain yang kemungkinan kuat akan diadili; 5). pihak yang memiliki kepentingan baik langsung maupun tidak langsung terhadap suatu perkara yang sedang diadili atau kemungkinan kuat akan diadili oleh hakim yang bersangkutan yang secara wajar patut diduga bertujuan untuk mempengaruhi hakim dalam menjalankan tugas peradilannya.', 35),
('tKyl3YBo0', 'pg45zYoYJ', 'HUKUMAN DISIPLIN SEDANG: Pelanggaran terhadap kewajiban Pasal 4 huruf h, tidak memenuhi ketentuan, dan apabila pelanggaran berdampak negatif pada instansi yang bersangkutan: (Tidak memberikan kesempatan kepada bawahan untuk mengembangkan kompetensi).', 50),
('u1YFlvwvl', 'hdpyYkbqr', 'PELANGGARAN SEDANG: Pelanggaran kewajiban bagi hakim dalam berperilaku jujur (Pasal 6 ayat (2) huruf d dan e): (d) Hakim wajib melaporkan secara tertulis gratifikasi yang diterima kepada Komisi Pemberantasan Korupsi (KPK), Ketua Muda Pengawasan Mahkamah Agung, dan Ketua Komisi Yudisial paling lama 30 (tiga puluh) hari kerja terhitung sejak tanggal gratifikasi tersebut diterima; (e) Hakim wajib menyerahkan laporan kekayaan kepada Komisi Pemberantasan Korupsi sebelum, selama, dan setelah menjabat, serta bersedia diperiksa kekayaannya, sebelum, selama dan setelah menjabat.', 33),
('uGUliCdqX', 'pg45zYoYJ', 'HUKUMAN DISIPLIN SEDANG: Pelanggaran terhadap kewajiban Pasal 4 huruf d, tidak memenuhi ketentuan, dan apabila pelanggaran berdampak negatif pada instansi yang bersangkutan: (Tidak melaporkan dengan segera kepada atasannya apabila mengetahui ada hal yang dapat membahayakan keamanan negara atau merugikan keuangan negara).', 40),
('uk89rArwF', 'pg45zYoYJ', 'HUKUMAN DISIPLIN BERAT: Melanggar ketentuan larangan Pasal 5 huruf c dan huruf d: Menjadi pegawai atau bekerja untuk negara lain dan/atau lembaga atau organisasi internasional tanpa izin atau tanpa ditugaskan oleh Pejabat Pembina Kepegawaian.', 75),
('uxH6emEcL', 'pg45zYoYJ', 'HUKUMAN DISIPLIN BERAT: Pelanggaran terhadap kewajiban Pasal 4 huruf e, tidak memenuhi ketentuan, dan apabila pelanggaran berdampak negatif pada negara dan/atau pemerintah: (Tidak  melaporkan harta kekayaan kepada pejabat yang berwenang sesuai dengan ketentuan peraturan perundang-undangan sebagaimana dimaksud dalam Pasal 4 huruf e yang dilakukan pejabat pimpinan tinggi dan pejabat lainnya).', 78),
('vOR5mRP2l', 'hdpyYkbqr', 'PELANGGARAN BERAT: Larangan bagi hakim dalam penerapan berperilaku berintegritas tinggi (Pasal 9 ayat (5) huruf b, c, e, f dan i): (b) Hakim dilarang melakukan tawar-menawar putusan, memperlambat pemeriksaan perkara, menunda eksekusi atau menunjuk advokat tertentu dalam menangani suatu perkara di pengadilan, kecuali ditentukan lain oleh undang-undang; (c) Hakim dilarang mengadili suatu perkara apabila memiliki hubungan keluarga, Ketua Majelis, hakim anggota lainnya, penuntut, advokat, dan panitera yang menangai perkara tersebut; (e) Hakim dilarang mengadili suatu perkara apabila pernah mengadili atau menjadi penuntut, advokat atau panitera dalam perkara tersebut pada persidangan di pengadilan tingkat yang lebih rendah; (f) Hakim dilarang mengadili suatu perkara apabila pernah menangani hal-hal yang berhubungan dengan perkara atau dengan para pihak yang akan diadili, saat menjalankan pekerjaan atau profesi lain sebelum menjadi hakim; (i) Hakim dilarang mengadili suatu perkara yang salah satu pihaknya adalah partai politik apabila hakim tersebut masih atau pernah aktif dalam partai politik tersebut.', 78),
('vu6tB8y2w', 'hdpyYkbqr', 'PELANGGARAN RINGAN: Larangan bagi hakim dalam penerapan berperilaku menjunjung harga diri (Pasal 11 ayat (4) huruf d, e, dan f): (d) Hakim dilarang bertindak sebagai arbiter dalam kapasitas pribadi, kecuali bertindak dalam jabatan yang secara tegas diperintahkan atau diperbolehkan dalam undang-undang atau peraturan lain; (e) Hakim dilarang bertindak sebagai mediator dalam kapasitas pribadi, kecuali bertindak dalam jabatan yang secara tegas diperintahkan atau diperbolehkan dalam undang-undang atau peraturan lain; (f) Hakim dilarang menjabat sebagai eksekutor, administrator atau kuasa pribadi lainnya, kecuali untuk urusan pribadi anggota keluarga Hakim tersebut, dan hanya diperbolehkan jika kegiatan tersebut secara wajar (reasonable) tidak akan mempengaruhi pelaksanaan tugasnya sebagai Hakim.', 25),
('w4pyjho4M', 'pg45zYoYJ', 'HUKUMAN DISIPLIN SEDANG: Pelanggaran terhadap kewajiban Pasal 3 huruf d, apabila pelanggaran berdampak negatif pada instansi yang bersangkutan (Tidak menaati ketentuan peraturan perundang-undangan).', 38),
('Wwffu3JJ4', 'pg45zYoYJ', 'HUKUMAN DISIPLIN RINGAN: Pelanggaran terhadap kewajiban Pasal 3 huruf g, apabila pelanggaran berdampak negatif pada Unit Kerja (Tidak menyimpan rahasia jabatan dan hanya dapat mengemukakan rahasia jabatan sesuai dengan ketentuan peraturan perundang-undangan).', 13),
('X3PNEtqu5', 'hdpyYkbqr', 'PELANGGARAN RINGAN: Larangan bagi hakim dalam penerapan berperilaku arif dan bijaksana (Pasal 7 ayat (3) huruf c, g, h dan k): (c) Hakim dilarang menggunakan wibawa pengadilan untuk kepentingan pribadi, keluarga atau pihak ketiga lainnya; (g) Hakim tidak boleh memberi keterangan, pendapat, komentar, kritik atau pembenaran secara terbuka atas suatu perkara atau putusan pengadilan baik yang belum maupun yang sudah mempunyai kekuatan hukum tetap dalam kondisi apapun; (h) Hakim tidak boleh memberi keterangan, pendapat, komentar, kritik atau pembenaran secara terbuka atas suatu putusan pengadilan yang telah memiliki kekuatan hukum tetap, kecuali dalam sebuah forum ilmiah yang hasilnya tidak dimaksudkan untuk dipublikasikan yang dapat mempengaruhi putusan hakim dalam perkara lain; (k) Hakim tidak boleh atau terlibat dalam kegiatan yang dapat menimbulkan persangkaan beralasan bahwa hakim tersebut mendukung suatu partai politik.', 10),
('XBJ5uSnqE', 'hdpyYkbqr', 'PELANGGARAN BERAT: Pelanggaran terhadap kewajiban bagi hakim dalam berperilaku jujur (Pasal 6 ayat (2) huruf a): (a) Hakim harus berperilaku jujur (fair) dan menghindari perbuatan yang tercela.', 68),
('ycZxuHzUk', 'hdpyYkbqr', 'PELANGGARAN RINGAN: Pelanggaran terhadap kewajiban hakim dalam penerapan berperilaku berintegritas tinggi (Pasal 9 ayat (4) huruf c, d dan e): (c) Hakim harus membatasi hubungan yang akrab, langsung maupun tidak langsung dengan advokat yang sering berperkara di wilayah hukum pengadilan tempat hakim tersebut menjabat; (d) Hakim wajib bersikap terbuka dan memberikan informasi mengenai kepentingan pribadi yang menunjukkan tidak adanya konflik kepentingan dalam menangani suatu perkara; (e) Hakim harus mengetahui urusan keuangan pribadinya maupun beban-beban keuangan lainnya dan harus berupaya secara wajar untuk mengetahui urusan keuangan para anggota keluarganya.', 15),
('yLltHvmbH', 'u0rgkCKIz', 'HUKUMAN DISIPLIN SEDANG: Pelanggaran terhadap Larangan (Huruf J angka 3 huruf b (angka 1, 5, 8 dan 9): (1) menyalahgunakan wewenang; (5) menerima hadiah atau suatu pemberian apa saja dari siapapun juga yang berhubungan dengan pekerjaannya; (8) menghalangi berjalannya tugas kedinasan; (9) mencemarkan nama baik satuan kerja, pimpinan, dan/atau rekan kerja.', 60),
('yxqXwCuRA', 'pg45zYoYJ', 'HUKUMAN DISIPLIN BERAT: Pelanggaran terhadap kewajiban Pasal 4 huruf i: (Tidak menolak segala bentuk pemberian yang berkaitan dengan tugas dan fungsi kecuali penghasilan sesuai dengan ketentuan peraturan perundang-undangan).', 90),
('z8fyPimKF', 'u0rgkCKIz', 'HUKUMAN DISIPLIN RINGAN: Pelanggaran terhadap kewajiban (Huruf J angka 3 huruf a (angka 3, 5, 6, 7 dan 8): (3) melaksanakan tugas kedinasan dengan penuh pengabdian, kesadaran, dan tanggung jawab; (5) bekerja dengan jujur, tertib, cermat, dan bersemangat untuk kepentingan negara; (6) menggunakan dan memelihara barang-barang milik negara dengan sebaik-baiknya; (7) mengisi daftar hadir setiap hari kerja; (8) menaati peraturan kedinasan yang ditetapkan oleh pejabat yang berwenang.', 15),
('ZNuU0Vcmr', 'hdpyYkbqr', 'PELANGGARAN BERAT: Pelanggaran terhadap kewajiban bagi hakim dalam berperilaku mandiri (Pasal 8 ayat (2) huruf b): (b) Hakim wajib bebas dari hubungan yang tidak patut dengan lembaga eksekutif maupun legislatif serta kelompok lain yang berpotensi mengancam kemandirian (indepedensi) Hakim dan Badan Peradilan.', 73),
('zUiyUYp6h', 'pg45zYoYJ', 'HUKUMAN DISIPLIN RINGAN: Pelanggaran terhadap kewajiban Pasal 3 huruf e, apabila pelanggaran berdampak negatif pada Unit Kerja (Tidak melaksanakan tugas kedinasan dengan penuh pengabdian, kejujuran, kesadaran, dan tanggung jawab).', 8),
('zva9I1VQ8', 'pg45zYoYJ', 'HUKUMAN DISIPLIN SEDANG: Pelanggaran terhadap kewajiban Pasal 4 huruf c, tidak memenuhi ketentuan, dan apabila pelanggaran berdampak negatif pada instansi yang bersangkutan: (Tidak mengutamakan kepentingan negara daripada kepentingan pribadi, seseorang, dan/atau golongan).', 38);

-- --------------------------------------------------------

--
-- Table structure for table `chat`
--

CREATE TABLE `chat` (
  `c_chat` int(11) NOT NULL,
  `c_atasan` varchar(10) NOT NULL,
  `c_pimatasan` varchar(10) NOT NULL,
  `pesan` text NOT NULL,
  `at` datetime NOT NULL,
  `w_g` varchar(1) NOT NULL,
  `sg` varchar(1) NOT NULL,
  `sw` varchar(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `chat`
--

INSERT INTO `chat` (`c_chat`, `c_atasan`, `c_pimatasan`, `pesan`, `at`, `w_g`, `sg`, `sw`) VALUES
(10, 'XpbNDbAnF', 'r9IU7LhG2', 'ok', '2024-05-25 00:37:58', 'g', 'y', 'y'),
(11, 'XpbNDbAnF', 'r9IU7LhG2', 'ok', '2024-05-25 00:38:04', 'g', 'y', 'y'),
(12, 'XpbNDbAnF', 'r9IU7LhG2', 'ok', '2024-05-25 01:19:24', 'w', 'y', 'y');

-- --------------------------------------------------------

--
-- Table structure for table `katbenpel`
--

CREATE TABLE `katbenpel` (
  `c_katbenpel` varchar(10) NOT NULL,
  `katbenpel` varchar(300) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `katbenpel`
--

INSERT INTO `katbenpel` (`c_katbenpel`, `katbenpel`) VALUES
('4e9XZis0K', '05. Perjanjian Kerja Nomor: 1615/SEK/KP.1.2.7/VIII/2023 Tanggal 30 Agustus 2023 Antara Sekretaris Mahkamah Agung RI dengan Pegawai Pemerintah dengan Perjanjian Kerja (P3K) an. Muhamamd Afiq, A.Md.A.B'),
('hdpyYkbqr', '01. Peraturan Bersama Mahkamah Agung RI dan Komisi Yudisial RI Nomor 02/PB/MA/IX/2012 dan 02/PB/P.KY/09/2012 Tentang Panduan Penegakan Kode Etik dan Pedoman Perilaku Hakim'),
('OReGjfOFG', '04. Peraturan Pemerintah Republik Indonesia Nomor 49 Tahun 2018 tentang Manajemen Pegawai Pemerintah dengan Perjanjian Kerja'),
('pg45zYoYJ', '02. Peraturan Pemerintah Republik Indonesia Nomor 94 Tahun 2021 tentang Disiplin Pegawai Negeri Sipil'),
('u0rgkCKIz', '06. Keputusan Sekretaris Mahkamah Agung Republik Indonesia Nomor: 81 l/SEK/SK/VIII/2021 tentang Pedoman Pengelolaan Pegawai Pemerintah Non Pegawai Negeri pada Mahkamah Agung dan Badan Peradilan yang Berada di Bawahnya'),
('YrxBDRy0p', '03. Keputusan Ketua Mahkamah Agung RI Nomor: 122/KMA/SK/VII/2013 tentang Kode Etik dan Pedoman Perilaku Panitera dan Juru Sita');

-- --------------------------------------------------------

--
-- Table structure for table `pelaksana`
--

CREATE TABLE `pelaksana` (
  `c_pelaksana` varchar(10) NOT NULL,
  `c_aparatur` varchar(10) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `username` varchar(30) NOT NULL,
  `password` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pelaksana`
--

INSERT INTO `pelaksana` (`c_pelaksana`, `c_aparatur`, `nama`, `username`, `password`) VALUES
('0FRN49kAB', 'jQQuuMyIg', '22. EDWINT ALDRIN MUHAMAD SHODIQ, A.Md.Akun', 'edwint', 'edwint'),
('4gS2klHkS', '5bBK8wFyc', '20. APRIYANTI KARTIKA DWI, A.Md.', 'dwi', 'dwi'),
('4kWeEFD4i', 'rNthpQWVM', '11. ESRA PAEMBONAN, S.H.', 'esra', 'esra'),
('5tuis1niD', 'sr1tDKH0f', '29. Ryan Arie Hidayat', 'ryan', 'ryan'),
('6I2mVDF7K', 'zLr7i2rSc', '08. ALFIANUS RUMONDOR, S.H.,M.H', 'alfian', 'alfian'),
('9MpFAmKfh', 'y4P1Xb4su', '21. EKA NUR AMALINA FAJRIN, A.Md.A.B', 'eka nur', 'eka'),
('9tOUyAMse', 'AtBms6yuj', '12. NOVA ZULAIKA IBRAHIM, S.H.', 'nova', 'nova'),
('AE6fjGmyM', 'DdlIyJtXv', '24. MUHAMMAD AFIQ, A.Md.A.B.', 'afiq', 'afiq'),
('dMw1Er1uf', 'eDQuotjvn', '14. BENEDIKTUS EKA SETIAWAN, S.T.', 'eka setiawan', 'eka'),
('EKk1bxhbq', '9tBkr0vUo', '27. Rusdar Syamsi', 'rusdar', 'rusdar'),
('GXsy3qA9K', 'lnREravDk', '02. RADEN DIDI BUDI HARJO, S.H.', 'budi', 'budi'),
('hWG7UAJHY', 'scKUbR4j2', '16. FADILLAH MURSID AAN SAPUTRO, S.E.', 'fadil', 'fadil'),
('kzrwXLUq0', 'b368Ef6Sn', ' 25. Fichbar Tandy S.Kom.', 'fichbar', 'fichbar'),
('nZsCmIA5b', 'u63W5rQwV', '13. JAZILATUL HUMAIRA, S.H.', 'ema', 'ema'),
('ooemCSRIR', '5bGPGOADu', '01. DAMENTA ALEXANDER, S.H., M.Hum.', 'alex', 'alex'),
('oubuy5t33', '2nXjwso1B', '07. AGUS PURWANTO, S.H., M.H.', 'agus', 'agus'),
('PhbY6UyGt', '5FdUPyAYn', '09. SITI MUSRIFAH, S.H.', 'siti', 'siti'),
('PwUlAOAdY', 'hJtexm7pu', ' 28. Mario Marccelo S.Kom.', 'mario', 'mario'),
('QC11AvLAt', '7djuMg5x5', '31. Aisyah S.H.', 'aisyah', 'aisyah'),
('r1Q8g4iaV', '4NyvcNs8o', '18. ADRIAWAN ANUGRAH PEKERTI, S.H.', 'adri', 'adri'),
('R3fyIqmGB', 'yBxrIDKKW', '06. ANWAR W. M SAGALA, S.H.', 'sagala', 'sagala'),
('SHCd0cp0V', 'wZuDRahOz', '17. AHMAD RIFQI SULISTIO, S.H.', 'ahmad', 'ahmad'),
('U3PhnaXrK', '4u4lUwsqx', '23. YUDHITH ARDHI SATRIA, A.Md.', 'yudhith', 'yudhith'),
('uevkalJG9', 'iWH00axzl', '30. Sparta Yulita Sari', 'sparta', 'sparta'),
('utuA0NiEX', 'rXA2GVX1G', '15. RUSTIAH, S.H.', 'rustiah', 'rustiah'),
('v78JCs1I7', 'EmcPaR5x2', '05. IMRAN MARANNU IRIANSYAH, S.H.,M.H.', 'imran', 'imran'),
('wQ1yyP7Ve', 'mUpd4qZe6', '03. KISWOYO, S.Sos', 'kiswoyo', '12345@kiswoyo'),
('yBuuP1oR3', 'r7JcQHv6P', '19. ADE RAHMAWATI, S.H.', 'ade', 'ade'),
('ylzytFx1S', 'NtFJ7OFxe', '26. Suriani BT Sinring', 'suriani', 'suriani'),
('ySuFgGPpS', 'JRRZbZizN', '04. ABDUL RAHMAN TALIB, S.H.,M.H', 'rahman', 'rahman'),
('zIEsMEqOt', 'UzBs8rCcE', '10. HANAFI, S.H.', 'hanafi', 'hanafi');

-- --------------------------------------------------------

--
-- Table structure for table `pelanggaran`
--

CREATE TABLE `pelanggaran` (
  `c_pelanggaran` varchar(5) NOT NULL,
  `c_aparatur` varchar(10) NOT NULL,
  `c_bagian` varchar(10) NOT NULL,
  `c_benpel` varchar(10) NOT NULL,
  `bobot` int(4) NOT NULL,
  `c_atasan` varchar(10) NOT NULL,
  `at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pelanggaran`
--

INSERT INTO `pelanggaran` (`c_pelanggaran`, `c_aparatur`, `c_bagian`, `c_benpel`, `bobot`, `c_atasan`, `at`) VALUES
('JUhc', 'eDQuotjvn', 'H4MvD4YeL', 'DIyARoYaw', 3, 'XpbNDbAnF', '2024-05-24 17:34:40'),
('tXZd', 'eDQuotjvn', 'H4MvD4YeL', 'dR1vp2KJg', 5, 'XpbNDbAnF', '2024-05-24 17:34:40');

-- --------------------------------------------------------

--
-- Table structure for table `pimatasan`
--

CREATE TABLE `pimatasan` (
  `c_pimatasan` varchar(10) NOT NULL,
  `c_aparatur` varchar(10) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `username` varchar(30) NOT NULL,
  `password` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pimatasan`
--

INSERT INTO `pimatasan` (`c_pimatasan`, `c_aparatur`, `nama`, `username`, `password`) VALUES
('1YudLF50p', 'jQQuuMyIg', '22. KISWOYO, S.Sos. (edwint)', 'kiswoyo-edwint', '12345@kiswoyo'),
('4g4lAxnev', '5bGPGOADu', '01. H. BAMBANG MYANTO, S.H., M.H.', 'bambang', 'bambang'),
('64jbymbY6', 'sr1tDKH0f', '29. DAMENTA ALEXANDER, S.H., M.Hum. (ryan)', 'alex-ryan', 'alex'),
('8aDpy3d3U', '4u4lUwsqx', '23. KISWOYO, S.Sos. (yudhith)', 'kiswoyo-yudhith', '12345@kiswoyo'),
('9pz38UiWB', '9tBkr0vUo', '27. DAMENTA ALEXANDER, S.H., M.Hum. (rusdar)', 'alex-rusdar', 'alex'),
('bQlCsyHOB', 'UzBs8rCcE', '10. DAMENTA ALEXANDER, S.H., M.Hum. (hanafi)', 'alex-hanafi', 'alex'),
('EyDI5y8fm', 'hJtexm7pu', '28. DAMENTA ALEXANDER, S.H., M.Hum. (mario)', 'alex-mario', 'alex'),
('Ga1Msajby', 'y4P1Xb4su', '21. RADEN DIDI BUDI HARJO, S.H. (eka)', 'budi-eka', 'budi'),
('GlmXEWRql', 'DdlIyJtXv', '24. DAMENTA ALEXANDER, S.H., M.Hum. (afiq)', 'alex-afiq', 'alex'),
('GVe7xz7cd', 'iWH00axzl', '30. DAMENTA ALEXANDER, S.H., M.Hum. (sparta)', 'alex-sparta', 'alex'),
('H4OnBsWyY', 'yBxrIDKKW', '06. Dr. LILIK MULYADI, S.H., M.H. (sagala)', 'lilik-sagala', 'lilik'),
('hvr6qOqCa', '5bBK8wFyc', '20. RADEN DIDI BUDI HARJO, S.H. (dwi)', 'budi-dwi', 'budi'),
('ISctpuPvj', 'u63W5rQwV', '13. DAMENTA ALEXANDER, S.H., M.Hum. (ema)', 'alex-ema', 'alex'),
('IWZyyfYOF', 'rNthpQWVM', '11. DAMENTA ALEXANDER, S.H., M.Hum. (esra)', 'alex-esra', 'alex'),
('J95JKnOuP', 'wZuDRahOz', '17. RADEN DIDI BUDI HARJO, S.H. (ahmad)', 'budi-ahmad', 'budi'),
('K0iyPy5yu', 'AtBms6yuj', '12. DAMENTA ALEXANDER, S.H., M.Hum. (nova)', 'alex-nova', 'alex'),
('kamybuVrG', 'zLr7i2rSc', '08. Dr. LILIK MULYADI, S.H., M.H. (alfian)', 'lilik-alfian', 'lilik'),
('lnjhQMuEx', 'mUpd4qZe6', '03. Dr. LILIK MULYADI, S.H., M.H. (kiswoyo)', 'lilik-kiswoyo', 'lilik'),
('MyQQqty9i', 'rXA2GVX1G', '15. DAMENTA ALEXANDER, S.H., M.Hum. (tiah)', 'alex-tiah', 'alex'),
('q5dic9OFp', 'scKUbR4j2', '16. KISWOYO, S.Sos. (fadil)', 'kiswoyo-fadil', '12345@kiswoyo'),
('r9IU7LhG2', 'eDQuotjvn', '14. DAMENTA ALEXANDER, S.H., M.Hum. (eka)', 'alex-eka', 'alex'),
('rDw6cyISi', '4NyvcNs8o', '18. RADEN DIDI BUDI HARJO, S.H. (adri)', 'budi-adri', 'budi'),
('SPxMaCNKH', 'lnREravDk', '02. Dr. LILIK MULYADI, S.H., M.H. (budi)', 'lilik-budi', 'lilik'),
('t2gV2ek5y', 'r7JcQHv6P', '19. RADEN DIDI BUDI HARJO, S.H. (ade)', 'budi-ade', 'budi'),
('U3juDNt3p', '7djuMg5x5', '31. DAMENTA ALEXANDER, S.H., M.Hum. (asiyah)', 'alex-aisyah', 'alex'),
('u8cUendte', 'EmcPaR5x2', '05. Dr. LILIK MULYADI, S.H., M.H. (imran)', 'lilik-imran', 'lilik'),
('uyS7Zdere', 'b368Ef6Sn', '25. DAMENTA ALEXANDER, S.H., M.Hum. (fichbar)', 'alex-fichbar', 'alex'),
('xA9fkjsFw', 'NtFJ7OFxe', '26. DAMENTA ALEXANDER, S.H., M.Hum. (suriani)', 'alex-suriani', 'alex'),
('zgNtiPJcX', '2nXjwso1B', '07. Dr. LILIK MULYADI, S.H., M.H. (agus)', 'lilik-agus', 'lilik'),
('zSelqfxE2', 'JRRZbZizN', '04. Dr. LILIK MULYADI, S.H., M.H. (rahman)', 'lilik-rahman', 'lilik'),
('zwHRlt0dE', '5FdUPyAYn', '09. DAMENTA ALEXANDER, S.H., M.Hum. (siti)', 'alex-siti', 'alex');

-- --------------------------------------------------------

--
-- Table structure for table `relasichat`
--

CREATE TABLE `relasichat` (
  `c_chat` int(11) NOT NULL,
  `c_atasan` varchar(10) NOT NULL,
  `c_pimatasan` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `relasichat`
--

INSERT INTO `relasichat` (`c_chat`, `c_atasan`, `c_pimatasan`) VALUES
(9, 'XpbNDbAnF', 'r9IU7LhG2');

-- --------------------------------------------------------

--
-- Table structure for table `sanksi`
--

CREATE TABLE `sanksi` (
  `c_sanksi` varchar(10) NOT NULL,
  `kriteria` varchar(100) NOT NULL,
  `bobot_dari` int(3) NOT NULL,
  `bobot_sampai` int(3) NOT NULL,
  `sanksi` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sanksi`
--

INSERT INTO `sanksi` (`c_sanksi`, `kriteria`, `bobot_dari`, `bobot_sampai`, `sanksi`) VALUES
('3VMmwofdf', 'Hukuman Disiplin Sedang', 31, 60, '1. ..Penundaan kenaikan gaji berkala paling lama 1 tahun (Bobot 31-35) (HAKIM); <br>\r\n2. ..Penurunan gaji sebesar 1 kali kenaikan gaji berkala paling lama 1 tahun <br> \r\n......(Bobot 36- 40) (HAKIM); <br>\r\n3. ..Penundaan kenaikan pangkat paling lama 1 tahun (Bobot 41-45) (HAKIM); <br>\r\n4. ..Hakim non palu paling lama 6 bulan (Bobot 46-50) (HAKIM); <br>\r\n5. ..Mutasi ke pengadilan lain dengan kelas yang lebih rendah (Bobot 51-55) (HAKIM); <br>\r\n6. ..Pembatalan atau penangguhan promosi (Bobot 56-60) (HAKIM); <br>\r\n7. ..Pemotongan tukin sebesar 25% selama 6 bulan (Bobot 31-40) (PNS/PPPK); <br> \r\n8. ..Pemotongan tukin sebesar 25% selama 9 bulan (Bobot 41-50) (PNS/PPPK); <br> \r\n9.  ..Pemotongan tukin sebesar 25% selama 12 bulan (Bobot 51-60) (PNS/PPPK). <br>\r\n10. Surat Peringatan Kedua (SP-2) (Bobot 31-50) (PPNPN).'),
('CkpVcuo7h', 'Hukuman Disiplin Berat', 61, 90, '1. ..Pembebasan dari jabatan (Bobot 61-65) (HAKIM); <br> \r\n2. ..Hakim non palu lebih dari 6 bulan dan paling lama 2 tahun (Bobot 66-70) (HAKIM); <br> \r\n3. ..Penurunan pangkat pada pangkat yang setingkat lebih rendah untuk paling lama <br> \r\n......3 tahun Bobot 71-75) (HAKIM); <br> \r\n4. ..Pemberhentian tetap dengan hak pensiun (Bobot 76-80) (HAKIM); <br> \r\n5. ..Pemberhentian tidak dengan hormat (Bobot 80-90) (HAKIM); <br> \r\n6. ..Penurunan jabatan setingkat lebih rendah selama 12 bulan (Bobot 61-70) (PNS); <br> \r\n7. ..Pembebasan dari jabatannya menjadi jabatan pelaksana selama 12 bulan <br>\r\n......(Bobot 71-80) (PNS);  <br> \r\n8. ..Pemberhentian dengan hormat tidak atas permintaan sendiri sebagai PNS <br>\r\n......(Bobot 81-90) (PNS); <br>\r\n9. ..Pemutusan hubungan perjanjian kerja dengan hormat tidak atas permintaan  <br>\r\n......sendiri (Bobot 61-80) (PPPK); <br>\r\n10. Pemutusan hubungan perjanjian kerja tidak dengan hormat (Bobot 81-90) (PPPK); <br>\r\n11. Surat Peringatan Ketiga (SP-3) / Pemberhentian (Bobot 61-70) (PPNPN); <br>\r\n12. Melanggar larangan / Pemberhentian (Bobot 71-90) (PPNPN).'),
('x6F81M8Ye', 'Hukuman Disiplin Ringan', 1, 30, '1. Teguran lisan (Bobot 1-10) (HAKIM/PNS/PPPK) <br> 2. Teguran tertulis (Bobot 11-20) (HAKIM/PNS/PPPK) <br> 3. Pernyataan tidak puas secara tertulis (Bobot 21-30) (HAKIM/PNS/PPPK); <br> 4. Teguran lisan pertama (Bobot 1-10) (PPNPN); <br> 5. Teguran lisan kedua (Bobot 11-20) (PPNPN); <br> 6. Surat Peringatan Pertama (SP-1) (Bobot 21-30) (PPNPN).');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`c_admin`);

--
-- Indexes for table `aparatur`
--
ALTER TABLE `aparatur`
  ADD PRIMARY KEY (`c_aparatur`);

--
-- Indexes for table `atasan`
--
ALTER TABLE `atasan`
  ADD PRIMARY KEY (`c_atasan`);

--
-- Indexes for table `bagian`
--
ALTER TABLE `bagian`
  ADD PRIMARY KEY (`c_bagian`);

--
-- Indexes for table `benpel`
--
ALTER TABLE `benpel`
  ADD PRIMARY KEY (`c_benpel`);

--
-- Indexes for table `chat`
--
ALTER TABLE `chat`
  ADD PRIMARY KEY (`c_chat`);

--
-- Indexes for table `katbenpel`
--
ALTER TABLE `katbenpel`
  ADD PRIMARY KEY (`c_katbenpel`);

--
-- Indexes for table `pelaksana`
--
ALTER TABLE `pelaksana`
  ADD PRIMARY KEY (`c_pelaksana`);

--
-- Indexes for table `pelanggaran`
--
ALTER TABLE `pelanggaran`
  ADD PRIMARY KEY (`c_pelanggaran`);

--
-- Indexes for table `pimatasan`
--
ALTER TABLE `pimatasan`
  ADD PRIMARY KEY (`c_pimatasan`);

--
-- Indexes for table `relasichat`
--
ALTER TABLE `relasichat`
  ADD PRIMARY KEY (`c_chat`);

--
-- Indexes for table `sanksi`
--
ALTER TABLE `sanksi`
  ADD PRIMARY KEY (`c_sanksi`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `chat`
--
ALTER TABLE `chat`
  MODIFY `c_chat` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `relasichat`
--
ALTER TABLE `relasichat`
  MODIFY `c_chat` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
