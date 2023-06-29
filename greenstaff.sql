-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Июн 17 2022 г., 22:07
-- Версия сервера: 8.0.24
-- Версия PHP: 8.0.14

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `greenstaff`
--

-- --------------------------------------------------------

--
-- Структура таблицы `greenhouses`
--

CREATE TABLE `greenhouses` (
  `GreenhouseNumber` int NOT NULL,
  `AmountOfWorkes` int NOT NULL,
  `Town` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Дамп данных таблицы `greenhouses`
--

INSERT INTO `greenhouses` (`GreenhouseNumber`, `AmountOfWorkes`, `Town`) VALUES
(1, 4, 'Kyiv'),
(2, 2, 'Lviv'),
(3, 2, 'Dnipro'),
(4, 2, 'Chernihiv');

-- --------------------------------------------------------

--
-- Структура таблицы `products`
--

CREATE TABLE `products` (
  `ID` int NOT NULL,
  `GreenhouseNumber` int NOT NULL,
  `NameOfProduct` text NOT NULL,
  `Price` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Дамп данных таблицы `products`
--

INSERT INTO `products` (`ID`, `GreenhouseNumber`, `NameOfProduct`, `Price`) VALUES
(1, 1, 'DIONAEA MUSCIPULA', 200),
(2, 2, 'DROSERA', 170),
(3, 4, 'PINGUICULA', 150),
(4, 4, 'SARRACENIA', 200),
(5, 2, 'DARLINGTONIA CALIFORNIA', 900),
(6, 1, 'HAWORTHIA COOPERI', 300),
(7, 1, 'БОНСАЙ', 500),
(8, 3, 'НАСІННЯ ANACAMPSEROS VARIEGATA SUNRISE', 25),
(9, 3, 'ФЛОРАРІУМ', 320);

-- --------------------------------------------------------

--
-- Структура таблицы `workes`
--

CREATE TABLE `workes` (
  `GreenhouseNumber` int NOT NULL,
  `ID` int NOT NULL,
  `FullName` text NOT NULL,
  `DateOfBirth` date NOT NULL,
  `PhoneNumber` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Дамп данных таблицы `workes`
--

INSERT INTO `workes` (`GreenhouseNumber`, `ID`, `FullName`, `DateOfBirth`, `PhoneNumber`) VALUES
(1, 1, 'Бабич Євгеній Андрійович', '2001-01-20', '+38(000)000-00-01'),
(1, 2, 'Бакалов Владислав Олегович', '2001-01-20', '+38(000)000-00-02'),
(1, 3, 'Волков Всеволод Григорович', '2001-01-20', '+38(000)000-00-03'),
(1, 4, 'Вусатий Олександр Миколайович', '2001-01-20', '+38(000)000-00-04'),
(2, 5, 'Галайко Віталій Романович', '2001-01-20', '+38(000)000-00-05'),
(2, 6, 'Грабовий Андрій Олександрович', '2001-01-20', '+38(000)000-00-06'),
(3, 7, 'Єременко Іван Андрійович', '2001-01-20', '+38(000)000-00-07'),
(3, 8, 'Жежко Руслана Миколаївна', '2001-01-20', '+38(000)000-00-08'),
(4, 9, 'Железняк Максим Олегович', '2001-01-20', '+38(000)000-00-09'),
(4, 10, 'Забаровський Дмитро Сергійович', '2001-01-20', '+38(000)000-00-10');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `greenhouses`
--
ALTER TABLE `greenhouses`
  ADD PRIMARY KEY (`GreenhouseNumber`);

--
-- Индексы таблицы `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`ID`);

--
-- Индексы таблицы `workes`
--
ALTER TABLE `workes`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `greenhouses`
--
ALTER TABLE `greenhouses`
  MODIFY `GreenhouseNumber` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT для таблицы `products`
--
ALTER TABLE `products`
  MODIFY `ID` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
