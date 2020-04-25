-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1
-- Время создания: Апр 25 2020 г., 20:01
-- Версия сервера: 10.4.11-MariaDB
-- Версия PHP: 7.4.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `hrsys`
--

-- --------------------------------------------------------

--
-- Структура таблицы `demo`
--

CREATE TABLE `demo` (
  `id` int(11) NOT NULL,
  `name` varchar(45) DEFAULT NULL,
  `surname` varchar(48) DEFAULT NULL,
  `patronymic` varchar(45) DEFAULT NULL,
  `birthday` varchar(50) DEFAULT NULL,
  `tabelnum` varchar(50) DEFAULT NULL,
  `placebirth` varchar(50) DEFAULT NULL,
  `national` varchar(50) DEFAULT NULL,
  `citizenship` varchar(50) DEFAULT NULL,
  `pic` tinyblob DEFAULT NULL,
  `date_created` datetime DEFAULT NULL,
  `finished` bit(1) DEFAULT b'0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `demo`
--

INSERT INTO `demo` (`id`, `name`, `surname`, `patronymic`, `birthday`, `tabelnum`, `placebirth`, `national`, `citizenship`, `pic`, `date_created`, `finished`) VALUES
(52, 'Алия', 'Кулбаева', 'Кайратовна', '1998.10.15', '5632253', 'Алматы', 'Казашка', 'Казахстан', '', '2020-04-23 12:14:04', b'0');

-- --------------------------------------------------------

--
-- Структура таблицы `role`
--

CREATE TABLE `role` (
  `id` int(11) NOT NULL,
  `role` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `role`
--

INSERT INTO `role` (`id`, `role`) VALUES
(1, 'ADMIN'),
(2, 'USER');

-- --------------------------------------------------------

--
-- Структура таблицы `task`
--

CREATE TABLE `task` (
  `id` int(11) NOT NULL,
  `name` varchar(45) DEFAULT NULL,
  `surname` varchar(48) DEFAULT NULL,
  `patronymic` varchar(45) DEFAULT NULL,
  `birthday` varchar(50) DEFAULT NULL,
  `tabelnum` varchar(50) DEFAULT NULL,
  `placebirth` varchar(50) DEFAULT NULL,
  `national` varchar(50) DEFAULT NULL,
  `citizenship` varchar(50) DEFAULT NULL,
  `pic` tinyblob DEFAULT NULL,
  `date_created` datetime DEFAULT NULL,
  `finished` bit(1) DEFAULT b'0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `task`
--

INSERT INTO `task` (`id`, `name`, `surname`, `patronymic`, `birthday`, `tabelnum`, `placebirth`, `national`, `citizenship`, `pic`, `date_created`, `finished`) VALUES
(52, 'Алия', 'Кулбаева', 'Кайратовна', '1998.10.15', '5632253', 'Алматы', 'Казашка', 'Казахстан', '', '2020-04-23 12:14:04', b'0'),
(74, 'dasda', 'asd', '', '', '', '', '', '', '', '2020-04-24 22:55:08', b'0');

-- --------------------------------------------------------

--
-- Структура таблицы `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `active` int(11) DEFAULT NULL,
  `email` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `role_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `user`
--

INSERT INTO `user` (`id`, `active`, `email`, `name`, `password`, `role_id`) VALUES
(8, 1, 'ali@mail.ru', 'Alibek', '$2a$10$oVebK9RyCd7olu3yW58IRu3FXy5w1Mhe5qZv89wVyPoOcgVZ0ftmu', 1),
(9, 1, 'alexia@mail.ru', 'Alexia', '$2a$10$CyrWNIJ3zUXewKY3Lqe.fOKfc.QWqsCyP2xHdni/iwRWXIgLlqay2', 2);

-- --------------------------------------------------------

--
-- Структура таблицы `user_task`
--

CREATE TABLE `user_task` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `task_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `user_task`
--

INSERT INTO `user_task` (`id`, `user_id`, `task_id`) VALUES
(4, 8, 52),
(5, 9, 52),
(6, 8, 52);

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `demo`
--
ALTER TABLE `demo`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `role`
--
ALTER TABLE `role`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `task`
--
ALTER TABLE `task`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_role_id` (`role_id`);

--
-- Индексы таблицы `user_task`
--
ALTER TABLE `user_task`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_usertask_user_id` (`user_id`),
  ADD KEY `id_usertask_task_id` (`task_id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `role`
--
ALTER TABLE `role`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT для таблицы `task`
--
ALTER TABLE `task`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=75;

--
-- AUTO_INCREMENT для таблицы `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT для таблицы `user_task`
--
ALTER TABLE `user_task`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- Ограничения внешнего ключа сохраненных таблиц
--

--
-- Ограничения внешнего ключа таблицы `user`
--
ALTER TABLE `user`
  ADD CONSTRAINT `id_role_id` FOREIGN KEY (`role_id`) REFERENCES `role` (`id`);

--
-- Ограничения внешнего ключа таблицы `user_task`
--
ALTER TABLE `user_task`
  ADD CONSTRAINT `id_usertask_task_id` FOREIGN KEY (`task_id`) REFERENCES `task` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `id_usertask_user_id` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
