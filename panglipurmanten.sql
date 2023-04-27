-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 18 Mar 2023 pada 07.05
-- Versi server: 10.4.27-MariaDB
-- Versi PHP: 8.0.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `panglipurmanten`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `additional_packages`
--

CREATE TABLE `additional_packages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nama` varchar(255) DEFAULT NULL,
  `gambar` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `additional_packages`
--

INSERT INTO `additional_packages` (`id`, `nama`, `gambar`, `created_at`, `updated_at`) VALUES
(2, 'Wedding Car', '1678183932_wcar.jpg', '2023-03-07 03:12:12', '2023-03-07 03:12:12'),
(3, 'Prewedding', '1678411532_prewed.jpg', '2023-03-09 18:25:32', '2023-03-09 18:25:32'),
(4, 'Digital Invitation', '1678846046_invit.png', '2023-03-14 19:07:26', '2023-03-14 19:07:26');

-- --------------------------------------------------------

--
-- Struktur dari tabel `additional_pack_details`
--

CREATE TABLE `additional_pack_details` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `additional_id` bigint(20) UNSIGNED DEFAULT NULL,
  `nama` varchar(255) DEFAULT NULL,
  `detail` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `additional_pack_details`
--

INSERT INTO `additional_pack_details` (`id`, `additional_id`, `nama`, `detail`, `created_at`, `updated_at`) VALUES
(1, NULL, 'IDR 3.500.000', '<div><strong>IDR 3.500.000<br></strong><br></div>', '2023-03-07 03:13:55', '2023-03-07 03:13:55'),
(3, 2, 'IDR 3.500.000', '<div><strong>Alphard | Mercy<br></strong><br></div><div>Include :<br>BBM<br>Driver<br>Flower Decoration<br>Maximum 12 hours<br>Jakarta Area</div>', '2023-03-07 03:15:17', '2023-03-14 21:09:49'),
(4, 3, 'IDR 5.500.000', '<div><strong><br>Photo &amp; Video<br></strong><br></div><div>Include :<br>Photografer &amp; Videografer<br>1 Assisten<br>2 Album Exclusive<br>1 Master USB Photo &amp; Video Editing<br>Maximum 3 Lokasi Jakarta Area</div>', '2023-03-14 20:19:01', '2023-03-14 21:00:23'),
(5, 4, 'IDR 300.00000', '<div><br><strong>Digital Ivitation<br></strong><br></div><div>Include :<br>Website<br>Custome Audio<br>Free Choose Template<br>Max Active 6 Month</div>', '2023-03-14 20:22:03', '2023-03-14 20:22:19');

-- --------------------------------------------------------

--
-- Struktur dari tabel `articles`
--

CREATE TABLE `articles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `gambar` varchar(255) DEFAULT NULL,
  `ringkasan` varchar(255) DEFAULT NULL,
  `isi` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `articles`
--

INSERT INTO `articles` (`id`, `title`, `gambar`, `ringkasan`, `isi`, `created_at`, `updated_at`) VALUES
(3, 'Pernikahan: Menjaga Cinta dan Memperkuat Hubungan', '1678204201_regular.jpg', 'Pernikahan butuh kerja keras untuk menjaga hubungan tetap harmonis. Tantangan muncul dari perbedaan pendapat, kebiasaan, dan keuangan. Komunikasi terbuka, saling menghargai, membangun kepercayaan, dan berkomitmen untuk memperbaiki diri adalah tips penting', '<div><strong>Pernikahan </strong>adalah keputusan besar dalam hidup seseorang. Melalui pernikahan, dua orang berjanji untuk saling mencintai dan berbagi hidup bersama. Namun, pernikahan tidaklah mudah. Ada banyak tantangan yang mungkin dihadapi, seperti perbedaan pendapat, kebiasaan yang berbeda, dan masalah keuangan.<br><br></div><div><br>Untuk menjaga hubungan tetap harmonis dan bahagia, ada beberapa tips yang bisa diikuti. Pertama, komunikasi adalah kunci utama. Pasangan harus selalu terbuka dan jujur satu sama lain, serta mendengarkan dengan baik apa yang dikatakan oleh pasangan. Kedua, menghargai satu sama lain. Meskipun ada perbedaan pendapat atau kebiasaan, pasangan harus saling menghargai dan menerima perbedaan tersebut. Ketiga, membangun kepercayaan. Kepercayaan merupakan fondasi penting dalam hubungan, dan pasangan harus saling mempercayai satu sama lain. Keempat, berkomitmen untuk saling memperbaiki diri. Pasangan harus berkomitmen untuk terus belajar dan berkembang bersama.<br><br></div><div><br>Selain itu, pasangan juga harus dapat mengatasi masalah keuangan dengan baik. Keuangan merupakan masalah yang sering menjadi sumber perselisihan dalam pernikahan. Oleh karena itu, pasangan harus dapat berkomunikasi dengan baik dan membuat perencanaan keuangan yang baik.<br><br></div><div><br>Dalam pernikahan, terkadang ada saat-saat sulit yang mungkin dihadapi. Namun, jika pasangan saling mendukung dan memperkuat hubungan satu sama lain, maka pernikahan akan tetap kuat dan bahagia.</div>', '2023-03-07 08:50:01', '2023-03-07 08:50:01'),
(4, 'Memperkuat Hubungan Pernikahan dengan Kegiatan Bersama', '1678205302_intiminate.jpg', 'Kegiatan bersama dapat memperkuat hubungan pernikahan. Artikel ini membahas jenis kegiatan bersama, manfaatnya, dan cara mengatasi tantangan dalam merencanakan kegiatan bersama. Traveling, olahraga bersama, dan menonton film di rumah bisa menjadi pilihan.', '<div>Pernikahan adalah sebuah komitmen yang besar dalam kehidupan. Selain menjaga hubungan tetap harmonis dan bahagia, kegiatan bersama juga dapat menjadi salah satu cara untuk memperkuat hubungan pernikahan. Kegiatan bersama dapat menjadi momen indah yang dapat menjadi kenangan yang berharga bagi pasangan. Ada banyak jenis kegiatan bersama yang dapat dilakukan oleh pasangan dalam pernikahan.<br><br></div><div><br>Salah satu jenis kegiatan bersama yang sering dilakukan oleh pasangan adalah traveling. Traveling bersama dapat membantu pasangan untuk memperkuat ikatan dan mengenal lebih dekat satu sama lain. Selain itu, kegiatan seperti olahraga bersama, belajar keterampilan baru bersama, atau bahkan hanya menonton film bersama di rumah juga dapat menjadi kegiatan yang menyenangkan dan memperkuat hubungan pernikahan.<br><br></div><div><br>Manfaat dari kegiatan bersama adalah mempererat ikatan antara pasangan, membantu mengurangi stres, meningkatkan kebahagiaan dan keintiman, serta membangun kenangan indah bersama. Namun, terkadang merencanakan kegiatan bersama bisa menjadi tantangan. Tantangan tersebut mungkin berasal dari jadwal yang padat, keuangan, atau bahkan selera yang berbeda.<br><br></div><div><br>Untuk mengatasi tantangan dalam merencanakan kegiatan bersama, pasangan dapat berdiskusi terlebih dahulu untuk menemukan jenis kegiatan yang disukai oleh keduanya. Kemudian, membuat jadwal dan anggaran yang jelas juga dapat membantu dalam merencanakan kegiatan bersama. Pasangan juga dapat memanfaatkan teknologi untuk mencari ide kegiatan atau mencari diskon untuk kegiatan yang ingin dilakukan.<br><br></div><div><br>Dalam pernikahan, kegiatan bersama dapat menjadi cara yang efektif untuk memperkuat hubungan dan membangun kenangan indah bersama. Oleh karena itu, pasangan harus mengalokasikan waktu dan anggaran untuk melakukan kegiatan bersama, serta bekerja sama dalam merencanakan kegiatan tersebut.</div>', '2023-03-07 09:08:23', '2023-03-07 09:08:23');

-- --------------------------------------------------------

--
-- Struktur dari tabel `event_packages`
--

CREATE TABLE `event_packages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nama` varchar(255) DEFAULT NULL,
  `gambar` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `event_packages`
--

INSERT INTO `event_packages` (`id`, `nama`, `gambar`, `created_at`, `updated_at`) VALUES
(2, 'All in Wedding Package', 'allpack.jpg', '2023-03-07 02:14:39', '2023-03-07 02:17:00'),
(3, 'Intimate Package', '1678180581_intiminate.jpg', '2023-03-07 02:16:21', '2023-03-07 02:17:15'),
(4, 'Regular Package', '1678180662_regular.jpg', '2023-03-07 02:17:42', '2023-03-07 02:17:42'),
(5, 'Wedding Planner & Organizer Package', '1678180794_organizer.png', '2023-03-07 02:19:54', '2023-03-07 02:19:54');

-- --------------------------------------------------------

--
-- Struktur dari tabel `event_pack_details`
--

CREATE TABLE `event_pack_details` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `event_id` bigint(20) UNSIGNED DEFAULT NULL,
  `nama` varchar(255) DEFAULT NULL,
  `detail` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `event_pack_details`
--

INSERT INTO `event_pack_details` (`id`, `event_id`, `nama`, `detail`, `created_at`, `updated_at`) VALUES
(2, 2, '100 Pax', '<div>IDR 78.900.000</div>', '2023-03-07 02:36:10', '2023-03-07 02:39:55'),
(3, 2, '300 Pax', '<div>IDR 178.800.000</div>', '2023-03-07 02:39:14', '2023-03-07 02:42:50'),
(4, 2, '500 Pax', '<div>IDR 267.800.000</div>', '2023-03-07 02:39:34', '2023-03-07 02:43:04'),
(5, 2, 'FD Hotels', '<div>Venue &amp; Function Room<br>Main Buffet + Food Stall<br>Hotel Room<br>Food Tasting<br>Attire &amp; Make Up<br>Photo &amp; Video<br>Wedding Decoration<br>Wedding Organizer<br>Entertainment<br>MC</div>', '2023-03-07 02:43:47', '2023-03-07 02:43:47'),
(6, 3, 'IDR 38.000.000', NULL, '2023-03-14 20:08:30', '2023-03-14 20:08:30'),
(7, 3, 'Bride & Groom', '<div>The Bride’s Kebaya Ready Collection<br>Headpiece, assesories, veil<br>Groom’s suit (incl. : pants)<br>Make up &amp; hair do for couple<br>Make up &amp; hair do for 2 mother</div>', '2023-03-14 20:08:39', '2023-03-14 20:08:39'),
(8, 3, 'Photo & Video', '<div>1 photografer + 1 videografer<br>1 album size 20×25 cm<br>all photo in USB (master)<br>1 Video Movie in USB</div>', '2023-03-14 20:09:15', '2023-03-14 20:09:15'),
(9, 3, 'Wedding Decoration', '<div>Standard backdrop decoration 6 meters<br>6 kursi Tiffany<br>Mini Artificial Garden<br>4 standing flower<br>Wedding Gate</div>', '2023-03-14 20:09:28', '2023-03-14 20:09:28'),
(10, 3, 'Wedding Organizer by Ide Manten', '<div>3 Crew Wedding Organizer<br>Unlimited online concultation<br>Penyusunan rundown hari H<br>Organizer hari H selama akad &amp; resepsi<br>Technical meeting sebelum hari H 2x<br>Full HT Communication</div>', '2023-03-14 20:09:44', '2023-03-14 20:09:44'),
(11, 4, 'IDR 55.500.000', NULL, '2023-03-14 20:11:57', '2023-03-14 20:17:10'),
(12, 4, 'Bride & Groom', '<div>1 Kebaya for akad/Holy Ceremony &amp; 1 Gown for Reception<br>Headpiece, crown, assesories, veil<br>Groom’s suit (incl. : pants)<br>Make up &amp; hair do for couple<br>Make up &amp; hair do for 2 mother<br>Free Busana orang tua (ready stok)<br>Free Busana &amp; rias 2 penerima tamu (ready stok)</div>', '2023-03-14 20:12:47', '2023-03-14 20:12:47'),
(13, 4, 'Photo & Video', '<div>Dokumentasi hari H<br>1 photografer + 1 videografer<br>1 album size 20×25 cm<br>all photo in USB (master)<br>1 Video Movie in USB</div>', '2023-03-14 20:13:00', '2023-03-14 20:13:00'),
(14, 4, 'Wedding Decoration', '<div>Standard backdrop decoration 10 meters<br>Mini mixed garden<br>6 kursi Tiffany<br>2 Fairy Lighting<br>1 Set wedding chairs<br>Wedding gate (Gazebo)<br>Backdrop MC &amp; music<br>Backdrop penerima tamu<br>2 Angpao table<br>Rose petal carpet</div>', '2023-03-14 20:13:18', '2023-03-14 20:13:18'),
(15, 4, 'Wedding Organizer by PanglipurManten', '<div>6 Crew Wedding Organizer<br>Unlimited online concultation<br>Penyusunan rundown hari H<br>Organizer hari H selama akad &amp; resepsi<br>Technical meeting sebelum hari H (2x)<br>Full HT Communication</div>', '2023-03-14 20:13:29', '2023-03-14 20:14:02'),
(16, 4, 'Entertaiment', '<div>2 Hours MC for reception + music<br>Single Keyboard + Player<br>Singer</div>', '2023-03-14 20:13:40', '2023-03-14 20:13:40'),
(17, 5, 'INTIMATE @hari H', '<div><strong>IDR 5.500.000</strong><br><br>6 Crew WO @hari H @Venue<br>4 Jam<br>Membuat Rundown hari H<br>Technical Meeting 2x sebelum hari H</div>', '2023-03-14 20:15:13', '2023-03-14 21:08:36'),
(18, 5, 'FULLDAY @hari H', '<div><strong>IDR 12.000.000</strong><br><br>6 Crew (2 crew @pemberkatan/Akad &amp; 6 crew @resepsi)<br>Membuat Rundown hari H<br>Technical Meeting 3x sebelum hari H</div>', '2023-03-14 20:15:24', '2023-03-14 20:15:24'),
(19, 5, 'PLANNER @hari H', '<div><strong>IDR 16.000.000</strong><br><br>Pre Event :<br>Persiapan H-30<br>Konsultasi regular 3x<br>Koordinasi Vendor<br>Rundown hari H<br>Final technical meeting<br><br>@event :<br>4 crew @blessing<br>8 crew @reception @Avenue</div>', '2023-03-14 20:15:41', '2023-03-14 21:08:51'),
(20, 5, 'PLANNER @hari H', '<div><strong>IDR 20.000.000</strong><br><br>Pre Event :<br>Review kalkulasi budjet<br>Persiapan H-90<br>Konsultasi regular 5x<br>Koordinasi Vendor<br>Rundown hari H<br>Final technical meeting<br><br>@event :<br>3 crew @blessing<br>8 crew @reception @Avenue</div>', '2023-03-14 20:16:05', '2023-03-14 20:16:05');

-- --------------------------------------------------------

--
-- Struktur dari tabel `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `galleries`
--

CREATE TABLE `galleries` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `gambar` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `galleries`
--

INSERT INTO `galleries` (`id`, `gambar`, `created_at`, `updated_at`) VALUES
(2, '1678203501_1.jpg', '2023-03-07 08:38:21', '2023-03-07 08:38:21'),
(4, '1678203514_7.jpg', '2023-03-07 08:38:34', '2023-03-07 08:38:34'),
(5, '1678203859_3.jpg', '2023-03-07 08:44:19', '2023-03-07 08:44:19'),
(8, '1678853116_1261342.jpg', '2023-03-14 21:05:16', '2023-03-14 21:05:16'),
(11, '1678853246_sobathijrah-removebg-preview.png', '2023-03-14 21:07:26', '2023-03-14 21:07:26'),
(12, '1678853298_undiglogo.png', '2023-03-14 21:08:18', '2023-03-14 21:08:18'),
(13, '1678855270_buatArtikel.png', '2023-03-14 21:41:10', '2023-03-14 21:41:10');

-- --------------------------------------------------------

--
-- Struktur dari tabel `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2023_03_07_085030_create_event_packages_table', 1),
(6, '2023_03_07_090610_create_event_pack_details_table', 2),
(7, '2023_03_07_094736_create_offering_packages_table', 3),
(8, '2023_03_07_094808_create_additional_packages_table', 3),
(9, '2023_03_07_100748_create_additional_pack_details_table', 4),
(10, '2023_03_07_103029_create_articles_table', 5),
(11, '2023_03_07_133836_create_galleries_table', 6),
(12, '2023_03_07_150152_create_testimonis_table', 7),
(13, '2023_03_08_115706_create_undigs_table', 8);

-- --------------------------------------------------------

--
-- Struktur dari tabel `offering_packages`
--

CREATE TABLE `offering_packages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nama` varchar(255) DEFAULT NULL,
  `detail` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `offering_packages`
--

INSERT INTO `offering_packages` (`id`, `nama`, `detail`, `created_at`, `updated_at`) VALUES
(2, 'Venue Selection', '<div>Manhattan Hotel South Jakarta<br>Acacia Hotel Center Jakarta<br>Ambhara Hotel South Jakarta</div>', '2023-03-07 02:59:22', '2023-03-07 03:00:14'),
(3, 'Catering', '<div>Manhattan F &amp; B<br>Inhouse (PanglipurManten)<br>Sobat Hijrah Catering</div>', '2023-03-07 03:00:49', '2023-03-07 03:00:49'),
(4, 'Photos & Videos', '<div>Inhouse (PanglipurManten)<br>Klik Pro<br>Air Studio</div>', '2023-03-14 19:06:02', '2023-03-14 20:59:39'),
(5, 'Decor', '<div>Miranda Decoration<br>Djati Decor<br>Melia Decor</div>', '2023-03-14 19:06:13', '2023-03-14 19:06:13'),
(6, 'MC & Entertainment', '<div>PCO<br>Sky Wedding<br>ullamcorper mattis.</div>', '2023-03-14 19:06:39', '2023-03-14 19:06:39'),
(8, 'Dress & Make Up', '<div>Sanggar Hera<br>Paula Bride<br>Jcl Bridal</div>', '2023-03-14 19:06:53', '2023-03-14 19:06:53');

-- --------------------------------------------------------

--
-- Struktur dari tabel `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `testimonis`
--

CREATE TABLE `testimonis` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nama` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `pesan` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `testimonis`
--

INSERT INTO `testimonis` (`id`, `nama`, `email`, `pesan`, `created_at`, `updated_at`) VALUES
(4, 'Zulfi Arkan Rangkuti', 'zulfiarkan321@gmail.com', 'saya sangat bersyukur bisa menemukan jasa wo panglipur manten karna baik dalam bidang dekorasi,baju pengantin semuanya sempurna yang membuat istri saya suka', '2023-03-14 18:55:39', '2023-03-14 18:55:39'),
(5, 'Royhan Audy Akbar', 'royhan14@gmail.com', 'Saya Menggunakan Jasa Undangan Digital nya saja, dan itu sangat bagus dan Harganya pun cukup Murah', '2023-03-14 18:56:50', '2023-03-14 18:56:50'),
(6, 'Muhamad Irsyad', 'irsyad@gmail.com', 'saya sangat puas dengan jasa website undangan digitalnya', '2023-03-14 20:39:39', '2023-03-14 20:39:39'),
(7, 'Rifky Muhammad', 'rifky@gmail.com', 'WO nya Bagus, Saya Suka', '2023-03-14 20:40:31', '2023-03-14 20:40:31');

-- --------------------------------------------------------

--
-- Struktur dari tabel `undigs`
--

CREATE TABLE `undigs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nama_pengantin` varchar(255) DEFAULT NULL,
  `url_pengantin` varchar(255) DEFAULT NULL,
  `foto_depan` varchar(255) DEFAULT NULL,
  `bg_fotodepan` varchar(255) DEFAULT NULL,
  `foto_awal` varchar(255) DEFAULT NULL,
  `tgl_acara` varchar(255) DEFAULT NULL,
  `countdown` varchar(255) DEFAULT NULL,
  `foto_pasangan1` varchar(255) DEFAULT NULL,
  `nama_pasangan1` varchar(255) DEFAULT NULL,
  `ortu_pasangan1` varchar(255) DEFAULT NULL,
  `foto_pasangan2` varchar(255) DEFAULT NULL,
  `nama_pasangan2` varchar(255) DEFAULT NULL,
  `ortu_pasangan2` varchar(255) DEFAULT NULL,
  `jam_akad` varchar(255) DEFAULT NULL,
  `jam_resepsi` varchar(255) DEFAULT NULL,
  `tempat_akad` varchar(255) DEFAULT NULL,
  `tempat_resepsi` varchar(255) DEFAULT NULL,
  `tempatlengkap_akad` varchar(255) DEFAULT NULL,
  `tempatlengkap_resepsi` varchar(255) DEFAULT NULL,
  `iframeMaps` text DEFAULT NULL,
  `linkMaps` varchar(255) DEFAULT NULL,
  `turut_mengundang` text DEFAULT NULL,
  `gallery1` varchar(255) DEFAULT NULL,
  `gallery2` varchar(255) DEFAULT NULL,
  `gallery3` varchar(255) DEFAULT NULL,
  `gallery4` varchar(255) DEFAULT NULL,
  `gallery5` varchar(255) DEFAULT NULL,
  `gallery6` varchar(255) DEFAULT NULL,
  `bgm` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `undigs`
--

INSERT INTO `undigs` (`id`, `nama_pengantin`, `url_pengantin`, `foto_depan`, `bg_fotodepan`, `foto_awal`, `tgl_acara`, `countdown`, `foto_pasangan1`, `nama_pasangan1`, `ortu_pasangan1`, `foto_pasangan2`, `nama_pasangan2`, `ortu_pasangan2`, `jam_akad`, `jam_resepsi`, `tempat_akad`, `tempat_resepsi`, `tempatlengkap_akad`, `tempatlengkap_resepsi`, `iframeMaps`, `linkMaps`, `turut_mengundang`, `gallery1`, `gallery2`, `gallery3`, `gallery4`, `gallery5`, `gallery6`, `bgm`, `created_at`, `updated_at`) VALUES
(1, 'Poppy & Fitra', 'poppy-fitra', '1678322453_10.jpeg', '1678322453_3.jpeg', '1678322453_2.jpeg', 'Minggu, 8 January 2023', 'Jan 8, 2023 10:00:00', '1.png', 'Poppy Niswara Puja Pitaloka, M.Pd.', 'Bapak Eko Pujo Kasworo & Ibu Murniati', '1678322453_2.png', 'Fitra Mulyadi, S.Pd.I', 'Bapak Pepen & Ibu Muliah', '08:00 WIB', '10:00 s/d 18:00 WIB', 'Yayasan Baitul Ma\'moer', 'Yayasan Baitul Ma\'moer', 'Jl. Raya Bojonggede Kp. Gelonggong Desa Kedungwaringin RT 06/05 no. 80 Bojonggede Bogor Jawa Barat Indonesia', 'Jl. Raya Bojonggede Kp. Gelonggong Desa Kedungwaringin RT 06/05 no. 80 Bojonggede Bogor Jawa Barat Indonesia', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3964.146660535104!2d106.79187211419635!3d-6.503111265386197!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x2e69c24a8574ff0b%3A0xfce688812f5464c9!2sYayasan%20Baitul%20Ma%20Moer!5e0!3m2!1sid!2sid!4v1670506646186!5m2!1sid!2sid\"                 class=\"maps mt-5\" allowfullscreen=\"\" loading=\"lazy\" referrerpolicy=\"no-referrer-when-downgrade\"></iframe>', 'https://goo.gl/maps/HtgtduN6ALWhWpwR7', '<li>Bpk Mursid</li>\r\n                            <li>Bpk Ali Wahyudi</li>\r\n                            <li>Bpk Widodo Iswantoro</li>\r\n                            <li>Kel. Besar SMKN 1 Bogor</li>\r\n                            <li>Kel. Besar SMK INFOKOM Bogor</li>\r\n                            <li>Kel. Besar Yayasan Tri Dharma Bogor</li>\r\n                            <li>Kel. Besar MT DATA Bogor</li>', '1678322453_1.png', '1678322453_2.jpeg', '1678322453_3.jpeg', '1678322453_6.jpeg', '1678322453_7.jpeg', '1678322453_4(1).jpeg', '1678322453_bgm123.mp3', '2023-03-08 17:40:54', '2023-03-08 17:40:54');

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `role` enum('admin','sub-admin') DEFAULT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `role`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Muhamad Nazar', 'admin@gmail.com', NULL, '$2y$10$QlSYpuRy4ngT/75neVDjUu3p7Pyp4bc/P8o.OUYkVUrlJtLlyXYbK', 'admin', NULL, '2023-03-14 19:32:18', '2023-03-14 19:32:18');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `additional_packages`
--
ALTER TABLE `additional_packages`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `additional_pack_details`
--
ALTER TABLE `additional_pack_details`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `articles`
--
ALTER TABLE `articles`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `event_packages`
--
ALTER TABLE `event_packages`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `event_pack_details`
--
ALTER TABLE `event_pack_details`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indeks untuk tabel `galleries`
--
ALTER TABLE `galleries`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `offering_packages`
--
ALTER TABLE `offering_packages`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `password_resets`
--
ALTER TABLE `password_resets`
  ADD PRIMARY KEY (`email`);

--
-- Indeks untuk tabel `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indeks untuk tabel `testimonis`
--
ALTER TABLE `testimonis`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `undigs`
--
ALTER TABLE `undigs`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `additional_packages`
--
ALTER TABLE `additional_packages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `additional_pack_details`
--
ALTER TABLE `additional_pack_details`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT untuk tabel `articles`
--
ALTER TABLE `articles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `event_packages`
--
ALTER TABLE `event_packages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT untuk tabel `event_pack_details`
--
ALTER TABLE `event_pack_details`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT untuk tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `galleries`
--
ALTER TABLE `galleries`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT untuk tabel `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT untuk tabel `offering_packages`
--
ALTER TABLE `offering_packages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT untuk tabel `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `testimonis`
--
ALTER TABLE `testimonis`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT untuk tabel `undigs`
--
ALTER TABLE `undigs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
