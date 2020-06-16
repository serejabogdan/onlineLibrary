-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1
-- Время создания: Июн 16 2020 г., 14:00
-- Версия сервера: 10.4.11-MariaDB
-- Версия PHP: 7.3.18

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `library`
--

-- --------------------------------------------------------

--
-- Структура таблицы `books`
--

CREATE TABLE `books` (
  `id` int(11) NOT NULL,
  `name` varchar(200) DEFAULT NULL,
  `author` varchar(200) DEFAULT NULL,
  `year` varchar(4) DEFAULT NULL,
  `description` varchar(1000) DEFAULT NULL,
  `img` varchar(1000) DEFAULT NULL,
  `download_url` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Дамп данных таблицы `books`
--

INSERT INTO `books` (`id`, `name`, `author`, `year`, `description`, `img`, `download_url`) VALUES
(2, 'Программист-прагматик. Путь от подмастерья к мастеру', 'Эндрю Хант, Дэвид Томас', '1999', 'Книга-размышление о профессии программиста, как можно улучшить качество работы, изменить подход к работе и т.д.', 'https://sun1-22.userapi.com/ZUPDtVaDJE0sVbh9xE9HIp4Ctg1pApjeb7bvzA/18gkLSnimRo.jpg', '../books/part0all.djvu'),
(3, 'Чистый код. Создание, анализ и рефакторинг', 'Роберт Мартин', '2019', 'Плохой код может работать, но он будет мешать развитию проекта и компании-разработчика, требуя дополнительные ресурсы на поддержку и \"укрощение\".', 'https://i109.fastpic.ru/big/2019/0419/1d/72f0b24e543f04a7c094d944324eca1d.jpg?r=1', '../books/MartinClaerCode2019.pdf'),
(4, 'Совершенный код', 'Стив Макконнелл', '2005', 'Более 10 лет первое издание этой книги считалось одним из лучших практических руководств по программированию. Сейчас эта книга полностью обновлена с учетом современных тенденций и технологий и дополнена сотнями новых примеров, иллюстрирующих искусство и науку программирования. Опираясь на академические исследования, с одной стороны, и практический опыт коммерческих разработок ПО - с другой, автор синтезировал из самых эффективных методик и наиболее эффективных принципов ясное прагматичное руководство. Каков бы ни был ваш профессиональный уровень, с какими бы средствами разработками вы ни работали, какова бы ни была сложность вашего проекта, в этой книге вы найдете нужную информацию, она заставит вас размышлять и поможет создать совершенный код.', 'https://readingbook.ru/uploads/posts/2014-07/1404219982_1015206_0_sovershenniy_kod_master-klass_stiv_makkonnell.jpg', '../books/СовершенныйКод2010.pdf'),
(5, 'Рефакторинг. Улучшение существующего кода.', 'Мартин Фаулер', '2003', 'Подход к улучшению структурной целостности и производительности существующих программ, называемый рефакторингом, получил развитие благодаря усилиям экспертов в области ООП, написавших эту книгу. Каждый шаг рефакторинга прост.', 'http://i26.fastpic.ru/big/2011/0825/f0/ca9713cdbacdb1b418080a8692acc1f0.jpg?r=1', '../books/РефакторингУлучшениеСуществующегоКода.pdf'),
(6, 'Мифический человеко-месяц (Серия \"Профессионально\")', 'Мартин Фаулер', '2003', 'Подход к улучшению структурной целостности и производительности существующих программ, называемый рефакторингом, получил развитие благодаря усилиям экспертов в области ООП, написавших эту книгу.', 'https://s1.livelib.ru/boocover/1000192987/o/7c25/Frederik_Bruks__Mificheskij_chelovekomesyats_ili_Kak_sozdayutsya_programmnye_sis.jpeg', '../books/Брукс-МифическийЧеловеко-месяц.pdf'),
(7, 'Идеальный программист. Как стать профессионалом разработки ПО', 'Роберт Мартин', '2018', 'Всех программистов, которые добиваются успеха в мире разработки ПО, отличает один общий признак: они больше всего заботятся о качестве создаваемого программного обеспечения. Это — основа для них.', 'https://i111.fastpic.ru/big/2019/1130/1f/0671ab8d182c6ba99295fdd852acad1f.jpg?r=1', '../books/ИдеальныйПрограммист2012.pdf'),
(13, '21321321', '123213', '1232', '123123', '12312312', '3123123213');

-- --------------------------------------------------------

--
-- Структура таблицы `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `email` varchar(100) DEFAULT NULL,
  `nickname` varchar(100) DEFAULT NULL,
  `password` varchar(20) NOT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `user_mod` enum('user','admin') DEFAULT 'user'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Дамп данных таблицы `users`
--

INSERT INTO `users` (`id`, `email`, `nickname`, `password`, `phone`, `user_mod`) VALUES
(1, 'JSon@gmail.com', 'JSon', '1234561', '095 123 12 13', 'admin'),
(2, 'vlad.chupicov@gmail.com', 'tiger1212', '1212121', '099 121 12 12', 'user'),
(3, 'vlad.lubarski@gmail.com', 'godeater', 'eater121212', '', 'user'),
(4, 'vova.bojkO@gmail.com', 'doitnow', '1313131', '', 'user'),
(6, 'test@test', 'test', 'test123', '', 'user');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `books`
--
ALTER TABLE `books`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `books`
--
ALTER TABLE `books`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT для таблицы `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
