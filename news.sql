-- phpMyAdmin SQL Dump
-- version 5.1.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: May 29, 2023 at 02:08 PM
-- Server version: 8.0.28
-- PHP Version: 7.3.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `news`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint UNSIGNED NOT NULL,
  `category_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `category_name`, `created_at`, `updated_at`) VALUES
(1, 'Thể thao', '2023-05-23 21:11:06', '2023-05-23 21:11:06'),
(2, 'Chính trị', '2023-05-23 21:11:06', '2023-05-23 21:11:06'),
(3, 'Giải trí', '2023-05-23 21:11:06', '2023-05-23 21:11:06'),
(4, 'Công nghệ', '2023-05-23 21:11:06', '2023-05-24 10:42:55');

-- --------------------------------------------------------

--
-- Table structure for table `category_news`
--

CREATE TABLE `category_news` (
  `id` bigint UNSIGNED NOT NULL,
  `category_id` bigint UNSIGNED DEFAULT NULL,
  `news_id` bigint UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `category_news`
--

INSERT INTO `category_news` (`id`, `category_id`, `news_id`, `created_at`, `updated_at`) VALUES
(4, 1, 1, '2023-05-24 09:54:32', '2023-05-24 09:54:32'),
(7, 1, 2, '2023-05-24 10:32:12', '2023-05-24 10:32:12'),
(9, 2, 3, '2023-05-24 10:36:52', '2023-05-24 10:36:52'),
(11, 3, 5, '2023-05-24 10:42:02', '2023-05-24 10:42:02'),
(12, 1, 6, '2023-05-24 17:06:26', '2023-05-24 17:06:26'),
(14, 1, 7, '2023-05-24 17:08:38', '2023-05-24 17:08:38'),
(16, 1, 8, '2023-05-24 17:10:27', '2023-05-24 17:10:27'),
(18, 3, 9, '2023-05-24 17:16:03', '2023-05-24 17:16:03'),
(21, 3, 10, '2023-05-24 17:23:06', '2023-05-24 17:23:06'),
(24, 2, 4, '2023-05-25 07:02:14', '2023-05-25 07:02:14'),
(27, 4, 11, '2023-05-25 07:32:23', '2023-05-25 07:32:23'),
(28, 4, 12, '2023-05-25 07:55:30', '2023-05-25 07:55:30'),
(30, 4, 13, '2023-05-25 07:59:23', '2023-05-25 07:59:23'),
(31, 4, 14, '2023-05-25 08:01:23', '2023-05-25 08:01:23'),
(33, 4, 16, '2023-05-25 08:05:06', '2023-05-25 08:05:06'),
(34, 1, 17, '2023-05-25 08:08:58', '2023-05-25 08:08:58'),
(35, 4, 15, '2023-05-25 08:19:34', '2023-05-25 08:19:34'),
(39, 2, 19, '2023-05-25 08:56:33', '2023-05-25 08:56:33'),
(40, 2, 20, '2023-05-25 09:02:33', '2023-05-25 09:02:33'),
(41, 3, 18, '2023-05-25 09:07:27', '2023-05-25 09:07:27');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `images`
--

CREATE TABLE `images` (
  `id` bigint UNSIGNED NOT NULL,
  `image_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `news_id` bigint UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `images`
--

INSERT INTO `images` (`id`, `image_name`, `news_id`, `created_at`, `updated_at`) VALUES
(1, 'f9Q0hFktpj1684947198.jpg', NULL, '2023-05-24 09:53:18', '2023-05-24 09:53:18'),
(2, '5ILlxCjLAo1684949130.jpg', NULL, '2023-05-24 10:25:30', '2023-05-24 10:25:30'),
(3, 'DnMOeuFOvo1684949796.jpg', NULL, '2023-05-24 10:36:36', '2023-05-24 10:36:36'),
(4, '1ZveL4oqSl1684949922.jpg', NULL, '2023-05-24 10:38:42', '2023-05-24 10:38:42'),
(5, 'ORq83CATWT1684950016.jpg', NULL, '2023-05-24 10:40:16', '2023-05-24 10:40:16'),
(6, 'DXotKHDqxE1684973108.jpg', NULL, '2023-05-24 17:05:08', '2023-05-24 17:05:08'),
(7, 'rC2Je1R49w1684973250.png', NULL, '2023-05-24 17:07:30', '2023-05-24 17:07:30'),
(8, 'LQgS0noKJj1684973413.jpg', NULL, '2023-05-24 17:10:13', '2023-05-24 17:10:13'),
(9, 'nIHA0DcArY1684973593.jpg', NULL, '2023-05-24 17:13:13', '2023-05-24 17:13:13'),
(10, 'PcIrpNxlK51684973750.jpg', NULL, '2023-05-24 17:15:50', '2023-05-24 17:15:50'),
(11, 'vMItAdWQXj1685025004.jpg', 11, '2023-05-25 07:30:04', '2023-05-25 07:30:04'),
(12, 'db5NRbqa5v1685026530.jpg', 12, '2023-05-25 07:55:30', '2023-05-25 07:55:30'),
(13, 'dYnGryKUGw1685026730.jpg', 13, '2023-05-25 07:58:50', '2023-05-25 07:58:50'),
(14, 'Q7nciwJszI1685026883.jpg', 14, '2023-05-25 08:01:23', '2023-05-25 08:01:23'),
(15, 'oNulz8OujE1685026974.jpg', 15, '2023-05-25 08:02:54', '2023-05-25 08:02:54'),
(16, 'CwzqTRxSwi1685027106.jpg', 16, '2023-05-25 08:05:06', '2023-05-25 08:05:06'),
(17, 'qd5VjHlTRK1685027338.jpg', 17, '2023-05-25 08:08:58', '2023-05-25 08:08:58'),
(18, 'mowmKJdmyb1685028910.jpg', 18, '2023-05-25 08:35:10', '2023-05-25 08:35:10'),
(19, 'PMpleTroic1685030142.jpg', 19, '2023-05-25 08:55:42', '2023-05-25 08:55:42'),
(20, 'gy7pnw8Qpd1685030553.jpg', 20, '2023-05-25 09:02:33', '2023-05-25 09:02:33');

-- --------------------------------------------------------

--
-- Table structure for table `menus`
--

CREATE TABLE `menus` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `body` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `menus`
--

INSERT INTO `menus` (`id`, `name`, `body`, `created_at`, `updated_at`) VALUES
(1, 'main_menu', '1,2,3', '2023-05-23 21:11:06', '2023-05-23 21:11:06');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2022_11_15_043456_create_categories_table', 1),
(6, '2022_11_15_072820_create_news_table', 1),
(7, '2022_11_16_032811_create_category_news_table', 1),
(8, '2022_11_16_044605_create_images_table', 1),
(9, '2022_11_28_062911_alter_table_news', 1),
(10, '2022_12_10_141239_create_headers_table', 1),
(11, '2022_12_15_150307_create_tags_table', 1),
(12, '2022_12_18_111542_create_tagables_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `news`
--

CREATE TABLE `news` (
  `id` bigint UNSIGNED NOT NULL,
  `title` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `excerpt` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `is_published` tinyint(1) NOT NULL DEFAULT '1',
  `is_trending_news` tinyint(1) NOT NULL DEFAULT '0',
  `featured_image_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `author_id` bigint UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `views_count` bigint UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `news`
--

INSERT INTO `news` (`id`, `title`, `slug`, `description`, `excerpt`, `is_published`, `is_trending_news`, `featured_image_name`, `author_id`, `created_at`, `updated_at`, `views_count`) VALUES
(1, 'CLB Thái Lan trừ lương cầu thủ ẩu đả với Indonesia', 'cau-thu-thai-lan-au-da', '<p><span style=\"color: rgb(16, 16, 16);\">Ngoài án phạt từ LĐBĐ Thái Lan FAT, Thirapak Prueangna nhận thêm án kỷ luật từ CLB chủ quản Buriram United sau vụ ẩu đả với Indonesia ở chung kết SEA Games 32.</span></p><p>Buriram United phạt 25% lương của Thirapak Prueangna trong sáu tháng. Cùng thời gian này, tiền vệ sinh năm 2001 không được tham dự mọi trận đấu của CLB.</p><p>Buriram United coi đây là bài học trong việc chăm sóc cầu thủ trưởng thành hơn về mặt cảm xúc. \"Các cầu thủ phải hiểu hiệu ứng hình ảnh và danh tiếng khi đại diện cho bóng đá Thái Lan\", thông báo của CLB có đoạn. \"Nếu không thể kiểm soát bản thân, CLB sẽ không hỗ trợ cầu thủ lên tuyển\".</p><p>Sau&nbsp;<a href=\"https://vnexpress.net/the-thao/thai-lan-va-indonesia-hon-chien-o-chung-ket-sea-games-4606093.html\" target=\"_blank\" style=\"color: rgb(7, 109, 182);\">vụ hỗn chiến</a>, FAT đã lập uỷ ban kỷ luật để điều tra về vụ hỗn chiến. Đến hôm qua 23/5,&nbsp;<a href=\"https://vnexpress.net/the-thao/thai-lan-phat-nang-hlv-va-cau-thu-xo-xat-indonesia-4608648.html\" target=\"_blank\" style=\"color: rgb(7, 109, 182);\">FAT ra án phạt</a>&nbsp;cấm Thirapak không được lên mọi cấp độ đội tuyển Thái Lan trong sáu tháng. Thủ môn Soponwit Rakyart nhận án phạt tương tự, nhưng CLB Phrae United không có án phạt riêng. FAT tuyên bố nương tay với hai cầu thủ vì họ còn trẻ và đã đưa ra lời xin lỗi ngay sau vụ việc.</p><p>Ngoài hai cầu thủ, HLV thủ môn Prasadchok Chokmoh, trợ lý HLV Phatrawut Wongsripuek và lãnh đạo đội Mayid Madada bị cấm làm việc ở các đội tuyển Thái Lan trong một năm.</p><p>Chung kết SEA Games 32 hôm 16/5 diễn ra kịch tính với bàn gỡ hoà 2-2 của Thái Lan ở phút bù thứ chín hiệp hai. Ngay sau đó, một số thành viên của họ chạy sang khu kỹ thuật Indonesia ăn mừng, dẫn đến ẩu đả lần thứ nhất.</p><p>Đến hiệp phụ, Irfan Jauhari ghi bàn ngay phút 91 để đưa Indonesia lên dẫn 3-2. Lúc này, đến lượt thành viên Indonesia chạy sang khu kỹ thuật của Thái Lan ăn mừng. Vụ ẩu đả lần này diễn ra căng thẳng hơn, thậm chí trưởng đoàn Indonesia Kombes Surmadji cũng bị đánh. Cuối cùng, Indonesia thắng chung cuộc 5-2 để giành HC vàng bóng đá nam sau 32 năm.</p><p>Vụ việc tạo nên hình ảnh xấu cho bóng đá Đông Nam Á. Sau án phạt của FAT, một số ý kiến cho rằng Liên đoàn Bóng đá Indonesia cũng cần đưa ra án phạt cho thành viên đội. Còn Liên đoàn Bóng đá châu Á AFC sẽ có án phạt bổ sung trong thời gian tới.</p>', 'Ngoài án phạt từ LĐBĐ Thái Lan FAT, Thirapak Prueangna nhận thêm án kỷ luật từ CLB chủ quản Buriram United sau vụ ẩu đả với Indonesia ở chung kết SEA Games 32.', 1, 0, 'f9Q0hFktpj1684947198.jpg', 1, '2023-05-23 21:11:06', '2023-05-24 09:54:32', 3),
(2, 'Thầy giáo dạy golf gây sốt ở PGA Championship 2023', 'Repellat.', '<p>HLV golf Michael Block bỗng nổi tiếng nhờ các thành tích ấn tượng tại major do Hiệp hội golf nhà nghề Mỹ chủ trì ở New York cuối tuần qua.</p><p>Từ sau kỳ đấu 1986 đến trước 2023, chưa có thầy dạy golf nào qua cắt loại tại PGA Championship. Năm nay, Block dự lần thứ năm, lại sớm đặt sẵn vé máy bay để về nhà vì nghĩ anh trụ được chỉ hai vòng. Nhưng khi kết thúc vòng 2, Block đạt even par trong khi điểm lọc +5, còn lượng khán giả thực địa cổ vũ anh đã tăng đáng kể.</p><p>Chặng áp chót, Block tiếp tục đánh 70 gậy, qua đó đứng T8, còn điểm giải vẫn even par và cách đỉnh bảng sáu gậy. Trong tầm cách biệt đó có tổng cộng chín đấu thủ, tính cả Block. Khi đó, giới chuyên môn và truyền thông Mỹ nghĩ đến khả năng Block làm nên \"điều kỳ diệu\".</p><p>Vòng cuối, Block đánh chung nhóm Rory McIlroy, đi từ hố 1. Khi lên khu phát nhập cuộc, anh được khán giả thực địa tán thưởng không kém ngôi sao hạng A trên PGA Tour.</p><p><span style=\"background-color: rgb(252, 250, 246); color: rgb(34, 34, 34);\">Qua 14 hố, Block ghi hai bogey, còn lại đều par, khiến điểm giải xuống +2. Nhưng vào hố 15, anh bất ngờ ghi hole-in-one kiểu \"úp lỗ\" khi phát bằng gậy sắt số 7, khiến đám đông bùng nổ.</span></p>', NULL, 1, 0, '5ILlxCjLAo1684949130.jpg', 2, '2023-05-23 21:11:06', '2023-05-24 10:32:12', 0),
(3, 'Nga tịch thu căn hộ của Đệ nhất Phu nhân Ukraine', 'nga-tich-thu-can-ho-cua-de-nhat-phu-nhan-ukraine', '<p>Giới chức Crimea tịch thu tài sản của tài phiệt và chính trị gia Ukraine trên bán đảo, trong đó có căn hộ của Đệ nhất Phu nhân Olena Zelenska.</p><p>Lãnh đạo bán đảo Crimea Sergey Aksyonov ngày 24/5 thông báo \"quốc hữu hóa\" hơn 130 bất động sản liên quan Ukraine, gồm rạp phim, nhà máy, trung tâm mua sắm, nhà máy rượu vang và ngân hàng. Trong số bất động sản bị tịch thu còn có cả căn hộ cao cấp thuộc sở hữu Đệ nhất Phu nhân Ukraine Olena Zelenska.</p><p>Căn hộ của bà Zelenska gồm ba phòng ngủ, nằm gần thành phố nghỉ dưỡng Yalta, ước tính trị giá 800.000 USD. Căn hộ này được mua lại từ một doanh nhân vào năm 2013 với giá chưa tới 164.000 USD.</p><p>Chủ tịch cơ quan lập pháp Crimea Vladimir Konstantinov cho biết tài sản tịch thu sẽ được rao bán và dùng khoản tiền đó giúp đỡ gia đình các binh sĩ thiệt mạng trong chiến sự.</p><p>Hồi tháng 2, Crimea cũng thông báo tịch thu 500 bất động sản thuộc sở hữu các chính trị gia và doanh nhân Ukraine. Đây được coi là hành động đáp trả đạo luật được Ukraine ban hành hồi năm ngoái, cho phép tịch thu tài sản của công dân và doanh nghiệp Nga tại nước này. Hồi tháng 8/2022, Kiev đã tịch thu hơn 900 bất động sản của Nga tại Ukraine, ước tính trị giá 765 triệu USD.</p><p>Từ khi mở chiến dịch quân sự tại&nbsp;<a href=\"https://vnexpress.net/chu-de/ukraine-692\" target=\"_blank\" style=\"color: rgb(7, 109, 182);\">Ukraine</a>&nbsp;hồi tháng 2/2022, Nga bị các nước phương Tây tịch thu loạt tài sản thuộc cả nhà nước và tư nhân. Mỹ và Liên minh châu Âu (EU) đang tìm cách bán số tài sản của Nga để chuyển tiền cho quỹ tái thiết Ukraine.</p><p><a href=\"https://vnexpress.net/chu-de/nga-710\" target=\"_blank\" style=\"color: rgb(7, 109, 182);\">Nga</a>&nbsp;sáp nhập bán đảo Crimea sau cuộc trưng cầu dân ý hồi năm 2014. Moskva nói rằng kết quả trưng cầu dân ý cho thấy hầu hết người dân Crimea muốn trở thành một phần của Nga, song Ukraine và các nước phương Tây xem động thái này là bất hợp pháp. Kiev nhiều lần tuyên bố sẽ giành lại bán đảo.</p>', 'Giới chức Crimea tịch thu tài sản của tài phiệt và chính trị gia Ukraine trên bán đảo, trong đó có căn hộ của Đệ nhất Phu nhân Olena Zelenska.', 1, 0, 'DnMOeuFOvo1684949796.jpg', 2, '2023-05-23 21:11:06', '2023-05-24 10:36:52', 0),
(4, 'Tên lửa S-350 Nga có thể lần đầu tự động hạ mục tiêu ở Ukraine', 'ten-lua-s-350-nga-co-the-lan-dau-tu-dong-ha-muc-tieu-o-ukraine', '<p>Hệ thống phòng không S-350 Nga lần đầu tự động phát hiện và diệt mục tiêu ở Ukraine mà không cần kíp điều khiển can thiệp, theo quan chức quân sự Moskva.</p><p>\"Hệ thống phòng không S-350 Vityaz tham gia chiến dịch đã phát hiện, bám bắt và đánh chặn mục tiêu Ukraine ở chế độ vận hành hoàn toàn tự động. Nhiều chiến đấu cơ và máy bay không người lái Ukraine đã bị tổ hợp này bắn hạ\", hãng thông tấn&nbsp;<em>RIA Novosti</em>&nbsp;ngày 24/5 dẫn lời quan chức giấu tên trong Bộ Quốc phòng Nga.</p><p>Nguồn tin thêm rằng đây là lần đầu chế độ này được sử dụng trong điều kiện tác chiến thực tế ở Ukraine. Kíp điều khiển chỉ có nhiệm vụ giám sát hoạt động của hệ thống S-350 và xác nhận thông tin do thuật toán đưa ra mà không can thiệp vào quá trình khai hỏa.</p><p>Tổ hợp S-350 Nga cũng hoạt động trong cả chế độ radar chủ động và bị động, nhằm đối phó với biện pháp gây nhiễu và chế áp phòng không của Ukraine, cũng như cải thiện khả năng phát hiện và phân loại mục tiêu trong điều kiện tác chiến phức tạp.</p><p>Đây là lần đầu tiên Nga xác nhận thông tin triển khai hệ thống S-350 tới tham chiến ở Ukraine.</p><p>Tên lửa phòng không tầm trung S-350 Vityaz được tập đoàn Almaz-Antey phát triển từ năm 2009 trên cơ sở chương trình hợp tác phát triển tên lửa KM-SAM (Cheolmae-2) giữa Nga và Hàn Quốc. Vityaz là hệ thống hoàn toàn mới, thay vì chỉ là phiên bản nâng cấp của các tổ hợp tên lửa phòng không thời Liên Xô.</p><p>Mỗi tổ hợp S-350 gồm một xe chỉ huy 50K6E, hai radar cảnh giới và dẫn bắn 50N6E, cùng 8 xe phóng 50P6 với tối đa 96 quả đạn trong trạng thái sẵn sàng chiến đấu. Hệ thống S-350 có thể tấn công cùng lúc 16 máy bay hoặc 12 tên lửa đạn đạo ở khoảng cách 120 km.</p><p>S-350 cũng có thể sử dụng tên lửa tầm ngắn 9M100 với tầm bắn 15 km và có kích thước nhỏ hơn nhiều so với đạn 9M96 để thực hiện nhiệm vụ phòng không cục bộ.</p><p>Quân đội Nga hồi tháng 8/2022 triển khai hệ thống S-350 tại căn cứ Taganrog thuộc tỉnh Rostov, cách biên giới&nbsp;<a href=\"https://vnexpress.net/chu-de/ukraine-692\" target=\"_blank\" style=\"color: rgb(7, 109, 182);\">Ukraine&nbsp;</a>hơn 60 km, nhưng chưa rõ tổ hợp này có được bố trí ở tiền tuyến hay không.</p>', 'Hệ thống phòng không S-350 Nga lần đầu tự động phát hiện và diệt mục tiêu ở Ukraine mà không cần kíp điều khiển can thiệp, theo quan chức quân sự Moskva.', 1, 0, '1ZveL4oqSl1684949922.jpg', 2, '2023-05-23 21:11:06', '2023-05-25 07:02:14', 0),
(5, 'Tỷ phú Jeff Bezos đính hôn', 'ty-phu-jeff-bezos-dinh-hon', '<p>Truyền thông Mỹ đưa tin tỷ phú Jeff Bezos đã đính hôn với bạn gái Lauren Sanchez sau 5 năm hẹn hò.</p><p>Ông chủ Amazon, 59 tuổi, đã đính hôn với bạn gái Sanchez, 53 tuổi,<em>&nbsp;Page Six</em>&nbsp;hôm 22/5 dẫn các nguồn tin thân cận với Bezos và bạn gái cho hay. Tin đồn về việc đính hôn đã xuất hiện tuần qua khi Sanchez đeo nhẫn kim cương ở ngón áp út, xuất hiện cùng bạn trai trên du thuyền 500 triệu USD.</p><p>Bezos và bạn gái tới miền nam nước Pháp để tham dự Liên hoan phim Cannes. Họ tổ chức các bữa tiệc với sự góp mặt của nhiều người nổi tiếng trên du thuyền sang trọng.</p><p>Hiện chưa rõ thời điểm tỷ phú cầu hôn bạn gái, nhưng họ đã dành nhiều thời gian trên biển từ khi du thuyền của Bezos được hoàn thành vào tháng 3.</p><p>Bezos từng tặng cho Sanchez chiếc nhẫn đính viên kim cương hình trái tim màu vàng 7-10 carat trị giá khoảng 150.000 USD vào năm 2019.</p><p>Hai người công khai hẹn hò năm 2019 sau khi&nbsp;<a href=\"https://vnexpress.net/chu-de/jeff-bezos-1852\" target=\"_blank\" style=\"color: rgb(7, 109, 182);\">Bezos&nbsp;</a>tuyên bố ly hôn người vợ gắn bó 25 năm MacKenzie. Sanchez sinh năm 1969 ở Mỹ, là diễn viên, MC kiêm bà chủ hãng quay phim trên không. Cô trải qua hai cuộc hôn nhân và có ba con trước khi hẹn hò với Bezos.</p><p>Trong những năm hẹn hò, Sanchez đã du lịch khắp thế giới cùng Bezos. Cô say sưa nói về bạn trai trong lời chúc mừng sinh nhật hồi tháng 1.</p><p>Trả lời phỏng vấn cùng bạn gái hồi tháng 11/2022, tỷ phú Bezos nói rằng sẽ&nbsp;<a href=\"https://vnexpress.net/ty-phu-amazon-tuyen-bo-danh-phan-lon-tai-san-lam-tu-thien-4536070.html\" target=\"_blank\" style=\"color: rgb(7, 109, 182);\">cho đi phần lớn tài sản&nbsp;</a>124 tỷ USD để giúp chống biến đổi khí hậu và ủng hộ những người \"có thể đoàn kết nhân loại\". Đây là lần đầu tiên hai người nhận trả lời phỏng vấn cùng nhau từ khi bắt đầu hẹn hò.</p>', NULL, 1, 0, 'ORq83CATWT1684950016.jpg', 1, '2023-05-23 21:11:06', '2023-05-24 10:42:02', 0),
(6, 'Real thắng trong ngày vắng Vinicius', 'real-thang-trong-ngay-vang-vinicius', '<p><span style=\"background-color: rgb(252, 250, 246); color: rgb(34, 34, 34);\">Tiền đạo Vinicius không thi đấu nhưng vẫn nhận được sự ủng hộ từ các cầu thủ và người hâm mộ Real, trong trận thắng Vallecano 2-1 ở vòng 36 La Liga.</span></p><p>Vinicius được&nbsp;<a href=\"https://vnexpress.net/bong-da/vinicius-duoc-xoa-the-do-4608977.html\" target=\"_blank\" style=\"color: rgb(7, 109, 182);\">xóa thẻ đỏ</a>&nbsp;vì lỗi đánh nguội Hugo Duro cuối trận thua Valencia 0-1 cuối tuần qua, nhưng không thi đấu vì gặp vấn đề nhẹ ở đầu gối. Anh chỉ xuống sân chào người hâm mộ trước trận rồi lên khán đài VIP theo dõi trận đấu bên cạnh Chủ tịch Florentino Perez. Tới phút 20, cả khán đài Bernabeu đồng loạt đứng dậy vỗ tay và hô vang tên Vinicius để thể hiện sự ủng hộ trước làn sóng phản đối phân biệt chủng tộc. Đáp lại, tiền đạo 22 tuổi cũng đứng dậy và vẫy tay chào người hâm mộ.&nbsp;<a href=\"https://vnexpress.net/chu-de/vinicius-junior-3330\" target=\"_blank\" style=\"color: rgb(7, 109, 182);\">Vinicius</a>&nbsp;cũng viết thông điệp trên mạng xã hội sau trận: \"Tôi yêu các bạn. Cảm ơn, cảm ơn và cảm ơn\".</p><p>Vắng Vinicius,&nbsp;<a href=\"https://vnexpress.net/the-thao/du-lieu-bong-da/doi-bong/real-madrid-541\" target=\"_blank\" style=\"color: rgb(7, 109, 182);\">Real</a>&nbsp;xung trận với bộ ba tiền đạo Federico Valverde, Karim Benzema và Rodrygo. Cả ba cầu thủ này đều góp công để giữ ba điểm ở lại Bernabeu.</p><p>Phút 31, Valverde chọc khe để Benzema thoát xuống vượt qua cả thủ thành Stole Dimitrievski rồi đưa bóng vào lưới trống. Tiền đạo Pháp cán mốc 30 bàn trong ba mùa gần nhất cho Real, sau khi chỉ đạt thành tích này ở hai trong 11 mùa trước đó với CLB - 32 bàn mùa 2011-2012 và 30 bàn mùa 2018-2019.</p><p>Sau khi để Raul De Tomas gỡ hòa, đội bóng hoàng gia ấn định tỷ số ở phút 89. Nhận bóng từ Dani Ceballos, Rodrygo đột phá đến sát vòng cấm rồi đặt lòng chân phải về góc xa ngoài tầm cản phá của Dimitrievski. Tiền đạo Brazil ghi bảy bàn qua 32 trận tại La Liga mùa này - thành tích bằng cả ba mùa giải đầu tiên cho Real với 74 trận.</p><p>Chiến thắng 2-1 giúp Real vượt mặt Atletico, CLB bị Espanyol cầm chân 3-3, để trở lại vị trí thứ hai. Ở hai vòng cuối, đội bóng hoàng gia sẽ lần lượt làm khách của Sevilla ngày 27/5 và tiếp Bilbao ngày 4/6.</p><p><br></p><p><br></p>', NULL, 1, 0, 'DXotKHDqxE1684973108.jpg', 2, '2023-05-23 21:11:06', '2023-05-24 17:06:26', 0),
(7, 'Man Utd đàm phán mượn Neymar', 'man-utd-dam-phan-muon-neymar', '<p>PSG sẵn sàng trả một phần lương của Neymar nếu cho Man Utd mượn ngôi sao này, theo báo Pháp L\'Équipe.</p><p>Neymar vẫn đang nghỉ thi đấu vì chấn thương mắt cá chân phải từ tháng 2/2023. Anh phải phẫu thuật hồi tháng 3 và chắc chắn phải vắng mặt đến hết mùa giải. Nhưng theo&nbsp;<em>L\'Équipe</em>, Man Utd đang đàm phán mượn ngôi sao Brazil, có thể kèm theo điều khoản mua đứt. PSG còn sẵn sàng trả một phần lương của Neymar nếu anh sang Man Utd.</p><p>Tiền vệ Casemiro cũng đang thúc giục ban lãnh đạo Man Utd đưa đồng hương Neymar về Old Trafford. Man Utd nhiều khả năng sẽ không ký hợp đồng dài hạn với tiền đạo Wout Weghorst, trong khi Anthony Martial thường xuyên vật lộn với chấn thương. \"Quỷ Đỏ\" sẽ buộc phải chiêu mộ cầu thủ tấn công trong hè 2023 và Neymar là phương án được tính đến.</p><p>Đẳng cấp của Neymar không phải bàn cãi khi anh ghi 18 bàn, kiến tạo 13 lần trong 29 trận cho PSG mùa này. Nhưng vấn đề với cầu thủ 31 tuổi là anh nhạy cảm với chấn thương, khi chỉ chơi hơn một nửa số trận so với đồng đội như Kylian Mbappe. Kể từ khi rời Barca, hầu như mùa nào Neymar cũng vắng mặt hơn 20 trận vì chấn thương ở các vị trí khác nhau, chủ yếu là mắt cá chân và hông.</p><p>Nếu không tới&nbsp;<a href=\"https://vnexpress.net/the-thao/du-lieu-bong-da/doi-bong/man-utd-33\" target=\"_blank\" style=\"color: rgb(7, 109, 182);\">Man Utd</a>, điểm đến tiếp theo của Neymar cũng nhiều khả năng là Ngoại hạng Anh bởi không còn giải nào khác đáp ứng được mức lương của anh. Theo&nbsp;<em>Marca</em>, Neymar đang lĩnh 78 triệu USD mỗi năm, trước thuế, trong hợp đồng có thời hạn đến hè 2027.</p><p>Ngoài Neymar,&nbsp;<a href=\"https://vnexpress.net/the-thao/du-lieu-bong-da/doi-bong/psg-85\" target=\"_blank\" style=\"color: rgb(7, 109, 182);\">PSG</a>&nbsp;cũng gần như chắc chắn chia tay Lionel Messi cuối mùa 2022-2023, vì hai bên hết hợp đồng và không tìm được tiếng nói chung để gia hạn. Đẩy hai ngôi sao này ra đi sẽ giúp PSG có thêm ngân sách để chiêu mộ những cầu thủ giỏi khác nhằm giúp đội bóng đạt mục tiêu vô địch Champions League.</p><p><a href=\"https://vnexpress.net/chu-de/neymar-335\" target=\"_blank\" style=\"color: rgb(7, 109, 182);\">Neymar</a>&nbsp;trưởng thành ở CLB Santos, ghi 136 bàn trong 225 trận cho đội này, trước khi sang Barca hè 2013. Trong bốn mùa giải ở Camp Nou, anh ghi 105 bàn trong 186 trận, giành tám danh hiệu trong đó có Champions League 2015. Anh đang chơi mùa thứ sáu ở PSG, với 12 danh hiệu, và sẽ là 13 khi họ gần như chắc chắn vô địch Ligue 1 năm nay</p>', NULL, 1, 0, 'rC2Je1R49w1684973250.png', 1, '2023-05-23 21:11:06', '2023-05-24 17:08:38', 0),
(8, 'Thái Lan phạt nặng HLV và cầu thủ xô xát Indonesia', 'thai-lan-phat-nang-hlv-va-cau-thu-xo-xat-indonesia', '<p>Thái Lan cấm lên tuyển sáu tháng với cầu thủ và cấm một năm với thành viên ban huấn luyện vì hành vi bạo lực ở chung kết SEA Games 32.</p><p>Sau khi xô xát xảy ra, Liên đoàn bóng đá Thái Lan (FAT) đã mời tướng Amnuay Nimmano chỉ đạo Ủy ban điều tra để làm rõ vụ việc. Quá trình điều tra diễn ra từ ngày 18/5 đến 22/5. Đến sáng nay, FAT công bố kết quả.</p><p>Theo đó, HLV thủ môn Prasadchok Chokmoh, trợ lý HLV Phatrawut Wongsripuek và quan chức đi cùng đội Mayid Madada bị cấm làm việc ở các đội tuyển quốc gia một năm. Theo&nbsp;<em>Thairath</em>, ba người này bị buộc tội vi phạm quy tắc đạo đức và chuẩn mực cho cá nhân hoạt động trong lĩnh vực thể thao, theo điều lệ của FAT.</p><p><em>Thairath&nbsp;</em>bình luận: \"Ngoài nhiệm vụ huấn luyện cho các cầu thủ, những người này có trách nhiệm dùng kinh nghiệm, hiểu biết và sự chín chắn của mình để đảm bảo các cầu thủ trẻ cư xử đúng mực. Đặc biệt ở đội U22, các cầu thủ trẻ cần có những tấm gương tốt về cách cư xử để được uốn nắn đúng cách. Thay vào đó, họ hành động sai, thậm chí dẫn đầu vụ ẩu đả nên không có lý do gì để được giảm án\".</p><p>Hai cầu thủ tham gia xô xát, gồm thủ môn Sohonwit Rakyath và cầu thủ dự bị Teerapak Pruengna, bị cấm khoác áo các đội tuyển trong sáu tháng. FAT tuyên bố nương tay với hai cầu thủ này vì họ còn trẻ và đã đưa ra lời xin lỗi sau vụ bạo loạn.</p>', NULL, 1, 0, 'LQgS0noKJj1684973413.jpg', 2, '2023-05-23 21:11:06', '2023-05-24 17:10:27', 0),
(9, 'Phạm Băng Băng diện váy \'rồng vờn mây sóng\'', 'pham-bang-bang-dien-vay-rong-von-may-song', '<p>Ngày 23/5, người đẹp 42 tuổi dự tiệc trong khuôn khổ Liên hoan phim Cannes. Cô mặc váy của nhà thiết kế Trung Quốc Cheney Chan.</p><p>Bộ đồ được thêu họa tiết rồng, sóng biển và mây trời. Nhà thiết kế áp dụng kỹ thuật thêu Hàng Châu - ngành nghề thủ công được công nhận là di sản văn hóa phi vật thể.</p><p>Trên Weibo, đại diện công ty quản lý của Băng Băng cho biết ý tưởng thực hiện bộ đầm đến từ Nhữ diêu - loại đồ gốm nổi tiếng và khan hiếm có từ thời Tống. Trên thế giới, hiện có không tới 100 chiếc thuộc dòng này, chủ yếu nằm ở bảo tàng Cố Cung ở Bắc Kinh và Đài Loan.</p><p><br></p>', NULL, 1, 0, 'nIHA0DcArY1684973593.jpg', 1, '2023-05-23 21:11:06', '2023-05-24 17:16:03', 0),
(10, 'Dàn mỹ nhân dự show Đỗ Long', 'dan-my-nhan-du-show-do-long', '<p>Các hoa hậu, á hậu dự sự kiện giới thiệu bộ sưu tập hè \"Rhythm Resort 2023\" của nhà nhà thiết kế giữa khung cảnh bên bờ biển, ngày 22/5.&nbsp;<a href=\"https://vnexpress.net/chu-de/hhen-nie-1222\" target=\"_blank\" style=\"color: rgb(7, 109, 182);\">H\'Hen Niê</a>&nbsp;chọn trang phục phá cách với chi tiết cut-out, phối nhiều phụ kiện.</p><p><span style=\"background-color: rgb(252, 250, 246); color: rgb(34, 34, 34);\">Hoa hậu Hà Kiều Anh mặc đầm tôn dáng dự sự kiện của nhà thiết kế Đỗ Long (phải). Chị đón tuổi 47 cách đây ít ngày, được nhiều khán giả khen sắc vóc trẻ trung.</span></p><p><span style=\"background-color: rgb(252, 250, 246); color: rgb(34, 34, 34);\">Lý Nhã Kỳ mặc tôn vòng một, phối phụ kiện kim cương.</span></p><p>Hoa hậu Trần Tiểu Vy diện váy cổ đổ khoét sâu, dáng đuôi cá. Mỹ nhân thân thiết với Đỗ Long từ sau đăng quang năm 2018, nhiều lần làm \"nàng thơ\" cho bộ sưu tập của anh.</p>', NULL, 1, 0, 'PcIrpNxlK51684973750.jpg', 2, '2023-05-23 21:11:06', '2023-05-24 17:23:06', 0),
(11, 'iPhone 14 vs iPhone 12: Chọn công nghệ hay giá tốt?', 'iphone-14-vs-iphone-12:-chọn-công-nghệ-hay-giá-tốt?', '<p>iPhone 14 được Apple xây dựng ngoại hình theo ngôn ngữ thiết kế mà hãng từng triển khai trên&nbsp;<a href=\"https://www.24h.com.vn/iphone-c407e1576.html\" target=\"_blank\" style=\"color: rgb(0, 0, 238);\">iPhone</a>&nbsp;12. Cả hai sản phẩm đều sử dụng khung nhôm nhẹ nhàng, vuốt cong các góc máy và vát phẳng các cạnh bên. Với hai mặt kính trước – sau, bộ đôi này đem đến cảm nhận thanh lịch mà sang trọng.</p><p>Sự khác biệt lớn nhất khi so sánh&nbsp;<a href=\"https://www.24h.com.vn/iphone-14-c407e6579.html\" target=\"_blank\" style=\"color: rgb(0, 0, 238);\">iPhone 14</a>&nbsp;và&nbsp;<a href=\"https://www.24h.com.vn/iphone-12-c407e5955.html\" target=\"_blank\" style=\"color: rgb(0, 0, 238);\">iPhone 12</a>&nbsp;nằm ở “tai thỏ” khi phần khuyết trong màn hình của iPhone 14 nhỏ hơn 20% so với iPhone 12.</p><p>Camera</p><p>Mặc dù iPhone 14 vẫn duy trì cụm camera kép với thông số 12MP + 12MP như iPhone 12, nhưng sản phẩm vượt trội người tiền nhiệm ở mọi tác vụ quay chụp.</p><p>Camera iPhone 14 có điểm ảnh lớn hơn và có khẩu độ rộng hơn (F/1.5 so với F/1.6). Ngoài ra, Apple còn bổ sung thêm tính năng Photonic Engine mới giúp iPhone 14 có thể chụp được những khuôn hình đẹp hơn nhiều so với iPhone 12 ở điều kiện ánh sáng từ trung bình đến thấp.</p><p>Ngoài ra, camera trước iPhone 14 cũng đánh dấu sự cải tiến khi khẩu độ F/1.9 vượt trội hơn F/2.2 và cho thấy hiệu suất selfie, gọi FaceTime và livestream tốt hơn trong bối cảnh ánh sáng yếu.</p><p>Cấu hình</p><p>iPhone 14 trang bị chip A15 Bionic cho hiệu suất vượt trội so với A14 của iPhone 12. Đặc biệt là khi phiên bản A15 Bionic mà Apple đem đến là bản cải tiến với 5 lõi GPU đặc biệt.</p><p>Sự khác biệt về chip này là yếu tố bạn nên đặc biệt cân nhắc khi lựa chọn giữa iPhone 14 và iPhone 12, bộ vi xử lý mạnh mẽ hơn giúp chiếc iPhone thế hệ mới chơi game mượt, render và chỉnh sửa video hiệu quả hơn, thực hiện các tác vụ cũng nhanh nhạy hơn trong thực tế.</p><p>iPhone 14 sở hữu viên pin 3.279 mAh – lớn hơn nhiều lần so với pin 2.815 mAh của iPhone 12, đây là một cải tiến đáng chú ý bởi dòng iPhone nổi tiếng với khả năng sử dụng pin hiệu quả, sự gia tăng dù nhỏ về mặt dung lượng cũng sẽ tác động mạnh đến thời lượng trải nghiệm trong thực tế.</p>', 'iPhone 14 được Apple xây dựng ngoại hình theo ngôn ngữ thiết kế mà hãng từng triển khai trên iPhone 12. Cả hai sản phẩm đều sử dụng khung nhôm nhẹ nhàng, vuốt cong các góc máy và vát phẳng các cạnh bên. Với hai mặt kính trước – sau, bộ đôi này đem đến cảm nhận thanh lịch mà sang trọng.\r\n\r\nSự khác biệt lớn nhất khi so sánh iPhone 14 và iPhone 12 nằm ở “tai thỏ” khi phần khuyết trong màn hình của iPhone 14 nhỏ hơn 20% so với iPhone 12.', 1, 0, 'vMItAdWQXj1685025004.jpg', NULL, '2023-05-25 07:30:04', '2023-05-25 07:32:23', 0),
(12, 'Apple chính thức công bố lịch trình WWDC 2023', 'apple-chính-thức-công-bố-lịch-trình-wwdc-2023', '<p>Theo&nbsp;<em>MacRumors</em>,&nbsp;<a href=\"https://www.24h.com.vn/apple-c55e3987.html\" target=\"_blank\" style=\"color: rgb(0, 0, 238);\">Apple</a>&nbsp;đã chính thức công bố lịch trình cho hội nghị các nhà phát triển hàng năm (WWDC) diễn ra từ ngày 5/6 - 9/6.</p><p>Theo đó, công ty xác nhận rằng bài phát biểu khai mạc của Apple sẽ bắt đầu vào lúc 10 giờ sáng ngày 5/6 theo giờ Mỹ, tức 0 giờ sáng ngày 6/6 giờ Việt Nam. Công ty dự kiến sẽ có những công bố quan trọng về iOS 17, macOS 14, watchOS 10, kính AR/VR, MacBook Air 15 inch và nhiều hơn nữa.</p><p>Sau bài phát biểu khai mạc, như thường lệ sẽ là phần chia sẻ chuyên sâu (Platforms State of the Union) diễn ra vào lúc 13 giờ 30 phút chiều cùng ngày, khoảng 3 giờ 30 phút sáng giờ Việt Nam. Phần phát biểu này sẽ tập trung vào nhà phát triển của Apple, cung cấp tổng quan về các công cụ và công nghệ mới trên các nền tảng của công ty.</p><p>Phần cuối cùng là giải thưởng Apple Design (Apple Design Awards), nhằm công nhận và tôn vinh chuyên môn nghệ thuật, thủ công, sáng tạo và công nghệ của cộng đồng nhà phát triển Apple.</p><p>WWDC 2023 chủ yếu sẽ được tổ chức trực tuyến, với 175 video có sẵn trên trang web và trong ứng dụng Apple Developer để mọi người có thể xem miễn phí. Ngoài ra, cũng sẽ có một phần sự kiện được tổ chức trực tiếp với các nhà phát triển được chọn ngẫu nhiên và một số nhân viên truyền thông đã được mời tham dự tại Apple Park vào ngày 5/6.</p>', 'Hội nghị nhà phát triển toàn cầu WWDC 2023 của Apple đã chính thức có lịch trình tổ chức với những mốc thời gian cụ thể.', 1, 1, 'db5NRbqa5v1685026530.jpg', NULL, '2023-05-25 07:55:30', '2023-05-25 07:55:30', 0),
(13, 'ChatGPT khiến các trường đại học phải thay đổi để thích nghi', 'chatgpt-quá-quyền-năng-các-trường-đại-học-phải-thay-đổi-để-thích-nghi', '<p>Công ty OpenAI đã phát hành ChatGPT-4, phiên bản mới nhất của chatbot AI đầy quyền năng. Nó có khả năng tạo ra những phản hồi giống con người một cách thuyết phục đối với hầu hết các câu hỏi. Nếu như các phiên bản trước đây còn xuất hiện lỗi hoặc các gợi ý trả lời khó hiểu thì ChatGPT-4 ít gặp những vấn đề này hơn. Các câu trả lời đều có vẻ đủ khả năng vượt qua các bài kiểm tra ở nhiều lĩnh vực.</p><p><br></p><p>Người ta nghĩ rằng có thể dễ dàng phân biệt các tác phẩm của AI và của con người trong các công việc như viết lách sáng tạo, suy luận, xâu chuỗi nhiều loại thông tin khác nhau, nhưng không phải vậy. AI có thể viết những bài thơ, bài văn rất hay; và khi người dùng đặt ra gợi ý khéo léo, nó thậm chí có thể viết các bài luận chất lượng về triết học hay đạo đức sinh học.</p><p>Điều này khiến các trường đại học dấy lên lo ngại rằng sinh viên có thể vượt qua các bài kiểm tra mà không cần tự viết một từ nào, hay thậm chí không cần phải hiểu tài liệu ôn thi. Và đây không phải là nỗi lo trong tương lai bởi hiện tại, sinh viên đã bắt đầu nộp bài làm do AI tạo ra. Một số trường đã coi việc sử dụng chatbot AI là “gian lận”. Ví dụ như hệ thống trường công lập ở các bang New South Wales và Victoria, Úc đều đã cấm ChatGPT.</p><p>Nhưng lệnh cấm kiểu này rất khó thực thi. So với các hình thức đạo văn truyền thống, việc sinh viên sử dụng văn bản do AI tạo ra rất khó bị phát hiện, một phần vì phiên bản ChatGPT mới có khả năng tạo ra phản hồi mới mỗi lần người dùng nhập cùng một yêu cầu.</p><p>Về phần mình, OpenAI cùng với các công ty khác đang phát triển các công cụ để phát hiện “gian lận” liên quan đến AI, dù ở thời điểm hiện tại, các công cụ này đều dễ mắc lỗi và có thể bị “qua mặt” khi người dùng yêu cầu ChatGPT viết theo cách không thể truy vết được.</p><p>Trước vấn đề này, đội ngũ giáo sư và giảng viên của Đại học Monash (Úc) đã đưa ra cảnh báo về hai mối đe dọa chính mà các công cụ như ChatGPT gây ra. Đầu tiên là việc chúng đưa ra nội dung có vẻ hợp lý nhưng hoàn toàn không chính xác, tạo nên cái nhìn lệch lạc về thế giới. Đó là bởi ChatGPT không cố gắng đưa ra sự thật mà chỉ đơn thuần thực hiện nhiệm vụ là tạo ra những câu trả lời nghe có vẻ hợp lý hoặc có tính thuyết phục cho các câu hỏi được đặt ra.</p><p>Mối đe dọa thứ hai là việc lệ thuộc vào AI sẽ gây xói mòn các kỹ năng quan trọng. Đơn cử như việc viết luận có giá trị bởi nó giúp ta suy nghĩ thấu đáo về những khái niệm khó và tạo ra những ý tưởng mới. Viết lách không chỉ là hành động truyền tải suy nghĩ lên trang giấy mà đối với nhiều nhà văn - còn là một phần của quá trình lý luận. Nếu chúng ta phó thác việc viết lách này cho trí tuệ nhân tạo, thì sinh viên có thể đánh mất kỹ năng quan trọng này.</p><p class=\"ql-align-center\"><br></p><p><br></p>', 'Công ty OpenAI đã phát hành ChatGPT-4, phiên bản mới nhất của chatbot AI đầy quyền năng. Nó có khả năng tạo ra những phản hồi giống con người một cách thuyết phục đối với hầu hết các câu hỏi', 1, 1, 'dYnGryKUGw1685026730.jpg', NULL, '2023-05-25 07:58:50', '2023-05-25 07:59:23', 0),
(14, 'Người dùng Windows 11 sắp có thêm tính năng được mong đợi từ lâu', 'người-dùng-windows-11-sắp-có-thêm-tính-năng-được-mong-đợi-từ-lâu', '<p>Theo&nbsp;<em>GadgetMatch</em>, từ trước đến nay, WinRAR là phần mềm luôn có mặt trên các hệ thống PC sử dụng Windows. Đây là chương trình nén tệp “quốc dân” của ngành công nghệ. Tuy nhiên, kể từ khi Windows bổ sung hỗ trợ cho nhiều định dạng tệp, sự phổ biến của WinRAR đã dần suy giảm. Giờ đây, có thể WinRAR sắp “hết đất sống” khi Windows 11 sẽ sớm hỗ trợ định dạng RAR.</p><p>Vừa qua, Panos Panay, giám đốc sản phẩm Windows của Microsoft, đã chia sẻ rằng hệ điều hành này đang phát triển khả năng hỗ trợ cho các định dạng tệp tin nén như tar, 7-zip, rar, gz và nhiều định dạng khác. Người dùng sẽ sớm có thể mở, giải nén và nén các thư mục bằng định dạng rar mà không cần phần mềm bên thứ ba.</p><p>Mặc dù chưa có thời điểm chính xác khi nào tính năng được phát hành, nhưng dựa trên việc Microsoft đã thông báo chính thức, có lẽ nó sẽ sớm đến với người dùng.</p><p>Hiện tại, Windows 11 đã cho phép người dùng xử lý các tệp nén có định dạng zip và một số định dạng khác. Ngay cả khi không có ứng dụng của bên thứ ba, người dùng vẫn có thể mở các định dạng này ngay từ File Explorer.</p><p>Tất nhiên là khả năng hỗ trợ các định dạng nén của Windows sẽ không mạnh mẽ như các phần mềm bên thứ ba. Tuy nhiên, nếu người dùng đơn giản chỉ cần mở các tệp có định dạng này thì việc bổ sung là vô cùng đáng giá. Điều này cũng có khả năng đánh dấu sự kết thúc cho danh tiếng lâu đời của WinRAR trên các máy tính Windows.</p><p>Bên cạnh bổ sung hỗ trợ nhiều loại tệp mới, Windows cũng đang phát triển nhiều tính năng hơn để tận dụng công nghệ AI.</p>', 'Người dùng Windows 11 sắp có thêm tính năng được mong đợi từ lâu. Trong bản cập nhật sắp tới, người dùng Windows 11 có lẽ sẽ không cần cài đặt chương trình WinRAR nữa.', 1, 1, 'Q7nciwJszI1685026883.jpg', NULL, '2023-05-25 08:01:23', '2023-05-25 08:01:23', 0),
(15, 'Ra mắt máy ảnh Canon EOS R100, giá chỉ từ 11,24 triệu đồng', 'ra-mat-may-anh-canon-eos-r100', '<p>Mới đây,&nbsp;<a href=\"https://www.24h.com.vn/may-anh-canon-c407e4887.html\" target=\"_blank\" style=\"color: rgb(0, 0, 238);\">Canon</a>&nbsp;đã ra mắt máy ảnh Canon EOS R100, là lựa chọn tiết kiệm cho những người quan tâm đến thị trường máy ảnh không gương lật hoặc yêu thích dòng máy ảnh EOS Rebel hoặc EOS M.</p><p>Máy ảnh tự hào có các tính năng thiết yếu như cảm biến kích thước APS-C 24,2 megapixel, bộ xử lý hình ảnh DIGIC 8 và khả năng quay video toàn chiều rộng 4K và Full HD ở tốc độ 24 và 60 khung hình/ giây.</p><p>Với cảm biến APS-C, Canon EOS R100 cho phép người dùng chụp được màu sắc sống động tuyệt đẹp, chi tiết xuất sắc và linh hoạt khi chụp trong môi trường ánh sáng yếu. Hơn nữa, cảm biến tiên tiến của máy ảnh cho phép người dùng đạt được hiệu ứng bokeh hấp dẫn để làm mờ hậu cảnh.</p><p>Hưởng lợi từ hệ thống lấy nét tự động tiên tiến trong dòng sản phẩm EOS R, Canon EOS R100 tích hợp công nghệ Dual Pixel CMOS AF, giúp phát hiện đối tượng chính xác. Cho dù sử dụng kính ngắm hay màn hình LCD, máy ảnh sẽ theo dõi mắt mọi người một cách thông minh, cho phép máy ảnh bắt kịp hành động và tập trung vào các yếu tố quan trọng của cảnh.</p><p>Canon EOS R100 cho phép chụp liên tục ở tốc độ lên tới 6,5 khung hình/giây với khả năng lấy nét tự động một lần và 3,5 khuôn hình/giây với Lấy nét tự động liên tục, tạo điều kiện thuận lợi để ghi lại những khoảnh khắc quan trọng.</p><p>Máy ảnh tương thích với dòng ống kính RF và RF-S hoàn chỉnh và bằng cách sử dụng một trong ba bộ điều hợp ngàm EF-EOS R của Canon, người dùng cũng có thể sử dụng ống kính EF và EF-S.</p><p>Đồng thời, Canon đã giới thiệu ống kính Canon RF28mm F2.8 STM, phục vụ cho nhiều đối tượng người dùng, bao gồm cả những nhiếp ảnh gia nghiệp dư và những người đam mê sử dụng máy ảnh Full-Frame và APS-C.</p>', 'Canon EOS R100 mới thuộc dòng máy ảnh không gương lật, có giá cực phải chăng với cảm biến 24MP.', 1, 1, 'oNulz8OujE1685026974.jpg', NULL, '2023-05-25 08:02:54', '2023-05-25 08:19:34', 0),
(16, 'Galaxy S23 FE sắp ra mắt vào mùa thu?', 'galaxy-s23-fe-sắp-ra-mắt-vào-mùa-thu?', '<p>Theo một báo cáo mới nhất từ Twitter, doanh số bán dòng Galaxy S23 của&nbsp;<a href=\"https://www.24h.com.vn/samsung-c407e3988.html\" target=\"_blank\" style=\"color: rgb(0, 0, 238);\">Samsung</a>&nbsp;đã giảm đáng kể trong tháng này. Có tin đồn cho hay, doanh số bán hàng của dòng flagship trong cả quý hai (từ tháng 4 - 6) của công ty Hàn Quốc sẽ giảm 20% so với dòng Galaxy S22 vào năm ngoái.</p><p>Nguyên nhân là do nhu cầu thấp hơn dự kiến từ \"người tiêu dùng nói chung\". Đa số khách hàng&nbsp;đã mua những chiếc&nbsp;<a href=\"https://www.24h.com.vn/smartphone-c407e4053.html\" target=\"_blank\" style=\"color: rgb(0, 0, 238);\">smartphone</a>&nbsp;cao cấp mới vào tháng 3 và sau đó không có nhiều người khác muốn mua chiếc điện thoại tốt nhất của Samsung.</p><p>Tất cả đã khiến Samsung phải đẩy mạnh việc ra mắt Galaxy S23 FE. Theo các tin đồn, thiết bị sẽ xuất hiện trên thị trường trước Galaxy Z Fold 5 và Galaxy Z Flip 5, sẽ ra mắt vào tháng 7 và bán ra vào đầu tháng 8.</p><p>Nếu tin đồn này chính xác, Galaxy S23 FE ra mắt vào khoảng tháng 7 hoặc thậm chí có thể sớm hơn. Chiếc điện thoại này sẽ có giá phải chăng hơn so với Galaxy S23, chỉ có một số thông số kỹ thuật thay đổi.</p><p>Dự kiến, Galaxy S23 FE sẽ sử dụng SoC Exynos 2200 của Samsung ở tất cả các khu vực, camera chính 50 MP, pin 4.500 mAh, RAM 6GB/ 8GB và các tùy chọn bộ nhớ trong 128GB/ 256GB. Đây sẽ là mẫu smartphone cận cao cấp, dành cho người dùng phổ thông.</p>', NULL, 1, 1, 'CwzqTRxSwi1685027106.jpg', NULL, '2023-05-25 08:05:06', '2023-05-25 08:05:06', 0),
(17, '\"Phù thủy bi-a\" Reyes thua tủi hổ, đoàn Philippines sững sờ ở SEA Games', 'phù-thủy-bi-a-reyes-thua-tủi-hổ-đoàn-philippines-sững-sờ-ở-sea-games', '<p><span style=\"color: rgb(37, 37, 37);\">Kể từ khi bi-a chính thức được đưa vào SEA Games từ năm 1987 tại Indonesia, huyền thoại Efren Reyes gây choáng váng giới mộ điệu khi giành được tới 3 HCV tại 3 nội dung khác nhau cho Philippines. Cũng tại thời điểm đó, Philippines được nhắc tới như một quốc gia hàng đầu về bi-a tại SEA Games.</span></p><p>Xuyên suốt những kỳ Đại hội&nbsp;<a href=\"https://www.24h.com.vn/the-thao-c101.html\" target=\"_blank\" style=\"color: rgb(0, 0, 238);\">Thể thao</a>&nbsp;Đông Nam Á diễn ra sau đó, đặc biệt là 2 kỳ SEA Games gần nhất, Philippines đều giành ngôi số 1 bảng tổng sắp huy chương bi-a.</p><p>Tại SEA Games 32 đang diễn ra ở Campuchia, đội tuyển \"Vua bi-a\" Đông Nam Á nhận nỗi đau&nbsp;khi không thể giành được HCV nào.</p><p>Huyền thoại Reyes không tạo ra hiệu ứng tốt như ở Việt Nam 2022. \"Phù thủy\" 68 tuổi để thua Woo Dong Hoon (Campuchia) 15-40 và chính thức chia tay SEA Games ngay trận đấu thuộc vòng 1/16, ngày 9/5. Kết quả buồn của ông Reyes&nbsp;khởi đầu cho chuỗi thành tích đáng quên của bi-a Philippines.</p><p>Trong tổng số 9 nội dung trao huy chương, Philippines lần đầu tiên \"trắng tay\" HCV, họ chỉ giành được 2 HCĐ ở nội dung carom 3 băng và pool 9 bóng đôi nam.</p><p>Johann Chua không thể bảo vệ tấm HCV nội dung pool 9 bóng, chủ nhà cắt giảm nội dung pool 10 bi của&nbsp;Carlo Biado - nhà cựu vô địch SEA Games 31. Bên cạnh đó là một loạt nội dung pool khác cũng không được đưa vào thi đấu, nên một số cơ thủ Philippines phải ở nhà.</p>', NULL, 1, 1, 'qd5VjHlTRK1685027338.jpg', NULL, '2023-05-25 08:08:58', '2023-05-25 08:08:58', 0),
(18, 'Trấn Thành gây chú ý với diện mạo mới trong RAPVIET', 'trấn-thành-gây-chú-ý-với-diện-mạo-mới,-bigdaddy-nhắc-ngay-1-câu', '<p><span style=\"color: rgb(37, 37, 37);\">Gắn bó với</span><em style=\"color: rgb(37, 37, 37);\">&nbsp;Rap Việt&nbsp;</em><span style=\"color: rgb(37, 37, 37);\">qua 2 mùa, tới mùa 3 năm 2023, Trấn Thành tiếp tục đảm nhận vai trò MC. Loạt hình ảnh của Trấn Thành ở vòng Chinh phục tại&nbsp;</span><em style=\"color: rgb(37, 37, 37);\">Rap Việt</em><span style=\"color: rgb(37, 37, 37);\">&nbsp;được hé lộ, khiến cư dân mạng chú ý.</span></p><p>Quay trở lại với&nbsp;<em>Rap Việt</em>, nam MC chọn trang phục “cây” đen cùng bộ râu quen thuộc từng xuất hiện trên show&nbsp;<em>Người ấy là ai</em>&nbsp;mùa 5 (2023). Anh còn đeo thêm khuyên tai để tạo nét cá tính. Giải đáp thắc mắc về tạo hình mới mẻ này của Trấn Thành, Hari Won&nbsp;từng hóm hỉnh chia sẻ:&nbsp;<em>“MC Trấn Thành xin trở lại với một bộ râu nhẹ. Đi quay phim ăn nhiều hơi mập một chút nhưng cũng còn đáng yêu mà”.</em></p><p>Ban tổ chức&nbsp;<em>Rap Việt&nbsp;</em>cũng đã chính thức xác nhận Trấn Thành sẽ tiếp tục đồng hành cùng chương trình ở vai trò MC. Mặc dù thời gian gần đây, anh liên tục vướng thị phi nhưng không thể phủ nhận độ hot từ tên tuổi nên ban tổ chức vẫn giữ nguyên quyết định chọn anh làm MC.</p><p>Trong mùa 1 khi lần đầu tiên được giao trọng trách MC&nbsp;<em>Rap Việt</em>, Trấn Thành không tránh khỏi những tranh cãi trước khi tập đầu tiên phát sóng. Nhiều&nbsp;ý kiến phản đối vì cho rằng anh không hợp với một chương trình về Rap. Chỉ sau vài tập, cư dân mạng đã thay đổi nhận định bởi sự dẫn dắt khôn khéo của Trấn Thành. Anh&nbsp;là người nắm giữ vai trò kết nối các vị HLV&nbsp;với thí sinh, kết nối các HLV với nhau. Không thể phủ nhận nam MC đã thành công trong việc mang&nbsp;<em>Rap Việt</em>&nbsp;đến gần hơn với khán giả. Trước thông tin về sự trở lại của Trấn Thành ở mùa 3, trên fanpage của chương trình, số đông khán giả liên tục thể hiện sự ủng hộ đối với nam MC và nhận xét rằng không ai giữ vai trò này tốt hơn anh.</p><p>Khán giả có nick Minh Nhựt nhận xét:&nbsp;<em>“Còn ai phù hợp hơn nữa. Người Ấy Là Ai và Rap Việt là 2 show không thể thiếu Trấn Thành, người góp công không nhỏ làm nó trở nên viral thì sao bỏ qua được”. “Chiến, không có Trấn Thành thì show khó hút khán giả lắm. Tuyệt vời Rap Việt”</em>, một khán giả khác lên tiếng. Bên cạnh đó, một số khán giả khẳng định không quan tâm tới đời tư của MC.&nbsp;<em>“Nói gì chứ MC Trấn Thành vẫn dẫn dắt cuốn hút nhất. Chuyện đời tư tôi mặc kệ”, “Đời tư có hơi ồn ào, nhưng nhìn chung thì Trấn Thành dẫn chương trình vẫn cuốn nhé, công tâm đi nào các bạn”...</em></p>', 'Diện mạo của Trấn Thành gây chú ý khi anh trở lại vị trí MC mùa 3 Rap Việt.', 1, 1, 'mowmKJdmyb1685028910.jpg', NULL, '2023-05-25 08:35:10', '2023-05-25 09:07:27', 0),
(19, 'Trao quyết định bổ nhiệm tân Bộ trưởng Bộ Tài nguyên và Môi trường', 'trao-quyết-định-bổ-nhiệm-tân-bộ-trưởng-bộ-tài-nguyên-và-môi-trường', '<p><span style=\"color: rgb(37, 37, 37);\">Chiều 25/5, Thủ tướng Phạm Minh Chính đã trao Quyết định của Chủ tịch nước bổ nhiệm ông Đặng Quốc Khánh, Bí thư Tỉnh ủy Hà Giang làm Bộ trưởng Bộ Tài nguyên và Môi trường (TN&amp;MT) nhiệm kỳ 2021-2026.</span></p><p>Trước đó, tại kỳ họp thứ 5, Quốc hội khóa XV (ngày 22/5), Quốc hội đã đồng ý phê chuẩn bổ nhiệm ông Đặng Quốc Khánh làm Bộ trưởng Bộ TN&amp;MT thay Phó Thủ tướng Trần Hồng Hà đang kiêm nhiệm. Ngay sau đó, Chủ tịch nước đã có Quyết định bổ nhiệm đối với ông Đặng Quốc Khánh.</p><p>Phát biểu tại buổi lễ, Thủ tướng Phạm Minh Chính nhấn mạnh, nhiệm vụ, công việc của Bộ TN&amp;MT có liên quan nhiều tới người dân, doanh nghiệp, liên quan mật thiết tới sự phát triển của đất nước, trong khi tình hình trong nước có nhiều khó khăn, thách thức hơn là cơ hội và thuận lợi, tình hình ngoài nước diễn biến nhanh, phức tạp, khó lường.</p><p>Do đó, Bộ cần tập trung xây dựng chiến lược, quy hoạch, xây dựng thể chế, hành lang pháp lý, cơ chế, chính sách, huy động và sử dụng hiệu quả các nguồn lực, đẩy mạnh phân cấp, phân quyền gắn với phân bổ nguồn lực phù hợp.</p><p>Nhấn mạnh, tài nguyên, môi trường, đất đai là những vấn đề phức tạp, nhạy cảm, khó khăn, Thủ tướng yêu cầu đã cố gắng rồi phải cố gắng hơn nữa, đã nỗ lực rồi phải nỗ lực hơn nữa, đã quyết tâm rồi phải có quyết tâm cao hơn nữa để hoàn thành xuất sắc nhiệm vụ Đảng, Nhà nước và nhân dân giao phó.</p><p>Về nhiệm vụ cụ thể, Thủ tướng nêu rõ, cần tích cực nghiên cứu, tiếp thu ý kiến người dân, doanh nghiệp, nhà khoa học, chuyên gia, người hoạt động thực tiễn để cùng các cơ quan liên quan tiếp tục hoàn thiện dự thảo Luật Đất đai (sửa đổi). Cùng với đó, đẩy mạnh chuyển đổi số, góp phần phát triển kinh tế số, xã hội số, chính phủ số, đơn giản hóa, cắt giảm thủ tục hành chính, giảm chi phí, phiền hà cho người dân, doanh nghiệp, phòng chống tiêu cực, tham nhũng.</p>', 'Nhấn mạnh, tài nguyên, môi trường, đất đai là những vấn đề phức tạp, nhạy cảm, khó khăn, Thủ tướng yêu cầu tân Bộ trưởng Bộ Tài nguyên và Môi trường phải cố gắng hơn nữa.', 1, 1, 'PMpleTroic1685030142.jpg', NULL, '2023-05-25 08:55:42', '2023-05-25 08:56:33', 0),
(20, 'Chính phủ có dự thảo chính thức Nghị quyết về cơ chế, chính sách đặc thù cho TP.HCM', 'chính-phủ-có-dự-thảo-chính-thức-nghị-quyết-về-cơ-chế,-chính-sách-đặc-thù-cho-tphcm', '<p>Chính phủ vừa có báo cáo gửi Quốc hội (QH) về dự thảo nghị quyết của QH về thí điểm một số cơ chế, chính sách (CCCS) đặc thù phát triển TP HCM. Báo cáo tóm tắt này dựa trên các tờ trình hồi tháng 4 và trung tuần tháng 5 của Chính phủ gửi Ủy ban Thường vụ QH, QH về Dự thảo này.</p><p>Theo báo cáo của Chính phủ, việc xây dựng dự thảo nghị quyết đã có đủ căn cứ chính trị theo Nghị quyết 31 ngày 30-12-2022 của Bộ Chính trị về phát triển TP HCM đến năm 2030, tầm nhìn đến năm 2045.</p><p>Tại Nghị quyết 76 ngày 15-11-2022, QH đã giao Chính phủ nghiên cứu, đề xuất hoàn thiện cơ chế, chính sách đặc thù phát triển TP.HCM, trình QH xem xét, thông qua nghị quyết thay thế Nghị quyết 54/2017 trong thời gian sớm nhất.</p><p>Nghị quyết này nhắm tới mục tiêu xây dựng các cơ chế, chính sách đặc thù, vượt trội nhằm tạo cơ sở pháp lý để phát huy tiềm năng, lợi thế, tạo đột phá, giải quyết các điểm nghẽn về phát triển kinh tế - xã hội của TP, góp phần xây dựng và phát triển TP.HCM như mục tiêu đã đặt ra tại các Nghị quyết của Bộ Chính trị và QH nêu trên.</p>', 'Quy định cơ chế, chính sách đặc thù cho TP.HCM phải có trọng tâm, trọng điểm, bảo đảm tính khả thi và thực hiện tăng cường phân cấp, ủy quyền cho TP, gắn với cơ chế kiểm tra, giám sát minh bạch, hiệu quả.', 1, 1, 'gy7pnw8Qpd1685030553.jpg', NULL, '2023-05-25 09:02:33', '2023-05-25 09:02:33', 0);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `taggables`
--

CREATE TABLE `taggables` (
  `id` bigint UNSIGNED NOT NULL,
  `tag_id` bigint NOT NULL,
  `taggable_id` bigint NOT NULL,
  `taggable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tags`
--

CREATE TABLE `tags` (
  `id` bigint UNSIGNED NOT NULL,
  `tag_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Sangam Rimal', 'sangamrimal4@gmail.com', '2023-05-23 21:11:06', '$2y$10$Mm5u3VsC/sfgIVGU0yODWOJM5fiY0cAUFfAkKHZBzQbysJSvdoETC', NULL, '2023-05-23 21:11:06', '2023-05-23 21:11:06'),
(2, 'Viet Anh', 'admin@gmail.com', NULL, '$2y$10$beaf3gHhYWMRwi28nF.6Ye.Il4TcKehpgf2M2tFxWE1f/YryWEKHO', NULL, NULL, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `category_news`
--
ALTER TABLE `category_news`
  ADD PRIMARY KEY (`id`),
  ADD KEY `category_news_category_id_foreign` (`category_id`),
  ADD KEY `category_news_news_id_foreign` (`news_id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `images`
--
ALTER TABLE `images`
  ADD PRIMARY KEY (`id`),
  ADD KEY `images_news_id_foreign` (`news_id`);

--
-- Indexes for table `menus`
--
ALTER TABLE `menus`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `news`
--
ALTER TABLE `news`
  ADD PRIMARY KEY (`id`),
  ADD KEY `news_author_id_foreign` (`author_id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `taggables`
--
ALTER TABLE `taggables`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tags`
--
ALTER TABLE `tags`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `category_news`
--
ALTER TABLE `category_news`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `images`
--
ALTER TABLE `images`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `menus`
--
ALTER TABLE `menus`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `news`
--
ALTER TABLE `news`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `taggables`
--
ALTER TABLE `taggables`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tags`
--
ALTER TABLE `tags`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `category_news`
--
ALTER TABLE `category_news`
  ADD CONSTRAINT `category_news_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `category_news_news_id_foreign` FOREIGN KEY (`news_id`) REFERENCES `news` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `images`
--
ALTER TABLE `images`
  ADD CONSTRAINT `images_news_id_foreign` FOREIGN KEY (`news_id`) REFERENCES `news` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `news`
--
ALTER TABLE `news`
  ADD CONSTRAINT `news_author_id_foreign` FOREIGN KEY (`author_id`) REFERENCES `users` (`id`) ON DELETE SET NULL;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
