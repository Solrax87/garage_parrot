-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost:8889
-- Tiempo de generación: 17-09-2024 a las 21:03:07
-- Versión del servidor: 5.7.39
-- Versión de PHP: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `mysql`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `temoignages`
--

CREATE TABLE `temoignages` (
  `id` int(11) NOT NULL,
  `nom` varchar(60) DEFAULT NULL,
  `compagnie` varchar(50) DEFAULT NULL,
  `qualification` varchar(20) DEFAULT NULL,
  `comentaire` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `temoignages`
--

INSERT INTO `temoignages` (`id`, `nom`, `compagnie`, `qualification`, `comentaire`) VALUES
(1, 'Carlos Rodriguez', 'Digital Carlos', 'Excellent', 'Excellent service'),
(2, 'Farah Vercoutter', 'ADCDL', 'Excellent', 'Gracias por todo, fue un excelente servicio. '),
(7, 'Rodriguez Cody', 'Azteca', 'Bien', 'Gracias por el excelente servicio.'),
(8, 'Rodriguez Djeïla', 'Luna de mi corazon', 'Moyen', 'Simpaticos todos desde el principio hasta el final'),
(9, 'Wandershtain Sammuel', 'Clean Wandershtain', 'Excellent', 'Très sympa le vendeur, voiture propre et tout est clean. Merci'),
(16, 'Antonia Mercedes', '', 'Bien', 'Très contente d\'avoir acheté mon véhicule avec vous. Merci à Carlos pour son service!');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `vehicules`
--

CREATE TABLE `vehicules` (
  `id` int(11) NOT NULL,
  `titre` varchar(100) DEFAULT NULL,
  `prix` int(11) DEFAULT NULL,
  `kilometrage` int(11) DEFAULT NULL,
  `date_circulation` date DEFAULT NULL,
  `image1` varchar(200) DEFAULT NULL,
  `image2` varchar(200) DEFAULT NULL,
  `image3` varchar(200) DEFAULT NULL,
  `image4` varchar(200) DEFAULT NULL,
  `option1` longtext,
  `marque` varchar(25) DEFAULT NULL,
  `modele` varchar(25) DEFAULT NULL,
  `boite` varchar(25) DEFAULT NULL,
  `couleur` varchar(25) DEFAULT NULL,
  `puissance` int(11) DEFAULT NULL,
  `sellerie` varchar(45) DEFAULT NULL,
  `type1` varchar(45) DEFAULT NULL,
  `version1` varchar(45) DEFAULT NULL,
  `date_creation` date DEFAULT NULL,
  `energie` varchar(45) DEFAULT NULL,
  `vendeurs_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `vehicules`
--

INSERT INTO `vehicules` (`id`, `titre`, `prix`, `kilometrage`, `date_circulation`, `image1`, `image2`, `image3`, `image4`, `option1`, `marque`, `modele`, `boite`, `couleur`, `puissance`, `sellerie`, `type1`, `version1`, `date_creation`, `energie`, `vendeurs_id`) VALUES
(29, 'Porsche Cayenne 3.0D V6 262 ch Tiptronic A', 120000, 165000, '2015-09-15', '6378a90f3ea969c5c17a9e1d13646963.jpg', '7d8fefe36ce60c24056707e371550b4b.jpg', '300b78927985c54ae3c12a62b029ca05.jpg', 'dfe569dfd18827ccf0462a7626c7b9bb.jpg', '- EXTÉRIEUR :\\r\\n- rétroviseurs électriques\\r\\n- rétroviseurs rabattables\\r\\n- vitres électriques\\r\\n- vitres surteintées\\r\\n- phares xenon\\r\\n- caméra de recul\\r\\n- attelage\\r\\n- filtre à particules\\r\\n- phares de jour (feux diurne)\\r\\n- jantes 19 pouces\\r\\n\\r\\n- INTÉRIEUR ET CONFORT :\\r\\n- accoudoir central\\r\\n- auto-radio commandé au volant\\r\\n- banquette 1/3 - 2/3\\r\\n- ordinateur de bord\\r\\n- sièges électriques\\r\\n- volant multifonctions\\r\\n- volant sport\\r\\n- bluetooth\\r\\n- aide au démarrage en pente\\r\\n- Non-fumeur\\r\\n- pack cuir\\r\\n- pack électrique\\r\\n- pack hifi\\r\\n- stop & start\\r\\n- volant cuir\\r\\n- climatisation\\r\\n- GPS 16/9ème\\r\\n- tactile\\r\\n- intérieur cuir\\r\\n\\r\\n- SÉCURITÉ :\\r\\n- détecteur de pluie\\r\\n- direction assistée\\r\\n- rétroviseurs dégivrants\\r\\n- ABS\\r\\n- airbags latéraux\\r\\n- anti-démarrage\\r\\n- ESP\\r\\n- frein parking automatique\\r\\n- phares antibrouillard\\r\\n- radar avant de détection d\\\'obstacles\\r\\n- radar arrière de détection d\\\'obstacles\\r\\n- régulateur de vitesse\\r\\n- limiteur de vitesse\\r\\n- 4 roues motrices', 'Audi', 'CAYENNE', 'AUTOMATIQUE', 'Blanc', 262, 'Cuir', '4X4, SUV', 'TIPTRONIC A', '2024-02-23', 'Diesel', 1),
(30, 'BMW Série 7 G11/G12 740d xDrive 320 ch M Sport A', 35000, 140000, '2016-03-18', 'ef1d8cb3c7b2e40820c960247afc72ae.jpg', 'f4d7d60c440f2a8f19ef277af032efb2.jpg', 'c2fa4a5746146c886bfd9bca86291923.jpg', 'ca6e76ffb3d60a55cc82fa4c72f526a4.jpg', '-EXTÉRIEUR :\r\n- rétroviseurs électriques\r\n- rétroviseurs rabattables\r\n- vitres surteintées\r\n- caméra de recul\r\n- filtre à particules\r\n\r\n-INTÉRIEUR ET CONFORT :\r\n- affichage tête haute\r\n- carte main libre\r\n- ordinateur de bord\r\n- sièges électriques\r\n- volant multifonctions\r\n- volant réglable\r\n- volant sport\r\n- stop & start\r\n- volant cuir\r\n- climatisation\r\n- GPS\r\n\r\n- SECURITÉ :\r\n- détecteur de pluie\r\n- fermeture centralisée\r\n- anti-démarrage\r\n- contrôle pression des pneus\r\n- ESP\r\n- phares antibrouillard\r\n- radar avant de détection d\'obstacles\r\n- radar arrière de détection d\'obstacles\r\n- aide au freinage d\'urgence\r\n- fixation ISOFIX\r\n- régulateur de vitesse\r\n- limiteur de vitesse', 'BMW', 'SERIE 7', 'AUTOMATIQUE', 'NOIR', 320, 'CUIR', 'BERLIN', 'M SPORT', '2024-02-23', 'Diesel', 1),
(31, 'Mitsubishi Pajero LONG 3.2 DI-D Intense A 7 places', 14000, 21000, '2016-02-03', 'f37ccfb0625a0e0d954dd674b1c62a1b.jpg', '96c58659b571f3b50dbb1a44a94d3451.jpg', 'dfa462ac223c9a779c344e7c98b0b642.jpg', 'e8269cf445e428b9959f2fd2aa173073.jpg', 'Audio - Télécommunications:\r\n- GPS Cartographique\r\n- Radio CD\r\n- Radio cassette Conduite\r\n- Régulateur de vitesse\r\n- gps\r\n- 7 places \r\n\r\nExtérieur:\r\n- Jantes en alliage\r\n- Pack Nord\r\n- Toit ouvrant\r\n\r\nIntérieur:\r\n- Clim automatique\r\n- Direction assistée\r\n- Pack electrique\r\n\r\nSécurité:\r\n- ABS\r\n- Airbag conducteur\r\n- Airbags frontaux\r\n- Airbags latéraux avant\r\n- Antipatinage\r\n- ESP\r\n\r\nAutres équipements et informations :\r\n- puissance réelle : 170 ch\r\n- Puissance kilowatt : 125 kw\r\n- EASY AUTO\r\n- EASY AUTO LA FARE LES OLIVIERS\r\n- REPRISE POSSIBLE\r\n- FINANCEMENT POSSIBLE\r\n- Peinture métallique', 'MITSUBISHI', 'PAJERO', 'AUTOMATIQUE', 'GRIS', 170, 'CUIR', '4x4', 'INTENSE A', '2024-02-23', 'Diesel', 1),
(32, 'AUDI Q7 50 TDI 286 TIPTRONIC 8 QUATTRO 7PL S LINE', 70000, 80000, '2021-07-05', 'a37d124166f2d6987e50da54aec0efb3.jpg', '78dc0628c31213e1c30213474a996568.jpg', '0d4a2a6c8e80a95aeaa7f82990df76a8.jpg', 'dbd5f73fab03e62c5a7cf56d77a9492e.jpg', 'Extérieur :\r\n- toit panoramique\r\n- vitres surteintées\r\n- caméra de recul\r\n- jantes aluminium 22 pouces\r\n- empattement 299 cm\r\n\r\nIntérieur et confort :\r\n- accoudoir central\r\n- volant réglable\r\n- bluetooth\r\n- Non-fumeur\r\n- radio numérique\r\n- climatisation automatique\r\n\r\nSécurité :\r\n- airbags latéraux\r\n- anti-démarrage\r\n- suspension sport\r\n- fixation ISOFIX\r\n- régulateur de vitesse\r\n- limiteur de vitesse\r\n\r\nAutres équipements et informations :\r\n- clé mains-libres\r\n- airbag coté passager\r\n- clignotants LED dynamique\r\n- jantes aluminium\r\n- Cockpit numérique\r\n- Affichage de perte de pression des pneus\r\n- Appel d\'urgence avec service Audi connect + commande de véhicule\r\n- Applications décoratives aluminium brossé mat\r\n- Appuie-tête AV pour les sièges AV réglables manuellement en hauteur\r\n- Appui lombaire à 4 axes pour les sièges AV\r\n- réglages électriques\r\n- horizontal et vertical\r\n- Assistant de feux de route\r\n- Audi connect avec carte SIM intégrée (e-SIM) et licence d\'utilisation pour 3 ans\r\n- Audi drive select\r\n- Audi hold assist: maintien le véhicule à l\'arrêt en côte comme en descente\r\n- Audi Parking System Plus\r\n- Audi phone box\r\n- Audi pre sense basic\r\n- Audi pre sense front\r\n- Audi smartphone interface\r\n- Audi Sound System avec 10 HP\r\n- Avertissement de franchissement de ligne\r\n- Badges extérieurs avec identification du modèle\r\n- avec inscription de la puissance/technologie\r\n- Bang & Olufsen Premium Sound System avec son en 3D\r\n- Banquette AR \"plus\" les sièges de la 2ème rangée se règlent séparément et manuellement\r\n- Becquet AR de pavillon style \"S\"\r\n- Boîtiers de rétroviseurs extérieurs laqués dans la teinte carrosserie\r\n- Boîtiers de rétroviseurs extérieurs laqués noir brillant\r\n- Buses de lave-glace dégivrantes\r\n- Câble électrique 16 A pour recharge en Mode 3 / Type 2\r\n- Caméra de reconnaissance et lecture des panneaux de circulation\r\n- Caméra multifonction pour systèmes d\'assistance à la conduite\r\n- Ciel de pavillon en Tissu Noir\r\n- Clé à fréquence radio (sans safelock)\r\n- Climatisation stationnaire\r\n- Suspension piloté\r\n- Direction progressive\r\n- Eclairage intérieur AV et AR\r\n- Ecrous de roues antivol avec indicateur de desserrage d\'écrous\r\n- Feux AR à LED\r\n- Fixations pour sièges enfant ISOFIX et avec systèmes \"Top Tether\" pour la banquette AR \r\n- Hayon de coffre à ouverture automatique\r\n- Kit de réparation de pneus\r\n- Lave-phares haute pression\r\n- Logos extérieurs \"S line\"\r\n- Moulures de seuil à l\'AR/AV avec insert en aluminium éclairées\r\n- Moulures de seuils de portes avec inscription S\r\n- Navigation MMI avec MMI touch\r\n- Outillage de bord\r\n- Pack Assistance Route\r\n- Pack Éclairage intérieur à LED\r\n- Pack Esthétique Noir\r\n- Pack Extérieur \"S line\" avec peinture unie intégrale\r\n- Pare-brise en verre athermique\r\n- Pare-soleil avec miroir de courtoisie éclairé côté conducteur et passager AV\r\n- Pédalier et repose-pied en acier inoxydable\r\n- Phares entièrement à LED\r\n- Projecteurs Audi Matrix LED\r\n- Projecteurs HD Matrix LED avec Audi Laser Light\r\n- Rails de toit\r\n- Rampes de pavillon\r\n- Rampes de pavillon laquées noires\r\n- Rétroviseur intérieur jour/nuit automatique sans encadrement (Frameless)\r\n- Rétroviseurs extérieurs réglables et escamotables électriquement jour/nuit, automatique\r\n- Sellerie Cuir\r\n- Sièges AV/AR chauffants\r\n- Sièges AV chauffants\r\n- Sièges AV réglables électriquement avec fonction mémoire pour le siège du conducteur\r\n- Touches de commande façon verre en noir avec réponse haptique incluant style aluminium étendu \r\n- Vitres athermiques\r\n- Volant 3 branches multifonctions en cuir avec méplat', 'Audi', 'Q7', 'AUTOMATIQUE', 'Bleu', 286, 'Cuir', '4X4, SUV', 'S, Line', '2024-02-23', 'Diesel', 1),
(33, 'Jeep GLADIATOR 3.0 V6 MULTIJET', 70000, 12000, '2022-07-02', 'ef7b061b709128977310b0b24481d322.jpg', '7e538e734d14d9f663a40851102e8f5f.jpg', '0f5a35901b66d6a08e3add4f3219f603.jpg', '2efd235fe82db7aaddee03d2b79595e9.jpg', 'Extérieur :\r\n- vitres électriques\r\n- vitres surteintées\r\n- caméra de recul\r\n- filtre à particules\r\n- jantes alliage 18 pouces\r\n- empattement 3488 cm\r\n\r\nIntérieur et confort :\r\n- ordinateur de bord\r\n- pack fumeur\r\n- radio USB\r\n- climatisation automatique\r\n- GPS\r\n- intérieur tissu\r\n\r\nSécurité :\r\n- phares antibrouillard\r\n- régulateur de vitesse\r\n- limiteur de vitesse\r\n- 4 roues motrices', 'JEEP', 'GLADIATOR', 'AUTOMATIQUE', 'NOIR', 264, 'CUIR', '4x4', 'OVERLAND', '2024-03-20', 'Diesel', 2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `vendeurs`
--

CREATE TABLE `vendeurs` (
  `id` int(11) NOT NULL,
  `nom` varchar(45) DEFAULT NULL,
  `prenom` varchar(45) DEFAULT NULL,
  `telephone` varchar(45) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `password` char(100) DEFAULT NULL,
  `rol` enum('employer','administrateur') DEFAULT 'employer'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `vendeurs`
--

INSERT INTO `vendeurs` (`id`, `nom`, `prenom`, `telephone`, `email`, `password`, `rol`) VALUES
(1, 'Parrot', 'Vincent', '0601020304', 'contact_victor@garageparrot.com', '$2y$10$etnO9jbAV.BphjuBjlLXLOWOKfJyxiRZviTzv81TEYpG5cPcz9ue2', 'administrateur'),
(2, 'Rodriguez', 'Carlos', '0637822946', 'carlos_rodriguez@garageparrot.com', '$2y$10$LWZ.VL0pXwl3Z3agA5oF2.kN5IUUX9AZD8Md1Zd4icRP.9Mo/JIgm', 'employer'),
(3, 'Vercoutter', 'Farah', '0758295908', 'farah_vercoutter@garageparrot.com', '$2y$10$oDwpymUtPy/iFk8lywPUdOoyqxKCZfdFF73o2HcWmNQt5LPyRSU/S', 'employer');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `temoignages`
--
ALTER TABLE `temoignages`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `vehicules`
--
ALTER TABLE `vehicules`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_vehicules_vendeurs_idx` (`vendeurs_id`);

--
-- Indices de la tabla `vendeurs`
--
ALTER TABLE `vendeurs`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `temoignages`
--
ALTER TABLE `temoignages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT de la tabla `vehicules`
--
ALTER TABLE `vehicules`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT de la tabla `vendeurs`
--
ALTER TABLE `vendeurs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
