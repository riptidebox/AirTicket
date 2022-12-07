-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3303
-- Время создания: Дек 05 2022 г., 07:10
-- Версия сервера: 8.0.30
-- Версия PHP: 7.4.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `ofbsphp`
--

-- --------------------------------------------------------

--
-- Структура таблицы `admin`
--

CREATE TABLE `admin` (
  `admin_id` int NOT NULL,
  `admin_uname` varchar(20) COLLATE utf8mb4_ru_0900_ai_ci NOT NULL,
  `admin_email` varchar(50) COLLATE utf8mb4_ru_0900_ai_ci NOT NULL,
  `admin_pwd` varchar(100) COLLATE utf8mb4_ru_0900_ai_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_ru_0900_ai_ci;

--
-- Дамп данных таблицы `admin`
--

INSERT INTO `admin` (`admin_id`, `admin_uname`, `admin_email`, `admin_pwd`) VALUES
(1, 'admin', 'admin@mail.com', '$2y$10$KRXGkY.dxYjD8FLZclW/Tu04wl76lD7IA4Z3nAsxtpdZxHNbYo4ZW');

-- --------------------------------------------------------

--
-- Структура таблицы `airline`
--

CREATE TABLE `airline` (
  `airline_id` int NOT NULL,
  `name` varchar(20) COLLATE utf8mb4_ru_0900_ai_ci NOT NULL,
  `seats` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_ru_0900_ai_ci;

--
-- Дамп данных таблицы `airline`
--

INSERT INTO `airline` (`airline_id`, `name`, `seats`) VALUES
(1, 'Аэрофлот', 165),
(2, 'S7 Airlines', 220),
(3, 'Победа', 125),
(4, 'Азимут', 210),
(5, 'Аврора', 185),
(9, 'Газпром авиа', 200),
(10, 'Комиавиатранс', 205),
(11, 'Оренбуржье', 158),
(12, 'Россия', 210),
(13, 'Уральские авиалинии', 215),
(14, 'Utair ', 135),
(15, 'Уфимские линии', 3);

-- --------------------------------------------------------

--
-- Структура таблицы `cities`
--

CREATE TABLE `cities` (
  `newid` int UNSIGNED NOT NULL,
  `city` varchar(20) COLLATE utf8mb4_ru_0900_ai_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_ru_0900_ai_ci;

--
-- Дамп данных таблицы `cities`
--

INSERT INTO `cities` (`newid`, `city`) VALUES
(1, 'Москва'),
(2, 'Санкт-Петербург'),
(3, 'Уфа'),
(4, 'Казань'),
(5, 'Омск'),
(6, 'Челябинск'),
(7, 'Саратов'),
(8, 'Сочи'),
(9, 'Новосибирск'),
(10, 'Волгоград'),
(11, 'Краснодар'),
(12, 'Пермь'),
(13, 'Екатеринбург'),
(14, 'Владивосток'),
(15, 'Махачкала'),
(16, 'Симферополь'),
(17, 'Воронеж'),
(18, 'Хабаровск');

-- --------------------------------------------------------

--
-- Структура таблицы `feedback`
--

CREATE TABLE `feedback` (
  `feed_id` int NOT NULL,
  `email` varchar(50) COLLATE utf8mb4_ru_0900_ai_ci NOT NULL,
  `q1` varchar(250) COLLATE utf8mb4_ru_0900_ai_ci NOT NULL,
  `q2` varchar(20) COLLATE utf8mb4_ru_0900_ai_ci NOT NULL,
  `q3` varchar(250) COLLATE utf8mb4_ru_0900_ai_ci NOT NULL,
  `rate` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_ru_0900_ai_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `flight`
--

CREATE TABLE `flight` (
  `flight_id` int NOT NULL,
  `admin_id` int NOT NULL,
  `arrivale` datetime NOT NULL,
  `departure` datetime NOT NULL,
  `Destination` varchar(20) COLLATE utf8mb4_ru_0900_ai_ci NOT NULL,
  `source` varchar(20) COLLATE utf8mb4_ru_0900_ai_ci NOT NULL,
  `airline` varchar(20) COLLATE utf8mb4_ru_0900_ai_ci NOT NULL,
  `Seats` varchar(110) COLLATE utf8mb4_ru_0900_ai_ci NOT NULL,
  `duration` varchar(20) COLLATE utf8mb4_ru_0900_ai_ci NOT NULL,
  `Price` int NOT NULL,
  `status` varchar(6) COLLATE utf8mb4_ru_0900_ai_ci DEFAULT NULL,
  `issue` varchar(50) COLLATE utf8mb4_ru_0900_ai_ci DEFAULT NULL,
  `last_seat` varchar(5) COLLATE utf8mb4_ru_0900_ai_ci DEFAULT '',
  `bus_seats` int DEFAULT '20',
  `last_bus_seat` varchar(5) COLLATE utf8mb4_ru_0900_ai_ci DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_ru_0900_ai_ci;

--
-- Дамп данных таблицы `flight`
--

INSERT INTO `flight` (`flight_id`, `admin_id`, `arrivale`, `departure`, `Destination`, `source`, `airline`, `Seats`, `duration`, `Price`, `status`, `issue`, `last_seat`, `bus_seats`, `last_bus_seat`) VALUES
(1, 1, '2022-06-30 10:03:00', '2022-06-30 09:01:00', 'Уфа', 'Москва', 'Аэрофлот', '63', '1', 175, '', '', '21B', 20, ''),
(2, 1, '2022-07-05 11:15:00', '2022-07-05 10:05:00', 'Уфа', 'Москва', 'Уральские авиалинии', '61', '1', 185, 'arr', '', '21D', 20, ''),
(3, 1, '2022-07-05 12:13:00', '2022-07-05 10:13:00', 'Санкт-Петербург', 'Воронеж', 'Аэрофлот', '123', '2', 205, 'arr', '', '21B', 20, ''),
(4, 1, '2022-07-05 16:30:00', '2022-07-05 15:26:00', 'Уфа', 'Москва', 'Аэрофлот', '220', '1', 155, 'issue', '120', '', 20, ''),
(5, 1, '2022-07-05 15:30:00', '2022-07-05 12:30:00', 'Омск', 'Санкт-Петербург', 'Победа', '125', '3', 326, '', '', '', 20, ''),
(6, 1, '2022-07-05 17:55:00', '2022-07-05 15:30:00', 'Уфа', 'Омск', 'Utair', '125', '2', 285, '', '', '', 20, ''),
(8, 1, '2022-07-06 00:55:00', '2022-07-05 17:00:00', 'Москва', 'Челябинск', 'Победа', '183', '7', 615, 'arr', '', '21B', 20, ''),
(19, 1, '2022-07-05 23:40:00', '2022-07-05 20:31:00', 'Челябинск', 'Москва', 'S7 Airlines', '210', '3', 295, '', '', '', 20, ''),
(20, 1, '2022-07-05 23:58:00', '2022-07-05 22:14:00', 'Саратов', 'Москва', 'Уральские авиалинии', '208', '1', 185, 'dep', '', '21B', 20, ''),
(22, 1, '2022-12-05 23:00:00', '2022-12-01 10:00:00', 'Уфа', 'Москва', 'Аэрофлот', '165', '6', 20000, 'dep', '', '', 20, ''),
(23, 1, '2022-12-12 12:00:00', '2022-12-10 10:00:00', 'Москва', 'Уфа', 'S7 Airlines', '220', '5', 20000, '', '', '', 20, ''),
(24, 1, '2022-12-23 04:59:00', '2022-12-08 12:00:00', 'Казань', 'Омск', 'Аэрофлот', '165', '7', 10000, '', '', '', 20, ''),
(25, 1, '2022-12-03 23:00:00', '2022-12-02 12:18:00', 'Москва', 'Уфа', 'Аэрофлот', '165', '6', 29000, '', '', '', 20, ''),
(26, 1, '2022-12-04 03:02:00', '2022-12-02 23:03:00', 'Санкт-Петербург', 'Москва', 'Аэрофлот', '165', '5', 5600, '', '', '', 20, ''),
(27, 1, '2022-12-02 17:24:00', '2022-12-01 14:24:00', 'Санкт-Петербург', 'Уфа', 'Победа', '125', '8', 11, 'issue', '90', '', 20, ''),
(28, 1, '2022-12-05 13:01:00', '2022-12-01 20:00:00', 'Москва', 'Уфа', 'Аэрофлот', '165', '5', 8, '', '', '', 20, ''),
(29, 1, '2022-12-05 23:34:00', '2022-12-01 13:23:00', 'Москва', 'Уфа', 'S7 Airlines', '220', '4', 45, '', '', '', 20, '');

-- --------------------------------------------------------

--
-- Структура таблицы `passenger_profile`
--

CREATE TABLE `passenger_profile` (
  `passenger_id` int NOT NULL,
  `user_id` int NOT NULL,
  `flight_id` int NOT NULL,
  `mobile` varchar(110) COLLATE utf8mb4_ru_0900_ai_ci NOT NULL,
  `dob` datetime NOT NULL,
  `f_name` varchar(20) COLLATE utf8mb4_ru_0900_ai_ci DEFAULT NULL,
  `m_name` varchar(20) COLLATE utf8mb4_ru_0900_ai_ci DEFAULT NULL,
  `l_name` varchar(20) COLLATE utf8mb4_ru_0900_ai_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_ru_0900_ai_ci;

--
-- Дамп данных таблицы `passenger_profile`
--

INSERT INTO `passenger_profile` (`passenger_id`, `user_id`, `flight_id`, `mobile`, `dob`, `f_name`, `m_name`, `l_name`) VALUES
(1, 1, 1, '2147483647', '1995-01-01 00:00:00', 'Christine', 'M', 'Moore'),
(2, 2, 3, '2147483647', '1995-02-13 00:00:00', 'Henry', 'l', 'Stuart'),
(3, 3, 2, '2147483647', '1994-06-21 00:00:00', 'Andre', 'J', 'Atkins'),
(4, 4, 2, '2147483647', '1995-05-16 00:00:00', 'James', 'K', 'Harbuck'),
(5, 2, 8, '7854444411', '1995-02-13 00:00:00', 'Henry', 'l', 'Stuart'),
(6, 2, 20, '7412585555', '1995-02-13 00:00:00', 'Henry', 'l', 'Stuart'),
(7, 5, 29, '7412585555', '1995-02-13 00:00:00', 'Henry', 'I', 'Stuart'),
(8, 5, 29, '7412585555', '1995-02-13 00:00:00', 'Rada', 'E', 'Radadada'),
(9, 5, 28, '7412585555', '1995-10-18 00:00:00', 'Rada', 'E', 'Radadadada'),
(10, 5, 28, '7412585555', '1995-02-13 00:00:00', 'Rada', 'Easaas', 'Asdssaas');

-- --------------------------------------------------------

--
-- Структура таблицы `payment`
--

CREATE TABLE `payment` (
  `card_no` varchar(16) COLLATE utf8mb4_ru_0900_ai_ci NOT NULL,
  `user_id` int NOT NULL,
  `flight_id` int NOT NULL,
  `expire_date` varchar(5) COLLATE utf8mb4_ru_0900_ai_ci DEFAULT NULL,
  `amount` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_ru_0900_ai_ci;

--
-- Дамп данных таблицы `payment`
--

INSERT INTO `payment` (`card_no`, `user_id`, `flight_id`, `expire_date`, `amount`) VALUES
('1010555677851111', 4, 2, '10/26', 370),
('1020445869651011', 2, 20, '12/25', 370),
('1111888889897778', 2, 3, '12/25', 205),
('1400565800004478', 2, 8, '12/25', 1230),
('1458799990001450', 3, 2, '12/25', 185),
('4204558500014587', 1, 1, '02/25', 350);

-- --------------------------------------------------------

--
-- Структура таблицы `pwdreset`
--

CREATE TABLE `pwdreset` (
  `pwd_reset_id` int NOT NULL,
  `pwd_reset_email` varchar(50) COLLATE utf8mb4_ru_0900_ai_ci NOT NULL,
  `pwd_reset_selector` varchar(80) COLLATE utf8mb4_ru_0900_ai_ci NOT NULL,
  `pwd_reset_token` varchar(120) COLLATE utf8mb4_ru_0900_ai_ci NOT NULL,
  `pwd_reset_expires` varchar(20) COLLATE utf8mb4_ru_0900_ai_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_ru_0900_ai_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `ticket`
--

CREATE TABLE `ticket` (
  `ticket_id` int NOT NULL,
  `passenger_id` int NOT NULL,
  `flight_id` int NOT NULL,
  `user_id` int NOT NULL,
  `seat_no` varchar(10) COLLATE utf8mb4_ru_0900_ai_ci NOT NULL,
  `cost` int NOT NULL,
  `class` varchar(3) COLLATE utf8mb4_ru_0900_ai_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_ru_0900_ai_ci;

--
-- Дамп данных таблицы `ticket`
--

INSERT INTO `ticket` (`ticket_id`, `passenger_id`, `flight_id`, `user_id`, `seat_no`, `cost`, `class`) VALUES
(1, 1, 1, 1, '21A', 350, 'E'),
(2, 2, 3, 2, '21A', 205, 'E'),
(4, 3, 2, 3, '21A', 185, 'E'),
(6, 4, 2, 4, '21C', 370, 'E'),
(8, 5, 8, 2, '21A', 1230, 'E'),
(10, 6, 20, 2, '21A', 370, 'E');

-- --------------------------------------------------------

--
-- Структура таблицы `users`
--

CREATE TABLE `users` (
  `user_id` int NOT NULL,
  `username` varchar(20) COLLATE utf8mb4_ru_0900_ai_ci NOT NULL,
  `email` varchar(50) COLLATE utf8mb4_ru_0900_ai_ci NOT NULL,
  `password` varchar(100) COLLATE utf8mb4_ru_0900_ai_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_ru_0900_ai_ci;

--
-- Дамп данных таблицы `users`
--

INSERT INTO `users` (`user_id`, `username`, `email`, `password`) VALUES
(1, 'christine', 'christine@mail.com', '$2y$10$KRXGkY.dxYjD8FLZclW/Tu04wl76lD7IA4Z3nAsxtpdZxHNbYo4ZW'),
(2, 'henry', 'henry@mail.com', '$2y$10$KRXGkY.dxYjD8FLZclW/Tu04wl76lD7IA4Z3nAsxtpdZxHNbYo4ZW'),
(3, 'andre', 'andre@mail.com', '$2y$10$KRXGkY.dxYjD8FLZclW/Tu04wl76lD7IA4Z3nAsxtpdZxHNbYo4ZW'),
(4, 'james', 'james@mail.com', '$2y$10$KRXGkY.dxYjD8FLZclW/Tu04wl76lD7IA4Z3nAsxtpdZxHNbYo4ZW'),
(5, 'user123', 'user@mail.ru', '$2y$10$rSDxgwrq9oJW99EW8RYHIem3fE1QQD.PLf5RKHij9dDZMnyWx/Q6K');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`admin_id`);

--
-- Индексы таблицы `airline`
--
ALTER TABLE `airline`
  ADD PRIMARY KEY (`airline_id`);

--
-- Индексы таблицы `cities`
--
ALTER TABLE `cities`
  ADD PRIMARY KEY (`newid`);

--
-- Индексы таблицы `feedback`
--
ALTER TABLE `feedback`
  ADD PRIMARY KEY (`feed_id`);

--
-- Индексы таблицы `flight`
--
ALTER TABLE `flight`
  ADD PRIMARY KEY (`flight_id`),
  ADD KEY `admin_id` (`admin_id`);

--
-- Индексы таблицы `passenger_profile`
--
ALTER TABLE `passenger_profile`
  ADD PRIMARY KEY (`passenger_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `flight_id` (`flight_id`);

--
-- Индексы таблицы `payment`
--
ALTER TABLE `payment`
  ADD PRIMARY KEY (`card_no`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `flight_id` (`flight_id`);

--
-- Индексы таблицы `pwdreset`
--
ALTER TABLE `pwdreset`
  ADD PRIMARY KEY (`pwd_reset_id`);

--
-- Индексы таблицы `ticket`
--
ALTER TABLE `ticket`
  ADD PRIMARY KEY (`ticket_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `flight_id` (`flight_id`),
  ADD KEY `passenger_id` (`passenger_id`);

--
-- Индексы таблицы `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `admin`
--
ALTER TABLE `admin`
  MODIFY `admin_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT для таблицы `airline`
--
ALTER TABLE `airline`
  MODIFY `airline_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT для таблицы `cities`
--
ALTER TABLE `cities`
  MODIFY `newid` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT для таблицы `feedback`
--
ALTER TABLE `feedback`
  MODIFY `feed_id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `flight`
--
ALTER TABLE `flight`
  MODIFY `flight_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT для таблицы `passenger_profile`
--
ALTER TABLE `passenger_profile`
  MODIFY `passenger_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT для таблицы `pwdreset`
--
ALTER TABLE `pwdreset`
  MODIFY `pwd_reset_id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `ticket`
--
ALTER TABLE `ticket`
  MODIFY `ticket_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT для таблицы `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Ограничения внешнего ключа сохраненных таблиц
--

--
-- Ограничения внешнего ключа таблицы `flight`
--
ALTER TABLE `flight`
  ADD CONSTRAINT `flight_ibfk_1` FOREIGN KEY (`admin_id`) REFERENCES `admin` (`admin_id`);

--
-- Ограничения внешнего ключа таблицы `passenger_profile`
--
ALTER TABLE `passenger_profile`
  ADD CONSTRAINT `passenger_profile_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`),
  ADD CONSTRAINT `passenger_profile_ibfk_2` FOREIGN KEY (`flight_id`) REFERENCES `flight` (`flight_id`);

--
-- Ограничения внешнего ключа таблицы `payment`
--
ALTER TABLE `payment`
  ADD CONSTRAINT `payment_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`),
  ADD CONSTRAINT `payment_ibfk_2` FOREIGN KEY (`flight_id`) REFERENCES `flight` (`flight_id`);

--
-- Ограничения внешнего ключа таблицы `ticket`
--
ALTER TABLE `ticket`
  ADD CONSTRAINT `ticket_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`),
  ADD CONSTRAINT `ticket_ibfk_2` FOREIGN KEY (`flight_id`) REFERENCES `flight` (`flight_id`),
  ADD CONSTRAINT `ticket_ibfk_3` FOREIGN KEY (`passenger_id`) REFERENCES `passenger_profile` (`passenger_id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
