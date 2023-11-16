-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : ven. 17 fév. 2023 à 20:23
-- Version du serveur : 10.4.27-MariaDB
-- Version de PHP : 8.1.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `kantaoui`
--

-- --------------------------------------------------------

--
-- Structure de la table `cart`
--

CREATE TABLE `cart` (
  `id` int(11) NOT NULL,
  `productid` varchar(50) NOT NULL,
  `user` varchar(50) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `cart`
--

INSERT INTO `cart` (`id`, `productid`, `user`, `created_at`) VALUES
(28, '10', '2', '2023-02-13 18:52:32'),
(29, '11', '2', '2023-02-13 18:54:33');

-- --------------------------------------------------------

--
-- Structure de la table `orderitems`
--

CREATE TABLE `orderitems` (
  `id` int(11) NOT NULL,
  `oid` varchar(50) NOT NULL,
  `ptitle` varchar(50) NOT NULL,
  `price` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `orderitems`
--

INSERT INTO `orderitems` (`id`, `oid`, `ptitle`, `price`) VALUES
(1, '1', 'Casual Style ', '500'),
(2, '2', 'Casual Style ', '500'),
(3, '3', 'Party Wear Dhoti Sherwani', '999');

-- --------------------------------------------------------

--
-- Structure de la table `orders`
--

CREATE TABLE `orders` (
  `id` int(11) NOT NULL,
  `user` varchar(50) NOT NULL,
  `address` varchar(100) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `orders`
--

INSERT INTO `orders` (`id`, `user`, `address`, `created_at`) VALUES
(1, '2', 'ttttrtrtret', '2023-02-13 18:40:05'),
(2, '2', 'ttttrtrtret', '2023-02-13 18:44:09'),
(3, '3', 'kkwjs', '2023-02-13 18:45:23');

-- --------------------------------------------------------

--
-- Structure de la table `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `title` varchar(50) NOT NULL,
  `price` varchar(50) NOT NULL,
  `img` varchar(50) NOT NULL,
  `category` varchar(50) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `products`
--

INSERT INTO `products` (`id`, `title`, `price`, `img`, `category`, `created_at`) VALUES
(1, 'Western Women Tops', '450', 'top3.jpeg', 'Women', '2023-02-14 13:10:06'),
(2, 'Patiala Suit', '1500', 'index.jpg', 'Women', '2023-02-14 13:12:46'),
(3, 'Designer blue', '750', 'top4.jpeg', 'Women', '2023-02-14 13:21:43'),
(4, 'White Formal Suit', '1500', 'w22.jpg', 'Women', '2023-02-14 13:20:26'),
(5, 'Casual Style ', '500', 'm1.jpg', 'Mens', '2023-02-14 13:29:29'),
(6, '5 Smart Formal Outfit', '1000', 'm2.jpg', 'Mens', '2023-02-14 13:32:11'),
(7, 'Wedding Formal Wear Suit', '990', 'm3.jpg', 'Mens', '2023-02-14 13:35:21'),
(8, 'Plains Casual Shirt', '450', 'm8.jpg', 'Mens', '2023-02-14 13:41:29'),
(9, 'Plain Round Neck Casual', '430', 'm9.jpg', 'Mens', '2023-02-14 13:47:33'),
(10, 'Gown', '800', 'kid1.jpg', 'Kids', '2023-02-14 17:09:21'),
(11, 'Short Sleeve T-shirt', '600', 'kid2.jpg', 'Kids', '2023-02-14 17:10:27'),
(12, 'Track Suit', '700', 'kid5.jpg', 'Kids', '2023-02-14 17:24:02'),
(13, 'Flower Girl Dress', '850', 'kid7.jpg', 'Kids', '2023-02-14 17:27:09');

-- --------------------------------------------------------

--
-- Structure de la table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `mobile` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `mobile`, `password`, `created_at`) VALUES
(2, 'kantaoui', 'kantaoui@gmail.com', '0661387466', 'kantaoui2001', '2023-02-13 18:10:00');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `orderitems`
--
ALTER TABLE `orderitems`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `cart`
--
ALTER TABLE `cart`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT pour la table `orderitems`
--
ALTER TABLE `orderitems`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT pour la table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT pour la table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT pour la table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
