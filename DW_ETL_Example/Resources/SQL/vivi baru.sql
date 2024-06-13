/*==============================================================*/
/* DBMS name:      MySQL 5.0                                    */
/* Created on:     02/05/2024 15:22:54                          */
/*==============================================================*/
DROP DATABASE IF EXISTS sepatuku_vicky;
CREATE DATABASE sepatuku_vicky;
USE sepatuku_vicky;

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
/*==============================================================*/
/* Table: ACCOUNT                                               */
/*==============================================================*/

CREATE TABLE ACCOUNT (
   ACCOUNT_ID           Varchar(50),
   USERNAME             VARCHAR(50) NOT NULL UNIQUE,
   PASSWORD             TEXT NOT NULL,
   EMAIL                VARCHAR(100) NOT NULL UNIQUE,
   PHONE_NUMBER         VARCHAR(20),
   ADDRESS              VARCHAR(100),
   ROLES				VARCHAR(15) NOT NULL DEFAULT 'User',
   is_olap				BOOL DEFAULT 0,
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
   ACCOUNT_ID           Varchar(50),
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
   ACCOUNT_ID          	Varchar(50),
   ORDER_TIME timestamp NOT NULL default current_timestamp,
   TOTAL_HARGA          BIGINT,
   is_olap				bool default 0,
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
   is_olap				bool default 0,
   foreign key (ORDER_ID) references ORDER_TABLE(ORDER_ID),
   foreign key (PRODUK_ID) references PRODUK(PRODUK_ID)
);

/*==============================================================*/
/* Table: WISHLIST                                              */
/*==============================================================*/
CREATE TABLE WISHLIST (
   WISHLIST_ID          int unsigned not null auto_increment,
   ACCOUNT_ID           Varchar(50),
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
('V0001', 'robert', 'robert@gmail.com', 'robert@gmail.com', '08129384929', 'Pakuwon City'),
('V0002', 'rosa', 'rosa@gmail.com', 'rosa@gmail.com', '08129392844', 'Made'),
('V0003', 'ronny', 'ronny@gmail.com', 'ronny@gmail.com', '0891348823', 'Margorejo'),
('V0004', 'rebecca', 'rebecca@gmail.com', 'rebecca@gmail.com', '08129383849', 'Jl. Raya Darmo'),
('V0005', 'richard', 'richard@gmail.com', 'richard@gmail.com', '08129384930', 'Pakuwon Indah'),
('V0006', 'rachel', 'rachel@gmail.com', 'rachel@gmail.com', '08129384888', 'Tunjungan Plaza'),
('V0007', 'ryan', 'ryan@gmail.com', 'ryan@gmail.com', '08129384900', 'Ciputra World'),
('V0008', 'rita', 'rita@gmail.com', 'rita@gmail.com', '08129384777', 'Tunjungan Plaza 3'),
('V0009', 'ricky', 'ricky@gmail.com', 'ricky@gmail.com', '08129384666', 'Jl. Darmo Permai'),
('V0010', 'reza', 'reza@gmail.com', 'reza@gmail.com', '08129384555', 'Manyar Kertoarjo'),
('V0011', 'rahma', 'rahma@gmail.com', 'rahma@gmail.com', '08129384444', 'Jemursari'),
('V0012', 'rizky', 'rizky@gmail.com', 'rizky@gmail.com', '08129384333', 'Gunawangsa Manyar'),
('V0013', 'rafi', 'rafi@gmail.com', 'rafi@gmail.com', '08129384222', 'Pakuwon Indah'),
('V0014', 'rendra', 'rendra@gmail.com', 'rendra@gmail.com', '08129384111', 'Taman Surya'),
('V0015', 'rini', 'rini@gmail.com', 'rini@gmail.com', '08129384000', 'Mulyorejo'),
('V0016', 'rudi', 'rudi@gmail.com', 'rudi@gmail.com', '08129384999', 'Wonocolo'),
('V0017', 'rafhii', 'rafhii@gmail.com', 'rafhii@gmail.com', '08129384888', 'Gayungan'),
('V0018', 'rina', 'rina@gmail.com', 'rina@gmail.com', '08129384777', 'Pasar Turi'),
('V0019', 'rizal', 'rizal@gmail.com', 'rizal@gmail.com', '08129384666', 'Tanjung Perak'),
('V0020', 'rahmat', 'rahmat@gmail.com', 'rahmat@gmail.com', '08129384555', 'Kembangan'),
('V0021', 'ridho', 'ridho@gmail.com', 'ridho@gmail.com', '08129384444', 'Wonokromo'),
('V0022', 'rifky', 'rifky@gmail.com', 'rifky@gmail.com', '08129384333', 'Kenjeran'),
('V0023', 'romo', 'romo@gmail.com', 'romo@gmail.com', '08129384222', 'Sukolilo'),
('V0024', 'rahayu', 'rahayu@gmail.com', 'rahayu@gmail.com', '08129384111', 'Simokerto'),
('V0025', 'riko', 'riko@gmail.com', 'riko@gmail.com', '08129384000', 'Bulak');


INSERT INTO `ACCOUNT` (`ACCOUNT_ID`, `USERNAME`, `PASSWORD`, `EMAIL`, `PHONE_NUMBER`, `ADDRESS`, `ROLES`) VALUES
('V0026', 'vick', 'vicky@gmail.com', 'vicky@gmail.com', '08102031903', 'Cornell', 'Admin'); 

INSERT INTO `KATEGORI` (`NAMA_KATEGORI`) VALUES 
('Pria'),
('Wanita'),
('Anak-anak');


INSERT INTO `PRODUK` (`PRODUK_ID`, `KATEGORI_ID`, `NAMA_PRODUK`, `DESKRIPSI`, `IMAGE`, `HARGA`) VALUES 
('P0001', 1, 'Adidas Ultraboost 21', 'The Adidas UltraBoost 21 features responsive cushioning and a sleek design, perfect for both running and casual wear.', 'assets/01-Adidas-Ultraboost-21.webp', 2500000),
('P0002', 1, 'Adidas Superstar', 'A timeless classic, the Adidas Superstar features a leather upper and iconic shell toe, suitable for everyday wear.', 'assets/02-Adidas-Superstar.webp', 1200000),
('P0003', 1, 'Adidas NMD R1', 'The Adidas NMD R1 combines style and comfort with its breathable knit upper and Boost cushioning technology.', 'assets/03-Adidas-NMD-R1.webp', 1800000),
('P0004', 1, 'Adidas Stan Smith', 'Known for its clean and minimalist design, the Adidas Stan Smith is a versatile sneaker suitable for any occasion.', 'assets/04-Adidas-Stan-Smith.webp', 1300000),
('P0005', 2, 'Nike Air Force 1 Low', 'A streetwear staple, the Nike Air Force 1 Low features a classic design and durable construction, perfect for everyday wear.', 'assets/05-Nike-Air-Force-1-Low.webp', 1600000),
('P0006', 2, 'Nike Air Max 270', 'With its large Air Max unit and modern design, the Nike Air Max 270 offers all-day comfort and style.', 'assets/06-Nike-Air-Max-270.webp', 1900000),
('P0007', 2, 'Nike React Infinity Run Flyknit', 'Designed for running, the Nike React Infinity Run Flyknit provides a smooth ride and responsive cushioning to help reduce the risk of injury.', 'assets/07-Nike-React-Infinity-Run-Flyknit.webp', 2300000),
('P0008', 2, 'Nike Blazer Mid 77', 'Inspired by vintage basketball shoes, the Nike Blazer Mid 77 features a retro design and premium materials for a timeless look.', 'assets/08-Nike-Blazer-Mid-77.webp', 1400000),
('P0009', 1, 'Puma Suede Classic', 'The Puma Suede Classic is an iconic sneaker known for its suede upper and signature Formstrip detail, perfect for adding a retro vibe to any outfit.', 'assets/09-Puma-Suede-Classic.webp', 1000000),
('P0010', 1, 'Puma RS-X', 'The Puma RS-X combines retro style with modern technology, featuring chunky soles and bold colorways for a statement look.', 'assets/10-Puma-RS-X.webp', 1700000),
('P0011', 1, 'Puma Clyde Hardwood', 'Inspired by basketball legend Walt "Clyde" Frazier, the Puma Clyde Hardwood offers a sleek design and premium performance on and off the court.', 'assets/11-Puma-Clyde-Hardwood.webp', 1800000),
('P0012', 1, 'Puma Future Rider', 'With its retro-inspired design and comfortable construction, the Puma Future Rider is perfect for everyday wear and casual outings.', 'assets/12-Puma-Future-Rider.webp', 1300000),
('P0013', 2, 'Converse Chuck Taylor All Star Low', 'A classic sneaker that never goes out of style, the Converse Chuck Taylor All Star Low features a canvas upper and timeless silhouette.', 'assets/13-Converse-Chuck-Taylor-All-Star-Low.webp', 800000),
('P0014', 2, 'Converse Jack Purcell Signature', 'Known for its sleek design and signature "smile" toe cap, the Converse Jack Purcell Signature offers timeless style and comfort.', 'assets/14-Converse-Jack-Purcell-Signature.webp', 1100000),
('P0015', 2, 'Converse One Star', 'With its low-profile silhouette and iconic star logo, the Converse One Star is a versatile sneaker that adds a touch of retro flair to any outfit.', 'assets/15-Converse-One-Star.webp', 900000),
('P0016', 1, 'Adidas Yeezy Boost 350 V2', 'Designed in collaboration with Kanye West, the Adidas Yeezy Boost 350 V2 features a Primeknit upper and Boost cushioning for a comfortable and stylish fit.', 'assets/16-Adidas-Yeezy-Boost-350-V2.webp', 4000000),
('P0017', 1, 'Adidas Gazelle', 'A classic from the Adidas archives, the Adidas Gazelle features a suede upper and signature 3-Stripes for a timeless look.', 'assets/17-Adidas-Gazelle.webp', 1100000),
('P0018', 1, 'Nike Zoom Fly 3', 'Built for speed, the Nike Zoom Fly 3 features a lightweight design and responsive cushioning to help you reach your fastest pace.', 'assets/18-Nike-Zoom-Fly-3.webp', 2200000),
('P0019', 1, 'Nike Air Max 97', 'Inspired by high-speed bullet trains, the Nike Air Max 97 features a sleek design and full-length Air cushioning for all-day comfort and style.', 'assets/19-Nike-Air-Max-97.webp', 2400000),
('P0020', 2, 'Puma Cali', 'A modern update to the classic Puma California silhouette, the Puma Cali features a platform sole and clean, minimalist design.', 'assets/20-Puma-Cali.webp', 1500000),
('P0021', 3, 'Adidas Superstar Kids', 'The Adidas Superstar Kids features the iconic shell toe design in a smaller size, perfect for young sneaker enthusiasts. With a durable construction and classic style, it''s suitable for everyday wear.', 'assets/21-Adidas-Superstar-Kids.webp', 800000),
('P0022', 3, 'Nike Revolution 5 Kids', 'The Nike Revolution 5 Kids offers lightweight cushioning and a breathable upper, providing comfort and support for active kids. Its versatile design makes it suitable for running, playing, or casual wear.', 'assets/22-Nike-Revolution-5-Kids.webp', 600000),
('P0023', 3, 'Puma Smash v2 Kids', 'The Puma Smash v2 Kids is a timeless classic with a modern twist, featuring a sleek silhouette and durable construction. Its cushioned midsole and non-marking rubber outsole provide comfort and traction for all-day play.', 'assets/23-Puma-Smash-v2-Kids.webp', 500000),
('P0024', 3, 'Converse Chuck Taylor All Star Kids', 'Just like the adult version, the Converse Chuck Taylor All Star Kids features a canvas upper and iconic silhouette, perfect for adding a touch of classic style to any outfit. Its low-profile design and rubber toe cap ensure durability and comfort.', 'assets/24-Converse-Chuck-Taylor-All-Star-Kids.webp', 400000),
('P0025', 3, 'Adidas Duramo SL Kids', 'The Adidas Duramo SL Kids offers lightweight comfort and support for young athletes. With a breathable mesh upper and cushioned midsole, it''s ideal for running, playing sports, or simply staying active.', 'assets/25-Adidas-Duramo-SL-Kids.webp', 700000);

INSERT INTO `DETAIL_PRODUK` (`PRODUK_ID`, `UKURAN`, `JUMLAH`) VALUES 
('P0001', 41, 5),
('P0002', 42, 5),
('P0003', 43, 2),
('P0004', 39, 5),
('P0005', 39, 2),
('P0006', 38, 5),
('P0007', 37, 3),
('P0008', 38, 2),
('P0009', 40, 5),
('P0010', 41, 2),
('P0011', 43, 4),
('P0012', 43, 3),
('P0013', 37, 5),
('P0014', 37, 3),
('P0015', 36, 3),
('P0016', 43, 4),
('P0017', 40, 3),
('P0018', 39, 4),
('P0019', 41, 3),
('P0020', 36, 3),
('P0021', 28, 7),
('P0022', 27, 2),
('P0023', 25, 4),
('P0024', 26, 1),
('P0025', 28, 5);


INSERT INTO `CART` (`ACCOUNT_ID`, `NAMA_CART`) VALUES 
('V0001', 'cart_robert'),
('V0002', 'cart_rosa'),
('V0003', 'cart_ronny'),
('V0004', 'cart_rebecca'),
('V0005', 'cart_richard'),
('V0006', 'cart_rachel'),
('V0007', 'cart_ryan'),
('V0008', 'cart_rita'),
('V0009', 'cart_ricky'),
('V0010', 'cart_reza'),
('V0011', 'cart_rahma'),
('V0012', 'cart_rizky'),
('V0013', 'cart_rafi'),
('V0014', 'cart_rendra'),
('V0015', 'cart_rini'),
('V0016', 'cart_rudi'),
('V0017', 'cart_rafhii'),
('V0018', 'cart_rina'),
('V0019', 'cart_rizal'),
('V0020', 'cart_rahmat'),
('V0021', 'cart_ridho'),
('V0022', 'cart_rifky'),
('V0023', 'cart_romo'),
('V0024', 'cart_rahayu'),
('V0025', 'cart_riko');

INSERT INTO `DETAIL_CART` (`CART_ID`, `PRODUK_ID`, `UKURAN`, `JUMLAH`) VALUES 
(1, 'P0001', 41, 1),
(1, 'P0002', 42, 1),
(1, 'P0003', 43, 1),
(1, 'P0004', 39, 1),
(1, 'P0005', 39, 1),
(5, 'P0012', 43, 1),
(5, 'P0010', 41, 1),
(5, 'P0002', 42, 1),
(2, 'P0005', 39, 1),
(3, 'P0004', 39, 1),
(4, 'P0009', 40, 1),
(8, 'P0004', 39, 1),
(14, 'P0007', 37, 1),
(20, 'P0018', 39, 1),
(8, 'P0004', 39, 1),
(14, 'P0007', 37, 1),
(20, 'P0018', 39, 1),
(20, 'P0025', 28, 2),
(17, 'P0024', 26, 1),
(17, 'P0007', 37, 1),
(17, 'P0018', 39, 1),
(17, 'P0025', 28, 2),
(17, 'P0024', 26, 1),
(13, 'P0001', 41, 1),
(13, 'P0012', 43, 1);

INSERT INTO `WISHLIST` (`ACCOUNT_ID`, `NAMA_WISHLIST`) VALUES 
('V0001', 'wishlist_robert'),
('V0002', 'wishlist_rosa'),
('V0003', 'wishlist_ronny'),
('V0004', 'wishlist_rebecca'),
('V0005', 'wishlist_richard'),
('V0006', 'wishlist_rachel'),
('V0007', 'wishlist_ryan'),
('V0008', 'wishlist_rita'),
('V0009', 'wishlist_ricky'),
('V0010', 'wishlist_reza'),
('V0011', 'wishlist_rahma'),
('V0012', 'wishlist_rizky'),
('V0013', 'wishlist_rafi'),
('V0014', 'wishlist_rendra'),
('V0015', 'wishlist_rini'),
('V0016', 'wishlist_rudi'),
('V0017', 'wishlist_rafhii'),
('V0018', 'wishlist_rina'),
('V0019', 'wishlist_rizal'),
('V0020', 'wishlist_rahmat'),
('V0021', 'wishlist_ridho'),
('V0022', 'wishlist_rifky'),
('V0023', 'wishlist_romo'),
('V0024', 'wishlist_rahayu'),
('V0025', 'wishlist_riko');

INSERT INTO `DETAIL_WISHLIST` (`WISHLIST_ID`, `PRODUK_ID`) VALUES 
('1', 'P0001'),
('2', 'P0002'),
('3', 'P0003'),
('4', 'P0004'),
('5', 'P0005'),
('6', 'P0006'),
('7', 'P0007'),
('8', 'P0008'),
('9', 'P0009'),
('10', 'P0010'),
('11', 'P0011'),
('12', 'P0012'),
('13', 'P0013'),
('14', 'P0014'),
('15', 'P0015'),
('16', 'P0016'),
('17', 'P0017'),
('18', 'P0018'),
('19', 'P0019'),
('20', 'P0020'),
('21', 'P0021'),
('22', 'P0022'),
('23', 'P0023'),
('24', 'P0024'),
('25', 'P0025');
    
INSERT INTO `ORDER_TABLE` (`ORDER_ID`, `ACCOUNT_ID`, `TOTAL_HARGA`) VALUES 
('B202405090001', 'V0001', 2500000),
('B202405090002', 'V0002', 1200000),
('B202405090003', 'V0003', 3400000),
('B202405090004', 'V0004', 1700000),
('B202405090005', 'V0005', 1600000),
('B202405090006', 'V0003', 2000000),
('B202405090007', 'V0007', 2300000),
('B202405090008', 'V0008', 1400000),
('B202405090009', 'V0009', 1000000),
('B202405090010', 'V0010', 1700000),
('B202405090011', 'V0011', 1800000),
('B202405090012', 'V0012', 1300000),
('B202405090013', 'V0013', 800000),
('B202405090014', 'V0014', 1100000),
('B202405090015', 'V0015', 900000),
('B202405090016', 'V0016', 4000000),
('B202405090017', 'V0003', 4400000),
('B202405090018', 'V0018', 2200000),
('B202405090019', 'V0019', 2400000),
('B202405090020', 'V0020', 1500000),
('B202405090021', 'V0021', 800000),
('B202405090022', 'V0022', 600000),
('B202405090023', 'V0023', 500000),
('B202405090024', 'V0004', 500000),
('B202405090025', 'V0025', 700000);


INSERT INTO `DETAIL_ORDER` (`ORDER_ID`, `PRODUK_ID`, `UKURAN`, `JUMLAH`) VALUES 
('B202405090001', 'P0001', '41', 1),
('B202405090002', 'P0002', '42', 1),
('B202405090003', 'P0001', '41', 2),
('B202405090004', 'P0001', '41', 1),
('B202405090005', 'P0005', '39', 1),
('B202405090006', 'P0003', '43', 1),
('B202405090007', 'P0007', '37', 1),
('B202405090008', 'P0008', '38', 1),
('B202405090009', 'P0009', '40', 1),
('B202405090010', 'P0010', '41', 1),
('B202405090011', 'P0011', '43', 1),
('B202405090012', 'P0012', '43', 1),
('B202405090013', 'P0013', '37', 1),
('B202405090014', 'P0014', '37', 1),
('B202405090015', 'P0015', '36', 1),
('B202405090016', 'P0016', '43', 1),
('B202405090017', 'P0015', '36', 2),
('B202405090018', 'P0018', '39', 1),
('B202405090019', 'P0019', '41', 1),
('B202405090020', 'P0020', '36', 1),
('B202405090021', 'P0021', '28', 1),
('B202405090022', 'P0022', '27', 1),
('B202405090023', 'P0023', '25', 1),
('B202405090024', 'P0004', '28', 1),
('B202405090025', 'P0025', '28', 1);