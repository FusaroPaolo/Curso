-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost
-- Tiempo de generación: 02-03-2022 a las 11:38:47
-- Versión del servidor: 10.4.22-MariaDB
-- Versión de PHP: 8.1.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `QMKDB`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `contactos`
--

CREATE TABLE `contactos` (
  `id` int(11) NOT NULL,
  `nombre` varchar(250) NOT NULL,
  `email` varchar(250) NOT NULL,
  `tel` varchar(250) NOT NULL,
  `mensaje` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `contactos`
--

INSERT INTO `contactos` (`id`, `nombre`, `email`, `tel`, `mensaje`) VALUES
(1, 'paolo', 'pasd@gmail.com', '563214', 'qwertyuiopo'),
(4, 'paolo', 'padfas@gmail.ccom', '765432', 'test'),
(5, 'hgfds', 'kjhgfdsa', '54321|', ' mjuytfds'),
(6, 'hgfds', 'kjhgfdsa', '54321|', ' mjuytfds'),
(7, 'jhgfds', 'jhgfds', '65432', 'fgbdfvsdcasx'),
(8, 'jhgfd', 'iuhgf', '09876', ' bgtrdswefvgtvgfv vfrdfc cfdedx');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `lastest`
--

CREATE TABLE `lastest` (
  `id` int(4) NOT NULL,
  `img_url` varchar(300) NOT NULL,
  `header` varchar(300) NOT NULL,
  `description` text NOT NULL,
  `url` varchar(300) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `lastest`
--

INSERT INTO `lastest` (`id`, `img_url`, `header`, `description`, `url`) VALUES
(8, 'https://github.com/diimdeep/awesome-split-keyboards/blob/master/img/Kyria.jpg?raw=true', 'Kyria', '  The Kyria is a split keyboard kit by Thomas Baart of splitkb.com. In this repository you\'ll find files you can use to make your own Kyria case. THE SOFTWARE IS PROVIDED \"AS IS\", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE. These files are available for non-commercial use only. You explicitly have permission to make objects with these files for yourself, friends, family and coworkers. If you\'d like to sell objects made from these files, please get in touch. ', 'https://github.com/splitkb/kyria'),
(9, 'https://github.com/diimdeep/awesome-split-keyboards/raw/master/img/Iris.jpg', 'Iris Keyboard', 'If you\'re having the middle layers made, from the top of the switch plate to the top of the bottom plate, the minimum distance between the two required is 12mm if the plastic on the header pins is removed. The requirement is slightly more (about 13.5mm) if you leave the plastic on. Therefore, the following middle layer thickness are needed based on the thickness of the switch layer:', 'https://github.com/keebio/iris-case'),
(10, 'https://github.com/diimdeep/awesome-split-keyboards/raw/master/img/Mitosis.jpg', 'Mitosis', 'Mitosis Keyboard Firmware\r\n\r\nFirmware for Nordic MCUs used in the Mitosis Keyboard, contains precompiled .hex files, as well as sources buildable with the Nordic SDK\r\nInstall dependencies\r\n\r\nTested on Ubuntu 16.04.2, but should be able to find alternatives on all distros.\r\n\r\nsudo apt install openocd gcc-arm-none-eabi\r\n\r\nDownload Nordic SDK\r\n\r\nNordic does not allow redistribution of their SDK or components, so download and extract from their site:\r\n\r\nhttps://www.nordicsemi.com/eng/nordic/Products/nRF5-SDK/nRF5-SDK-v12-zip/54291\r\n\r\nFirmware written and tested with version 11', 'https://github.com/reversebias/mitosis'),
(11, 'https://github.com/diimdeep/awesome-split-keyboards/blob/master/img/Dactyl-ManuForm.jpg?raw=true', 'The Dactyl-ManuForm Keyboard', '  This is a fork of the Dactyl, a parameterized, split-hand, concave, columnar, ergonomic keyboard.\r\n  The main change is that the thumb cluster was adapted from the ManuForm keyboard (geekhack). The walls were changed to just drop to the floor. The keyboard is paramaterized to allow adjusting the following:', 'https://github.com/tshort/dactyl-keyboard'),
(12, 'https://github.com/diimdeep/awesome-split-keyboards/raw/master/img/Dactyl.jpg', 'Dactyl', 'The Dactyl is a parameterized, split-hand, concave, columnar, ergonomic keyboard.\r\nThere\'s a talk about the motivation and design of the Dactyl that helps provide context for this repo:\r\nAssembly\r\nGenerating a Design\r\n\r\nSetting up the Clojure environment\r\n\r\n    Install the Clojure runtime\r\n    Install the Leiningen project manager\r\n    Install OpenSCAD\r\n\r\nGenerating the design\r\n\r\n    Run lein repl\r\n    Load the file (load-file \"src/dactyl_keyboard/dactyl.clj\")\r\n    This will regenerate the things/*.scad files\r\n    Use OpenSCAD to open a .scad file.\r\n    Make changes to design, repeat load-file, OpenSCAD will watch for changes and rerender.\r\n    When done, use OpenSCAD to export STL files\r\n\r\nTips\r\n\r\n    Some other ways to evaluate the clojure design file\r\n    Example designing with clojure\r\n\r\nPrinting\r\n\r\nPregenerated STL files are available in the things/ directory.\r\nWiring\r\n\r\nMasks for the flexible PCBs I used are available for the left and right side.\r\n\r\nA very rough guide for the brave is here - It will be improved over time (TODO)!\r\nLicense\r\n\r\nCopyright © 2015 Matthew Adereth\r\n\r\nThe source code for generating the models (everything excluding the things/ and resources/ directories is distributed under the GNU AFFERO GENERAL PUBLIC LICENSE Version 3. The generated models and PCB designs are distributed under the Creative Commons Attribution-ShareAlike License Version 4.0.', 'https://github.com/adereth/dactyl-keyboard'),
(13, 'https://github.com/diimdeep/awesome-split-keyboards/raw/master/img/Redox.jpg', 'Redox', 'The Redox project is an open-source, QMK (Quantum Mechanical Keyboard Firmware) powered, ergonomic split mechanical keyboard. This repository will be used to share information about the project and instruction on how to use and assemble the Redox keyboard.\r\n\r\nRedox\r\n\r\nDesigner\'s bio: Mattia Dal Ben (aka u/TiaMaT102) obtained a master\'s degree in Electrical Engineering with a specialization in Computer Science at the University of Udine. Currently works as a Software Engineer in R&D department for a big IoT and Embedded Computers company. Mechanical keyboard enthusiast and maker, the Redox keyboard is the result of all of his passions.\r\nRationale\r\n\r\nThe Redox is a keyboard project designed with ergonomics in mind. It uses Cherry MX style mechanical switches laid out in a 7x5 columnar stagger layout with components that can easily be sourced.\r\n\r\nThe design was heavily inspired by the Ergodox keyboard, and its main goal is to reduce the size without sacrificing too many keys, hence the name Reduced Ergodox.\r\n\r\nAs an Ergodox user I couldn\'t ignore the few flaws of the original design and in a moment of arrogance I tried to fix them, thus the Redox features:\r\n\r\n    Easier to reach thumb cluster.\r\n    Additional easy-to-reach rotated 1.25u thumb key.\r\n    Reduced size.\r\n    Reduced costs (the Redox uses Arduino Pro Micro instead of the Teensy 2.0).\r\n    Either half can be plugged in to the PC since each half can act as the master.\r\n    Either half can work as a standalone keyboard to be used as a macropad/gaming keyboard.\r\n    RGB backlighting support.\r\n    3D-printer friendly case.\r\n    Wireless see section below\r\n    VIA compatible (thanks to Harshit Goel)\r\n    ZMK firmware compatible (thanks to toddmok)\r\n', 'https://github.com/mattdibi/redox-keyboard');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `id` int(11) NOT NULL,
  `usuario` varchar(60) NOT NULL,
  `password` varchar(80) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`id`, `usuario`, `password`) VALUES
(1, 'paolo', '81dc9bdb52d04dc20036dbd8313ed055'),
(2, 'Roberto', 'd93591bdf7860e1e4ee2fca799911215');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `contactos`
--
ALTER TABLE `contactos`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `lastest`
--
ALTER TABLE `lastest`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `contactos`
--
ALTER TABLE `contactos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de la tabla `lastest`
--
ALTER TABLE `lastest`
  MODIFY `id` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
