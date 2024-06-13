/*==============================================================*/
/* DBMS name:      MySQL 5.0                                    */
/* Created on:     02/05/2024 15:22:54                          */
/*==============================================================*/
DROP DATABASE IF EXISTS sepatuku_mario;
CREATE DATABASE sepatuku_mario;
USE sepatuku_mario;

DROP TABLE IF EXISTS ACCOUNT;
DROP TABLE IF EXISTS CART;
DROP TABLE IF EXISTS DETAIL_CART;
DROP TABLE IF EXISTS DETAIL_ORDER;
DROP TABLE IF EXISTS DETAIL_PRODUK;
DROP TABLE IF EXISTS DETAIL_WISHLIST;
DROP TABLE IF EXISTS KATEGORI;
DROP TABLE IF EXISTS ORDER_TABLE;
DROP TABLE IF EXISTS PRODUK;
DROP TABLE IF EXISTS WISHLIST;


CREATE TABLE ACCOUNT (
   ACCOUNT_ID          varchar(200),
   USERNAME             VARCHAR(50) NOT NULL UNIQUE,
   PASSWORD             TEXT NOT NULL,
   EMAIL                VARCHAR(100) NOT NULL UNIQUE,
   PHONE_NUMBER         VARCHAR(20),
   ADDRESS              VARCHAR(100),
   ROLES    VARCHAR(15) NOT NULL DEFAULT 'User',
   is_olap    BOOL DEFAULT 0,
   PRIMARY KEY (ACCOUNT_ID)
);

/*==============================================================*/
/* Table: KATEGORI                                              */
/*==============================================================*/
CREATE TABLE KATEGORI (
   KATEGORI_ID         int unsigned not null auto_increment,
   NAMA_KATEGORI        VARCHAR(100),
   PRIMARY KEY (KATEGORI_ID)
);

/*==============================================================*/
/* Table: PRODUK                                                */
/*==============================================================*/
CREATE TABLE PRODUK (
   PRODUK_ID            VARCHAR(15) NOT NULL,
   KATEGORI_ID          INT unsigned NOT NULL ,
   NAMA_PRODUK          VARCHAR(100),
   DESKRIPSI            TEXT,
   IMAGE                VARCHAR(200),
   HARGA                BIGINT,
   PRIMARY KEY (PRODUK_ID),
   foreign key(KATEGORI_ID) references KATEGORI(KATEGORI_ID)
);


/*==============================================================*/
/* Table: DETAIL_PRODUK                                         */
/*==============================================================*/
CREATE TABLE DETAIL_PRODUK (
   PRODUK_ID            VARCHAR(15) NOT NULL,
   UKURAN               INT,
   JUMLAH               INT,
   foreign key (PRODUK_ID) references PRODUK(PRODUK_ID)
);

/*==============================================================*/
/* Table: CART                                                  */
/*==============================================================*/
CREATE TABLE CART (
   CART_ID              int unsigned not null auto_increment,
   ACCOUNT_ID           VARCHAR(200),
   NAMA_CART            VARCHAR(100),
   foreign key (ACCOUNT_ID) references ACCOUNT(ACCOUNT_ID),
   PRIMARY KEY (CART_ID)
);

/*==============================================================*/
/* Table: DETAIL_CART                                           */
/*==============================================================*/
CREATE TABLE DETAIL_CART (
 CART_ID             int unsigned not null,
 PRODUK_ID            VARCHAR(15) NOT NULL,
 UKURAN               INT NOT NULL,
 JUMLAH               INT,
 foreign key (PRODUK_ID) references PRODUK(PRODUK_ID),
 foreign key (CART_ID) references CART(CART_ID)
);

/*==============================================================*/
/* Table: ORDER_TABLE                                           */
/*==============================================================*/

CREATE TABLE ORDER_TABLE (
   ORDER_ID             VARCHAR(15) NOT NULL,
   ACCOUNT_ID          VARCHAR(200),
   ORDER_TIME timestamp NOT NULL default current_timestamp,
   TOTAL_HARGA          BIGINT,
   is_olap    bool default 0,
   foreign key (ACCOUNT_ID) references ACCOUNT(ACCOUNT_ID),
   PRIMARY KEY (ORDER_ID)
);

/*==============================================================*/
/* Table: DETAIL_ORDER                                          */
/*==============================================================*/
CREATE TABLE DETAIL_ORDER (
   ORDER_ID             VARCHAR(15) NOT NULL,
   PRODUK_ID            VARCHAR(15) NOT NULL,
   UKURAN               INT,
   JUMLAH               INT,
   is_olap    bool default 0,
   foreign key (ORDER_ID) references ORDER_TABLE(ORDER_ID),
   foreign key (PRODUK_ID) references PRODUK(PRODUK_ID)
);

/*==============================================================*/
/* Table: WISHLIST                                              */
/*==============================================================*/
CREATE TABLE WISHLIST (
   WISHLIST_ID          int unsigned not null auto_increment,
   ACCOUNT_ID           VARCHAR(200),
   NAMA_WISHLIST        VARCHAR(100),
   foreign key (ACCOUNT_ID) references ACCOUNT(ACCOUNT_ID),
   PRIMARY KEY (WISHLIST_ID)
);

/*==============================================================*/
/* Table: DETAIL_WISHLIST                                       */
/*==============================================================*/
CREATE TABLE DETAIL_WISHLIST (
 WISHLIST_ID          int unsigned not null,
 PRODUK_ID            VARCHAR(15) NOT NULL,
 foreign key (WISHLIST_ID) references WISHLIST(WISHLIST_ID),
 foreign key (PRODUK_ID) references PRODUK(PRODUK_ID)
);
      
INSERT INTO `ACCOUNT` (`ACCOUNT_ID`, `USERNAME`, `PASSWORD`, `EMAIL`, `PHONE_NUMBER`, `ADDRESS`) VALUES 
('M0001', 'Agus_Santoso', 'A9u$S@n+0s0', 'agussantoso@example.com', '08123334444', 'Jalan Maju, Bandung Selatan, Indonesia'),
('M0002', 'Rini_Kurniawati', 'R1n!Kurn!@w@t1', 'rinikurniawati@example.com', '08128885555', 'Jalan Bahagia, Medan Timur, Indonesia'),
('M0003', 'Ali_Maulana', 'Al!M@ul@n@123', 'alimaulana@example.com', '08129997777', 'Jalan Sejahtera, Jakarta Timur, Indonesia'),
('M0004', 'Siti_Nurhaliza', 'S!t!Nurh@l!z@567', 'sitinurhaliza@example.com', '08123456789', 'Jalan Merdeka, Jakarta, Indonesia'),
('M0005', 'Ahmad_Budi', 'Ahm@d_Bud!999', 'ahmadbudi@example.com', '08129876543', 'Jalan Raya, Bandung, Indonesia'),
('M0006', 'Linda_Sari', 'L!nd@S@r!876', 'lindasari@example.com', '08127654321', 'Jalan Sejahtera, Surabaya, Indonesia'),
('M0007', 'Adi_Santoso', 'Ad!S@nt0s0*123', 'adisantoso@example.com', '08122334455', 'Jalan Maju Mundur, Semarang, Indonesia'),
('M0008', 'Rina_Kurniati', 'R!n@Kurn!@t!555', 'rinakurniati@example.com', '08129998877', 'Jalan Bakti, Medan, Indonesia'),
('M0009', 'Hendri_Wijaya', 'H3ndr!W!j@y@999', 'hendriwijaya@example.com', '08128889900', 'Jalan Jaya, Palembang, Indonesia'),
('M0010', 'Dewi_Rahayu', 'D3w!R@h@y^877', 'dewirahayu@example.com', '08127778899', 'Jalan Harmoni, Makassar, Indonesia'),
('M0011', 'Rudi_Hartono', 'Rud!H@r+t0n0*6', 'rudihartono@example.com', '08126667788', 'Jalan Damai, Pontianak, Indonesia'),
('M0012', 'Eko_Purnomo', 'Ek0Purn0m0@889', 'ekopurnomo@example.com', '08125556677', 'Jalan Cinta, Denpasar, Indonesia'),
('M0013', 'Nita_Wijayanti', 'N!t@W!j@y@nt!345', 'nitawijayanti@example.com', '08124447788', 'Jalan Indah, Balikpapan, Indonesia'),
('M0014', 'Bambang_Supriyanto', 'B@mb@ngSupr1y@nt0', 'bambangsupriyanto@example.com', '08123338899', 'Jalan Bahagia, Banjarmasin, Indonesia'),
('M0015', 'Siska_Ramadhani', 'S!sk@R@m@dhan!99', 'siskaramadhani@example.com', '08122239900', 'Jalan Mulia, Samarinda, Indonesia'),
('M0016', 'Wahyu_Wibowo', 'W@h*yuW!b0w0^8', 'wahyuwibowo@example.com', '08127778899', 'Jalan Sejahtera, Batam, Indonesia'),
('M0017', 'Maya_Anggraini', 'M@y@Anggr@!n!677', 'mayaanggraini@example.com', '08124445566', 'Jalan Damai, Manado, Indonesia'),
('M0018', 'Hendra_Susanto', 'H3ndr@Su$@nt0^3', 'hendrasusanto@example.com', '08123334455', 'Jalan Bahagia, Palu, Indonesia'),
('M0019', 'Dian_Kusuma', 'D!@nKusum@223', 'diankusuma@example.com', '08122223344', 'Jalan Cinta, Jayapura, Indonesia'),
('M0020', 'Fitriani_Ningsih', 'F!tr!@n!N!ngs!h$33', 'fitrianiningsih@example.com', '08129998877', 'Jalan Harmoni, Ambon, Indonesia'),
('M0021', 'Arif_Budiman', 'Ar!fBud!m@n$789', 'arifbudiman@example.com', '08128889900', 'Jalan Damai, Ternate, Indonesia'),
('M0022', 'Siti_Aisyah', 'S!t!@isy@h^6', 'sitiaisyah@example.com', '08127778899', 'Jalan Jaya, Pangkal Pinang, Indonesia'),
('M0023', 'Budi_Prasetyo', 'Bud!Pr@s!tyo@99', 'budiprasetyo@example.com', '08125556677', 'Jalan Indah, Palangkaraya, Indonesia'),
('M0024', 'Anita_Purba', 'An!t@Purb@88', 'anitapurba@example.com', '08124447788', 'Jalan Bakti, Batam, Indonesia'),
('M0025', 'Rudi_Hermawan', 'Rud!H3rm@w@n', 'rudihermawan@example.com', '08123338899', 'Jalan Mulia, Kendari, Indonesia');

INSERT INTO KATEGORI (KATEGORI_ID,NAMA_KATEGORI) VALUES
(1,'Laki laki'),
(2,'Perempuan'),
(3,'Anak anak');

INSERT INTO PRODUK VALUES
('P0001', 1, 'Adidas Ultraboost 22', 'Upper Material: Primeknit Sole Material: Rubber', 'assets/adidas-ultraboost-22.webp', 2300000),
('P0002', 2, 'Nike React Infinity Run', 'Upper Material: Flyknit Sole Material: Rubber', 'assets/Nike-React-Infinity-Run.webp', 2800000),
('P0003', 3, 'Saucony Jazz Original', 'Upper Material: Suede/Nylon Sole Material: Rubber', 'assets/Saucony-Jazz-Original.webp', 1600000),
('P0004', 1, 'Puma RS-Fast', 'Upper Material: Leather/Synthetic Sole Material: Rubber', 'assets/Puma-RS-Fast.webp', 2000000),
('P0005', 2, 'Converse Pro Leather', 'Upper Material: Leather Sole Material: Rubber', 'assets/Converse-Pro-Leather.webp', 1700000),
('P0006', 3, 'Asics Gel-Nimbus 24', 'Upper Material: Mesh/Synthetic Sole Material: Rubber', 'assets/Asics-Gel-Nimbus-24.webp', 2400000),
('P0007', 1, 'New Balance 990v5', 'Upper Material: Leather/Mesh Sole Material: Rubber', 'assets/New-Balance-990v5.webp', 2200000),
('P0008', 2, 'Vans Slip-On', 'Upper Material: Canvas Sole Material: Rubber', 'assets/Vans-Slip-On.webp', 1300000),
('P0009', 3, 'Adidas Originals Superstar', 'Upper Material: Leather Sole Material: Rubber', 'assets/Adidas-Originals-Superstar.webp', 1900000),
('P0010', 1, 'Under Armour HOVR Infinite 3', 'Upper Material: Mesh Sole Material: Rubber', 'assets/Under-Armour-HOVR-Infinite-3.webp', 2600000),
('P0011', 2, 'Reebok Nano X1', 'Upper Material: Flexweave Sole Material: Rubber', 'assets/Reebok-Nano-X1.webp', 2500000),
('P0012', 3, 'Nike Air Max 97', 'Upper Material: Mesh/Synthetic Leather Sole Material: Rubber', 'assets/Nike-Air-Max-97.webp', 3000000),
('P0013', 1, 'Skechers Go Walk 5', 'Upper Material: Mesh/Synthetic Sole Material: Rubber', 'assets/Skechers-Go-Walk-5.webp', 1400000),
('P0014', 2, 'Puma Future Rider', 'Upper Material: Textile/Synthetic Sole Material: Rubber', 'assets/Puma-Future-Rider.webp', 1600000),
('P0015', 3, 'ASICS Gel-Quantum 90', 'Upper Material: Mesh/Synthetic Sole Material: Rubber', 'assets/ASICS-Gel-Quantum-90.webp', 1800000),
('P0016', 1, 'Adidas Originals ZX 2K Flux', 'Upper Material: Textile/Synthetic Sole Material: Rubber', 'assets/Adidas-Originals-ZX-2K-Flux.webp', 1500000),
('P0017', 2, 'Nike Zoom Freak 2', 'Upper Material: Mesh/Synthetic Sole Material: Rubber', 'assets/Nike-Zoom-Freak-2.webp', 2700000),
('P0018', 3, 'New Balance Fresh Foam 1080v11', 'Upper Material: Mesh Sole Material: Rubber', 'assets/New-Balance-Fresh-Foam-1080v11.webp', 2300000),
('P0019', 1, 'Under Armour HOVR Sonic 4', 'Upper Material: Mesh Sole Material: Rubber', 'assets/Under-Armour-HOVR-Sonic-4.webp', 2200000),
('P0020', 2, 'Vans Authentic', 'Upper Material: Canvas Sole Material: Rubber', 'assets/Vans-Authentic.webp', 1200000),
('P0021', 3, 'Nike Kyrie 7', 'Upper Material: Mesh/Synthetic Sole Material: Rubber', 'assets/Nike-Kyrie-7.webp', 2900000),
('P0022', 1, 'Puma Clyde Hardwood', 'Upper Material: Leather Sole Material: Rubber', 'assets/Puma-Clyde-Hardwood.webp', 1900000),
('P0023', 2, 'Converse Jack Purcell', 'Upper Material: Canvas Sole Material: Rubber', 'assets/Converse-Jack-Purcell.webp', 1100000),
('P0024', 3, 'Adidas Superstar Foundation', 'Upper Material: Leather Sole Material: Rubber', 'assets/Adidas-Superstar-Foundation.webp', 1700000),
('P0025', 1, 'Saucony Guide 14', 'Upper Material: Mesh/Synthetic Sole Material: Rubber', 'assets/Saucony-Guide-14.webp', 2000000);


INSERT INTO DETAIL_PRODUK (PRODUK_ID, UKURAN, JUMLAH) VALUES
('P0001', 40, 3),
('P0001', 41, 2),
('P0001', 42, 1),

('P0002', 40, 3),
('P0002', 42, 3),
('P0002', 43, 3),

('P0003', 42, 3),
('P0003', 43, 3),
('P0003', 44, 3),

('P0004', 26, 3),
('P0004', 27, 3),
('P0004', 28, 3),

('P0005', 40, 3),
('P0005', 41, 2),
('P0005', 42, 1),

('P0006', 40, 3),
('P0006', 42, 3),
('P0006', 43, 3),

('P0007', 26, 3),
('P0007', 27, 4),
('P0007', 28, 3),

('P0008', 42, 5),
('P0008', 43, 4),
('P0008', 44, 3),

('P0009', 41, 3),
('P0009', 42, 4),
('P0009', 43, 3),

('P0010', 25, 5), 
('P0010', 26, 5), 
('P0010', 27, 5),
 
('P0011', 42, 7), 
('P0011', 43, 7),
('P0011', 44, 7),

('P0012', 40, 3),
('P0012', 41, 5),
('P0012', 42, 4),

('P0013', 23, 2),
('P0013', 24, 5),
('P0013', 25, 3),

('P0014', 40, 3), 
('P0014', 41, 3),
('P0014', 42, 3),

('P0015', 42, 7), 
('P0015', 43, 7),
('P0015', 44, 8),

('P0016', 22, 8),
('P0016', 21, 8),
('P0016', 23, 8),

('P0017', 43, 1), 
('P0017', 44, 1),
('P0017', 45, 1),

('P0018', 42, 5),
('P0018', 42, 5),
('P0018', 42, 5),
 
('P0019', 21, 6),
('P0019', 22, 6),
('P0019', 23, 6), 

('P0020', 40, 3),
('P0020', 41, 3),
('P0020', 42, 3),

('P0021', 40, 5), 
('P0021', 41, 4),
('P0021', 42, 3),

('P0022', 21, 6), 
('P0022', 22, 2),
('P0022', 23, 4),

('P0023', 42, 3), 
('P0023', 43, 3),
('P0023', 44, 3),

('P0024', 41, 5), 
('P0024', 42, 5),
('P0024', 43, 5),

('P0025', 23, 4),
('P0025', 24, 5),
('P0025', 25, 5);



INSERT INTO CART (ACCOUNT_ID, NAMA_CART) 
SELECT ACCOUNT_ID, CONCAT('cart_', USERNAME) AS NAMA_CART FROM ACCOUNT;

INSERT INTO DETAIL_CART VALUES
-- Transaksi 1
(1,'P0001',40,1),
(1,'P0002',40,1),
(1,'P0003',42,1),

-- Transaksi 2
(2,'P0004',26,1),
(2,'P0005',41,1),
(2,'P0006',42,1),

-- Transaksi 3
(3,'P0007',42,1),
(3,'P0008',43,1),
(3,'P0009',42,1),

-- Transaksi 4
(4,'P0010',25,1),
(4,'P0011',42,1),
(4,'P0012',42,1),

-- Transaksi 5
(5,'P0013',23,1),
(5,'P0014',40,1),
(5,'P0015',42,1),

-- Transaksi 6
(6,'P0016',22,1),
(6,'P0017',43,1),
(6,'P0018',42,1),

-- Transaksi 7
(7,'P0019',21,1),
(7,'P0020',39,1),
(7,'P0021',40,1),

-- Transaksi 8
(8,'P0022',21,1),
(8,'P0023',42,1),
(8,'P0024',41,1),

-- Transaksi 9
(9,'P0025',23,1);

INSERT INTO WISHLIST (ACCOUNT_ID, NAMA_WISHLIST  ) 
SELECT ACCOUNT_ID, CONCAT('wishlist_', USERNAME) AS NAMA_CART FROM ACCOUNT;

INSERT INTO DETAIL_WISHLIST VALUES
(1,'P0001'),
(2,'P0002'),
(3,'P0003'),
(4, 'P0004'),
(5, 'P0005'),
(6, 'P0006'),
(7, 'P0007'),
(8, 'P0008'),
(9, 'P0009'),
(10, 'P0010'),
(11, 'P0011'),
(12, 'P0012'),
(13, 'P0013'),
(14, 'P0014'),
(15, 'P0015'),
(16, 'P0016'),
(17, 'P0017'),
(18, 'P0018'),
(19, 'P0019'),
(20, 'P0020'),
(21, 'P0021'),
(22, 'P0022'),
(23, 'P0023'),
(24, 'P0024'),
(25, 'P0025');

INSERT INTO `ORDER_TABLE` (`ORDER_ID`, `ACCOUNT_ID`, `TOTAL_HARGA`) VALUES 
('L202405100001', 'M0001', 2300000),
('L202405100002', 'M0002', 2800000),
('L202405100003', 'M0003', 1600000),
('L202405100004', 'M0004', 2000000),
('L202405100005', 'M0005', 1700000),
('L202405100006', 'M0006', 2400000),
('L202405100007', 'M0007', 1700000),
('L202405100008', 'M0008', 1300000),
('L202405100009', 'M0009', 1900000),
('L202405100010', 'M0010', 1500000),
('L202405100011', 'M0011', 2500000),
('L202405100012', 'M0012', 3000000),
('L202405100013', 'M0013', 1400000),
('L202405100014', 'M0014', 1600000),
('L202405100015', 'M0015', 1800000),
('L202405100016', 'M0016', 1500000),
('L202405100017', 'M0007', 2600000),
('L202405100018', 'M0007', 2200000),
('L202405100019', 'M0019', 2200000),
('L202405100020', 'M0020', 1200000),
('L202405100021', 'M0007', 1800000),
('L202405100022', 'M0022', 1900000),
('L202405100023', 'M0023', 1100000),
('L202405100024', 'M0024', 1700000),
('L202405100025', 'M0010', 2000000);

INSERT INTO `DETAIL_ORDER` (`ORDER_ID`, `PRODUK_ID`, `UKURAN`, `JUMLAH`) VALUES 
('L202405100001', 'P0001', '40', 1),
('L202405100002', 'P0002', '40', 1),
('L202405100003', 'P0003', '42', 1),
('L202405100004', 'P0004', '26', 1),
('L202405100005', 'P0005', '40', 1),
('L202405100006', 'P0006', '42', 1),
('L202405100007', 'P0001', '42', 1),
('L202405100008', 'P0008', '42', 1),
('L202405100009', 'P0009', '41', 1),
('L202405100010', 'P0002', '40', 1),
('L202405100011', 'P0011', '42', 1),
('L202405100012', 'P0012', '40', 1),
('L202405100013', 'P0013', '25', 1),
('L202405100014', 'P0014', '40', 1),
('L202405100015', 'P0015', '42', 1),
('L202405100016', 'P0016', '22', 1),
('L202405100017', 'P0008', '44', 2),
('L202405100018', 'P0015', '42', 1),
('L202405100019', 'P0019', '21', 1),
('L202405100020', 'P0020', '42', 1),
('L202405100021', 'P0006', '43', 1),
('L202405100022', 'P0022', '21', 1),
('L202405100023', 'P0023', '42', 1),
('L202405100024', 'P0024', '41', 1),
('L202405100025', 'P0025', '23', 1);