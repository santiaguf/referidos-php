--
-- Estructura de tabla para la tabla `clientes`
--

CREATE TABLE IF NOT EXISTS `clientes` (
  `id_cliente` int(7) NOT NULL AUTO_INCREMENT,
  `nombre_cliente` varchar(20) NOT NULL,
  `apellido_cliente` varchar(20) DEFAULT NULL,
  `telefono_cliente` varchar(16) DEFAULT NULL,
  `email_cliente` varchar(40) DEFAULT NULL,
  `fecha_registro` date NOT NULL,
  `tipo_servicio` varchar(20) NOT NULL,
  `id_vendedor` int(4) NOT NULL,
  `subsource` varchar(40) DEFAULT 'none',
  `creado_por` int(4) DEFAULT NULL,
  PRIMARY KEY (`id_cliente`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=24 ;

--
-- Volcado de datos para la tabla `clientes`
--

INSERT INTO `clientes` (`id_cliente`, `nombre_cliente`, `apellido_cliente`, `telefono_cliente`, `email_cliente`, `fecha_registro`, `tipo_servicio`, `id_vendedor`, `subsource`, `creado_por`) VALUES
(8, 'Frank', 'Martinez', '234567890', 'd@m.com', '2014-03-24', 'ReparaciÃ³n crÃ©dito', 25, 'none', 5),
(9, 'alvaro', 'uribe velez', '(111) 222 3344', 'alvaro@velez.co', '2014-03-29', 'Compra de casa', 22, 'estiven jaramillo', 23),
(10, 'juan', 'soto', '111111', 'juanks10@hotmail.com', '2014-03-30', 'Compra de casa', 21, 'none', 23),
(11, 'shakira', 'gomez', '305-4567890', 'shakira@shakira.com', '2014-03-31', 'RefinanciaciÃ³n', 22, 'none', 15),
(12, 'Jose', 'Cifuentes', '223344', 'dfj@hg.com', '2014-03-31', 'Taxes y Contabilidad', 22, 'none', 5),
(13, 'Jose', 'Cifuentes', '223344', 'dfj@hg.com', '2014-03-31', 'Taxes y Contabilidad', 22, 'none', 15),
(14, 'Pedro', 'Cifuentes', '11111144444', 'juanks10@yahoo.com', '2014-03-31', 'Compra de casa', 23, 'none', 16),
(15, 'sebastian', 'jaramillo', '316-2901234', 'sebas.jara@hotmaill.com', '2014-04-02', 'Compra de casa', 22, 'juan carlos', 15),
(16, 'Carlos', 'slim', '111-222-3344', 'carlosslim@telmex.com', '2014-04-02', 'Seguro de vida', 23, 'juan carlos sanchez', 1),
(17, 'luisa', 'giraldo', '12344', 'correo@correo.com', '2014-04-03', 'Compra de casa', 25, '', 16),
(18, 'juliana', 'Marin', '2222222222', 'corre@me.com', '2014-04-04', 'RefinanciaciÃ³n', 23, 'Miguel Agudelo', 15),
(19, 'clientedeteam1', 'cliente fiel', '1234567890', 'cliente@team1.com', '2014-04-04', 'Taxes y Contabilidad', 23, '', 15),
(20, 'Pedro', 'Ibarra', '6466241779', 'cbl.express@gmail.com', '2014-04-05', 'Seguro de vida', 17, 'Karim', 5),
(21, 'Jose', 'Alba', '(646) 353-7350', 'emilyalba16@hotmail.com', '2014-04-07', 'Compra de casa', 18, 'Carlos', 5),
(22, 'Manuel ', 'Abreu', '201-898-6731', '', '2014-04-07', 'Compra de casa', 18, 'Carlos', 16),
(23, 'juan roman', 'riquelme', '1112304404', 'riquelme@boca.com.ar', '2014-04-08', 'Retiro', 22, 'juan carlos sanchez', 3);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE IF NOT EXISTS `usuarios` (
  `id` int(5) NOT NULL AUTO_INCREMENT,
  `fecha` varchar(10) NOT NULL,
  `nick` varchar(20) NOT NULL,
  `pass` varchar(32) NOT NULL,
  `mail` varchar(40) NOT NULL,
  `ip` varchar(15) NOT NULL,
  `perfil` varchar(14) NOT NULL,
  `tipoperfil` int(2) NOT NULL,
  `nombre_completo` varchar(40) DEFAULT NULL,
  `movil` varchar(20) DEFAULT NULL,
  `creado_por` int(4) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `nick` (`nick`,`pass`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=36 ;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`id`, `fecha`, `nick`, `pass`, `mail`, `ip`, `perfil`, `tipoperfil`, `nombre_completo`, `movil`, `creado_por`) VALUES
(1, '2014-03-10', 'juanks10', 'f35d242dd4f13a4ff4be859fa867a0cd', 'juanks10@hotmail.com', '186.86.26.171', 'administrador', 1, 'Juan Carlos', '3163659199', NULL),
(3, '2014-03-25', 'santiago', '166dc61ead1f15cf5cd97819a50edaf3', 'exactlimon@gmail.com', '142.4.201.183', 'administrador', 1, 'santiago bernal', '111', NULL),
(5, '2014-03-20', 'abbasheli', '3815ba5490e6077fabd01ca1ce6dba51', 'fredy@fredymarin.com', '68.197.5.212', 'administrador', 1, 'Fredy Marin', '2016745824', NULL),
(15, '2014-04-03', 'team3', 'd5ddf412b00f28b00bf156bcac3fbb37', '3@3.com', '142.4.201.183', 'team', 3, 'team tres', '1111', 3),
(16, '2014-04-04', 'team4', '52d76519321c8d4fb736b3990542769a', '4@cuatro.com', '142.4.201.183', 'team', 3, 'team cuatro', '34522222', 3),
(17, '2014-04-05', 'FMTaxSolutions', 'a9a3aceee4e1d0e90f9daf41700ce067', 'fmtaxsolutions@gmail.com', '68.197.5.212', 'vendedor', 2, 'Fernando Espinel', '7184783376', 5),
(18, '2014-04-07', 'amayaestrada', '3128c030baf32cf5f87db41315f81d32', 'carlos@amayaestrada.com', '68.197.5.212', 'vendedor', 2, 'Carlos Amaya', '', 5),
(20, '2014-04-08', 'Frank', '4b99d62d2045924249f2a75c4ee8739c', 'marketing@fredymarin.com', '68.197.5.212', 'team', 3, 'Frank Martinez', '2015520067', 5),
(21, '2014-04-08', 'Global', '9a0a945fb6944428a5841ac77e244041', 'global4703@gmail.com', '68.197.5.212', 'vendedor', 2, 'Luz Delgado', '2016241840', 20),
(22, '2014-04-08', 'Instant', '990ed4b9b3ffd58b69bd78dbd252d32e', 'instantmultiservicecorp@gmail.com', '68.197.5.212', 'vendedor', 2, 'Nora Amaro', '2017664165', 20),
(23, '2014-04-08', 'FrankMartinez', '6860cf7d941eb26af3eae0a7c3da2062', 'marketing@fredymarin.com', '68.197.5.212', 'vendedor', 2, 'Frank Martinez', '2015520067', 20),
(25, '2014-04-10', 'Monica Travel', '605a9f5a1db0c7964c32cbc20f62dcb0', 'Monicatravel@hotmail.com', '69.112.37.124', 'vendedor', 2, 'Monica Travel', '2017514185', 20),
(26, '2014-04-10', 'Tele Plus', 'b7bf1c66e27ea7320fcbd824c7610698', 'teleplusnj@hotmail.com', '69.112.37.124', 'vendedor', 2, 'Luis Carlos Torres', '2017588595', 20),
(27, '2014-04-22', 'Dorados', '2551b535f48de41a4db19a0b9772c5b4', 'okmultiservices@hotmail.com', '75.99.189.186', 'vendedor', 2, 'Sandra Vazquez', '2015532227', 20),
(28, '2014-04-22', 'Gabriela', '08123b9bba36bdd1b9d5f0a69b9d4254', 'multiservicegabriela@hotmail.com', '69.116.187.25', 'vendedor', 2, 'Rogelio Hernandes', '2017668121', 20),
(29, '2014-04-23', 'Lucy', 'f7506fcd373aa5d15d395da1d9838426', 'lucymulti@live.com', '69.116.187.25', 'vendedor', 2, 'lucy mendez', '2017585401', 20),
(30, '2014-04-23', 'Giros Express', '6860cf7d941eb26af3eae0a7c3da2062', 'girosexpresslatinos@hotmail.com', '69.116.187.25', 'vendedor', 2, 'Antonio pulido', '2017664879', 20),
(31, '2014-05-06', 'Dorados2', 'e71651645818235b339b391b5d4b4b79', 'losdoradosnet@gmail.com', '69.116.187.25', 'vendedor', 2, 'Monica contreras', '2017700300', 20),
(32, '2014-05-06', 'Silvera', 'e51392ac259faf29c37655ff882927ea', 'silveramultiservice@gmail.com', '69.116.187.25', 'vendedor', 2, 'mechell Gil', '2017515333', 20),
(33, '2014-05-06', 'Jnts', 'aeac3b88e28178fd53980ba4bc5d5e1c', 'jntmultiservices@gmail.com', '69.116.187.25', 'vendedor', 2, 'natacha amor', '2013191660', 20),
(34, '2014-05-06', 'Envigado', '9f205ddb2f758207aa8446959d112455', 'envigadobakery@hotmail.com', '69.116.187.25', 'vendedor', 2, 'jose restrepo', '2019029701', 20),
(35, '2014-11-14', 'Amaya', 'd2065d59fa69cc19bfd53c92426d9954', 'juliana@amayaestrada.com', '68.197.2.186', 'team', 3, 'Carlos Amaya', '9143096425', 5);