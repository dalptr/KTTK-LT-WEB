CREATE DATABASE ontap;
use ontap;

DROP TABLE IF EXISTS `chitietvandon`;
CREATE TABLE IF NOT EXISTS `chitietvandon` (
                                               `ID` varchar(32) NOT NULL,
                                               `vandon` varchar(32) NOT NULL,
                                               `hanghoa_ID` int NOT NULL,
                                               `soluong` int NOT NULL,
                                               PRIMARY KEY (`ID`),
                                               KEY `hanghoa_ID` (`hanghoa_ID`),
                                               KEY `vandon` (`vandon`)
) ;


INSERT INTO `chitietvandon` (`ID`, `vandon`, `hanghoa_ID`, `soluong`) VALUES
                                                                          ('2', '2', 1, 100),
                                                                          ('3', '3', 1, 100),
                                                                          ('5', '5', 2, 100);



DROP TABLE IF EXISTS `hanghoa`;
CREATE TABLE IF NOT EXISTS `hanghoa` (
                                         `ID` int NOT NULL,
                                         `ten` varchar(255) NOT NULL,
                                         `hangsx_ID` int NOT NULL,
                                         `quycach` varchar(255) NOT NULL,
                                         PRIMARY KEY (`ID`),
                                         KEY `hangsx_ID` (`hangsx_ID`)
) ;



INSERT INTO `hanghoa` (`ID`, `ten`, `hangsx_ID`, `quycach`) VALUES
                                                                (1, 'Maybach', 1, ''),
                                                                (2, 'Vios', 2, '');


DROP TABLE IF EXISTS `hangsanxuat`;
CREATE TABLE IF NOT EXISTS `hangsanxuat` (
                                             `ID` int NOT NULL,
                                             `ten` varchar(255) NOT NULL,
                                             `mota` text NOT NULL,
                                             PRIMARY KEY (`ID`)
) ;


INSERT INTO `hangsanxuat` (`ID`, `ten`, `mota`) VALUES
                                                    (1, 'Mercedes', 'Xe Mercedes'),
                                                    (2, 'Toyota', 'Xe Toyota');

DROP VIEW IF EXISTS `hienthi`;
CREATE TABLE IF NOT EXISTS `hienthi` (
                                         `hoten` varchar(255)
    ,`ID` varchar(32)
    ,`IDCT` varchar(32)
    ,`nguoinhan` varchar(255)
    ,`soluong` int
    ,`ten` varchar(255)
);


DROP TABLE IF EXISTS `nhanvien`;
CREATE TABLE IF NOT EXISTS `nhanvien` (
                                          `ID` int NOT NULL,
                                          `hoten` varchar(255) NOT NULL,
                                          `dienthoai` varchar(10) NOT NULL,
                                          `email` varchar(255) NOT NULL,
                                          `diachi` text NOT NULL,
                                          PRIMARY KEY (`ID`)
) ;


INSERT INTO `nhanvien` (`ID`, `hoten`, `dienthoai`, `email`, `diachi`) VALUES
                                                                           (1, 'NV1', '5555', '333', 'AA'),
                                                                           (2, 'NV2', '555', '35', 'AA');

DROP TABLE IF EXISTS `user`;
CREATE TABLE IF NOT EXISTS `user` (
                                      `ID` int NOT NULL,
                                      `username` varchar(255) NOT NULL,
                                      `matkhau` varchar(255) NOT NULL,
                                      `tendaydu` varchar(255) NOT NULL,
                                      `quyenhan` int NOT NULL,
                                      PRIMARY KEY (`ID`)
) ;


INSERT INTO `user` (`ID`, `username`, `matkhau`, `tendaydu`, `quyenhan`) VALUES
    (1, 'admin', 'root', 'admin1', 1);


DROP TABLE IF EXISTS `vandon`;
CREATE TABLE IF NOT EXISTS `vandon` (
                                        `ID` varchar(32) NOT NULL,
                                        `nhanvien_ID` int NOT NULL,
                                        `trangthai` int NOT NULL,
                                        `nguoinhan` varchar(255) NOT NULL,
                                        `dienthoai` varchar(10) NOT NULL,
                                        `diachi` text NOT NULL,
                                        `ngaygiaohang` datetime NOT NULL,
                                        `ghichu` text NOT NULL,
                                        PRIMARY KEY (`ID`),
                                        KEY `nhanvien_ID` (`nhanvien_ID`)
) ;

INSERT INTO `vandon` (`ID`, `nhanvien_ID`, `trangthai`, `nguoinhan`, `dienthoai`, `diachi`, `ngaygiaohang`, `ghichu`) VALUES
                                                                                                                          ('2', 1, 0, 'ururur', '', '', '0000-00-00 00:00:00', ''),
                                                                                                                          ('3', 2, 0, 'Kroos', '', '', '0000-00-00 00:00:00', ''),
                                                                                                                          ('5', 2, 0, 'Muller', '', '', '0000-00-00 00:00:00', '');

DROP TABLE IF EXISTS `hienthi`;

DROP VIEW IF EXISTS `hienthi`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `hienthi`  AS SELECT `vandon`.`ID` AS `ID`, `chitietvandon`.`ID` AS `IDCT`, `nhanvien`.`hoten` AS `hoten`, `vandon`.`nguoinhan` AS `nguoinhan`, `hanghoa`.`ten` AS `ten`, `chitietvandon`.`soluong` AS `soluong` FROM (((`vandon` join `nhanvien`) join `hanghoa`) join `chitietvandon`) WHERE ((`vandon`.`ID` = `chitietvandon`.`vandon`) AND (`hanghoa`.`ID` = `chitietvandon`.`hanghoa_ID`) AND (`nhanvien`.`ID` = `vandon`.`nhanvien_ID`))  ;

ALTER TABLE `chitietvandon`
    ADD CONSTRAINT `chitietvandon_ibfk_1` FOREIGN KEY (`hanghoa_ID`) REFERENCES `hanghoa` (`ID`),
    ADD CONSTRAINT `chitietvandon_ibfk_2` FOREIGN KEY (`vandon`) REFERENCES `vandon` (`ID`);

ALTER TABLE `hanghoa`
    ADD CONSTRAINT `hanghoa_ibfk_1` FOREIGN KEY (`hangsx_ID`) REFERENCES `hangsanxuat` (`ID`);

ALTER TABLE `vandon`
    ADD CONSTRAINT `vandon_ibfk_1` FOREIGN KEY (`nhanvien_ID`) REFERENCES `nhanvien` (`ID`);
COMMIT;
