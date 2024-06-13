DROP TABLE IF EXISTS ACCOUNT;
DROP TABLE IF EXISTS KATEGORI;
DROP TABLE IF EXISTS ORDER_TABLE;
DROP TABLE IF EXISTS PRODUK;
DROP TABLE IF EXISTS DETAIL_PRODUK;
DROP TABLE IF EXISTS DETAIL_ORDER;

CREATE TABLE ACCOUNT (
   ACCOUNT_ID           varchar(50),
   USERNAME             VARCHAR(50) NOT NULL UNIQUE,
   PASSWORD             TEXT NOT NULL,
   EMAIL                VARCHAR(100) NOT NULL UNIQUE,
   PHONE_NUMBER         VARCHAR(20),
   ADDRESS              VARCHAR(100),
   ROLES				VARCHAR(15) NOT NULL DEFAULT 'User',
   origin				varchar(10),
   PRIMARY KEY (ACCOUNT_ID)
);

CREATE TABLE KATEGORI (
   KATEGORI_ID         int unsigned not null auto_increment,
   NAMA_KATEGORI        VARCHAR(100),
   PRIMARY KEY (KATEGORI_ID)
);

CREATE TABLE PRODUK (
   PRODUK_ID            VARCHAR(15) NOT NULL,
   KATEGORI_ID          INT unsigned not NULL,
   NAMA_PRODUK          VARCHAR(100),
   DESKRIPSI            TEXT,
   IMAGE                VARCHAR(200),
   HARGA                BIGINT,
   PRIMARY KEY (PRODUK_ID),
   foreign key(KATEGORI_ID) references KATEGORI(KATEGORI_ID)
);

CREATE TABLE DETAIL_PRODUK (
   PRODUK_ID            VARCHAR(15) NOT NULL,
   UKURAN               INT,
   JUMLAH               INT,
   foreign key (PRODUK_ID) references PRODUK(PRODUK_ID)
);

CREATE TABLE ORDER_TABLE (
   ORDER_ID             VARCHAR(15) NOT NULL,
   ACCOUNT_ID          varchar(50),
   ORDER_TIME timestamp NOT NULL default current_timestamp,
   TOTAL_HARGA          BIGINT,
   origin				varchar(10),
   is_fact				boolean default 0,
   foreign key (ACCOUNT_ID) references ACCOUNT(ACCOUNT_ID),
   PRIMARY KEY (ORDER_ID)
);

CREATE TABLE DETAIL_ORDER (
   ORDER_ID             VARCHAR(15) NOT NULL,
   PRODUK_ID            VARCHAR(15) NOT NULL,
   UKURAN               INT,
   JUMLAH               INT,
   origin				varchar(10),
   is_fact				boolean default 0,
   foreign key (ORDER_ID) references ORDER_TABLE(ORDER_ID),
   foreign key (PRODUK_ID) references PRODUK(PRODUK_ID)
);

CREATE TABLE IF NOT EXISTS SalesFact
(
	Sales_id int not null auto_increment PRIMARY KEY,
    ORDER_ID varchar(15) not null,
    order_time timestamp not null default current_timestamp,
    orderorigin varchar(50) not null,
    ACCOUNT_ID  varchar(50) not null,
    PRODUK_ID varchar(15) not null,
    ukuran int not null,
    jumlah int not null,
    harga int not null,
   FOREIGN KEY (Order_ID) REFERENCES ORDER_TABLE(ORDER_ID),
   FOREIGN KEY (ACCOUNT_ID) REFERENCES ACCOUNT(ACCOUNT_ID),
   FOREIGN KEY (PRODUK_ID) REFERENCES PRODUK(PRODUK_ID)
);


INSERT INTO KATEGORI (KATEGORI_ID,NAMA_KATEGORI) VALUES
(1,'Laki laki'),
(2,'Perempuan'),
(3,'Anak anak');

INSERT INTO PRODUK VALUES
('P0001','1','Adidas Handball Spezial Shoes','Upper Material: Leather/Suede Inner Material: Textile Sole Material: Rubber','assets/adidas-1246-1324044-1.webp','1700000'),
('P0002', 1, 'Nike Air Force 1', 'Upper Material: Leather/Synthetic Leather Sole Material: Rubber', 'assets/01-NIKE-FFSSBNIK5-NIKDZ2786400.jpg', 1500000),
('P0003', 2, 'Adidas Ultra Boost 2.0 Triple White', 'Upper Material: Primeknit Sole Material: Rubber', 'assets/adidas-ultra-boost-2.0-triple-white.webp', 2000000),
('P0004', 3, 'K-D Kids Rainbow Tab Shoe - Multi', 'Keep their sneaker rotation looking fresh with footwear like the K-D Rainbow Tab Sneakers. These funky shoes are great for mixing into a weekend outfit and feature a single tab for fastening with leather look panelling, and are made complete with a star embroidery to the front, stitched detailing and a textured sole for added grip.', 'assets/K-D-Kids-Rainbow-Tab-Shoe-Multi.webp', 500000),
('P0005', 1, 'Converse Chuck Taylor All Star', 'Upper Material: Canvas Sole Material: Rubber', 'assets/071A69AD4DE0A79949B564214BD96119.webp', 1000000),
('P0006', 2, 'Nike Air Max 90', 'Upper Material: Mesh/Synthetic Leather Sole Material: Rubber', 'assets/01-NIKE-F34RUNIK5-NIKDH8010100-White.webp', 1800000),
('P0007', 3, 'KIDS NIKE LITTLE KID FLEX RUNNER 2 SLIP-ON RUNNING SHOES', 'Stretch fabric upper with synthetic overlays and support sides Easy slip-on entry with elastic band and pull tabs Cushioned insole with fabric lining Sculpted foam midsole and durable outsole', 'assets/Nike-little-kid-runner.webp', 2500000),
('P0008', 1, 'Puma Suede Classic', 'Upper Material: Suede Sole Material: Rubber', 'assets/Puma-Suede-Classic.webp', 1300000),
('P0009', 2, 'Vans Old Skool', 'Upper Material: Canvas/Suede Sole Material: Rubber', 'assets/Vans-Old-Skool.webp', 1200000),
('P0010', 3, 'Adidas Originals X Disney Mickey Superstar 360 Shoes Kids', 'Designed specifically for lifestyle, these slip-on sneakers for kids exude urban playful style with Minnie Mouse graphic details. Featuring a combination of violet, white, and pink colors, they are crafted with mesh and synthetic upper, textile insole, rubber outsole, and a round toe.', 'assets/adidas-mickey-1.webp', 300000),
('P0011', 1, 'New Balance 574', 'Upper Material: Suede/Mesh Sole Material: Rubber', 'assets/New-Balance-574.webp', 1600000),
('P0012', 2, 'Adidas Stan Smith', 'Upper Material: Leather Sole Material: Rubber', 'assets/Adidas-Stan-Smith.webp', 1700000),
('P0013', 3, 'Family Smiles LED Light Up Wings Sneakers Kids High', 'Light up the night with Family Smiles LED Shoes! With the push of a button, you can alternate between 7 vibrant colors and up to 11 different lighting patterns guaranteed to let the crowd know you’re coming! Our kids shoes are made of high-quality breathable materials with durable and wear-resistant rubber soles for maximum comfort.', 'assets/Family-Smiles-LED-Light-Up-Wings-Sneakers-Kids-High-Top.webp', 400000),
('P0014', 1, 'Reebok Classic Leather', 'Upper Material: Leather Sole Material: Rubber', 'assets/Reebok-Classic-Leather.webp', 1400000),
('P0015', 2, 'Nike Air Jordan 1', 'Upper Material: Leather Sole Material: Rubber', 'assets/Nike-Air-Jordan-1.webp', 2200000),
('P0016', 3, 'Adidas originals x hello kitty and friends superstar 360 shoes kids', 'Designed specifically for lifestyle, these slip-on sneakers for kids boast an urban playful style with Hello Kitty graphic details. Featuring a combination of pink and white colors, they are crafted with textile and synthetic upper, textile insole, rubber outsole, and a round toe.', 'assets/adidas-hello-kitty.webp', 1350000),
('P0017', 1, 'Under Armour HOVR Phantom 2', 'Upper Material: Mesh Sole Material: Rubber', 'assets/Under-Armour-HOVR-Phantom-2.webp', 1900000),
('P0018', 2, 'Converse Chuck 70', 'Upper Material: Canvas Sole Material: Rubber', 'assets/Converse-Chuck-70.webp', 1100000),
('P0019', 3, 'Kushyshoo Girls Nude Cat Flats Soft Mary Jane', 'The upper of these childrens ballet flats from Kushyshoo has an elastic band that offers a stay-put fit,so she can run,jump,and play with confidence.', 'assets/shoe1.webp', 200000),
('P0020', 1, 'Skechers D`Lites', 'Upper Material: Leather/Synthetic Sole Material: Rubber', 'assets/Skechers-DLites.webp', 1200000),
('P0021', 2, 'Puma Cali Sport', 'Upper Material: Leather/Synthetic Sole Material: Rubber', 'assets/Puma-Cali-Sport.webp', 1700000),
('P0022', 3, 'Nike Big Kid Court Borough Low Recraft Gs Sneakers', 'Comfort and style come together in the Nike Court Borough Low 2. The structured, supportive fit has a retro basketball design so you can look like an all-star off the court.', 'assets/NIKE-BIG-KID-COURT-BOROUGH-LOW-RECRAFT-GS-SNEAKERS.webp', 250000),
('P0023', 1, 'ASICS Gel-Kayano 27', 'Upper Material: Mesh/Synthetic Sole Material: Rubber', 'assets/ASICS-Gel-Kayano-27.webp', 2100000),
('P0024', 2, 'Reebok Club C 85', 'Upper Material: Leather Sole Material: Rubber', 'assets/Reebok-Club-C-85.webp', 1500000),
('P0025', 3, 'Under Armour Kids Grade School SlipSpeed Nubuck Training Shoes', 'BREATHABLE UPPER: Supportive nubuck material with engineered venting BOA FIT SYSTEM: A personalized fit, one click at a time, with a 12-point lockdown system CONVERTIBLE HEEL: Go from train mode to recover mode', 'assets/Under-Armour-Kids-Grade-School.webp', 100000);

INSERT INTO DETAIL_PRODUK (PRODUK_ID, UKURAN, JUMLAH) VALUES
-- Adidas handball spezial shoes (P0001)
('P0001', 40, 3),
('P0001', 41, 2),
('P0001', 42, 1),

-- Nike Air Force 1 (P0002)
('P0002', 40, 3),
('P0002', 42, 3),
('P0002', 43, 3),

-- Adidas Ultra Boost 2.0 Triple White (P0003)
('P0003', 42, 3),
('P0003', 43, 3),
('P0003', 44, 3),

-- K-D Kids Rainbow Tab Shoe - Multi (P0004)
('P0004', 26, 3),
('P0004', 27, 3),
('P0004', 28, 3),

-- Converse Chuck Taylor All Star (P0005)
('P0005', 40, 3),
('P0005', 41, 2),
('P0005', 42, 1),

-- Nike Air Max 90 (P0006)
('P0006', 40, 3),
('P0006', 42, 3),
('P0006', 43, 3),

-- KIDS NIKE LITTLE KID FLEX RUNNER 2 SLIP-ON RUNNING SHOES (P0007)
('P0007', 26, 3),
('P0007', 27, 4),
('P0007', 28, 3),

-- Puma Suede Classic (P0008)
('P0008', 42, 5),
('P0008', 43, 4),
('P0008', 44, 3),

-- Vans Old Skool (P0009)
('P0009', 41, 3),
('P0009', 42, 4),
('P0009', 43, 3),

-- Adidas Originals X Disney Mickey Superstar 360 Shoes Kids (P0010)
('P0010', 25, 5),
('P0010', 26, 5),
('P0010', 27, 5),

-- New Balance 574 (P0011)
('P0011', 42, 7),
('P0011', 43, 7),
('P0011', 44, 7),
-- Adidas Stan Smith (P0012)
('P0012', 40, 3),
('P0012', 41, 5),
('P0012', 42, 4),
-- Family Smiles LED Light Up Wings Sneakers Kids High (P0013)
('P0013', 23, 2),
('P0013', 24, 5),
('P0013', 25, 3),
-- Reebok Classic Leather (P0014)
('P0014', 40, 3),
('P0014', 41, 3),
('P0014', 42, 3),
-- Nike Air Jordan 1 (P0015)
('P0015', 42, 7),
('P0015', 43, 7),
('P0015', 44, 8),
-- Adidas originals x hello kitty and friends superstar 360 shoes kids (P0016)
('P0016', 22, 8),
('P0016', 21, 8),
('P0016', 23, 8),
-- Under Armour HOVR Phantom 2 (P0017)
('P0017', 43, 1),
('P0017', 44, 1),
('P0017', 45, 1),
-- Converse Chuck 70 (P0018)
('P0018', 42, 5),
('P0018', 42, 5),
('P0018', 42, 5),

-- Kushyshoo Girls Nude Cat Flats Soft Mary Jane (P0019)
('P0019', 21, 6),
('P0019', 22, 6),
('P0019', 23, 6),

-- Skechers D`Lites (P0020)
('P0020', 39, 3),
('P0020', 40, 3),
('P0020', 41, 3),
('P0020', 42, 3),
-- Puma Cali Sport (P0021)
('P0021', 40, 5),
('P0021', 41, 4),
('P0021', 42, 3),
-- Nike Big Kid Court Borough Low Recraft Gs Sneakers (P0022)
('P0022', 21, 6),
('P0022', 22, 2),
('P0022', 23, 4),
-- ASICS Gel-Kayano 27 (P0023)
('P0023', 42, 3),
('P0023', 43, 3),
('P0023', 44, 3),
-- Reebok Club C 85 (P0024)
('P0024', 41, 5), -- Ukuran tidak spesifik
('P0024', 42, 5),
('P0024', 43, 5),
-- Under Armour Kids Grade School SlipSpeed Nubuck Training Shoes (P0025)
('P0025',23, 4),
('P0025',24, 5),
('P0025',25, 5);

drop view if exists vMostActiveUser;
create view vMostActiveUser as
select a.USERNAME as USERNAME, count(sf.ACCOUNT_ID) as PurchaseFreq, sf.orderorigin
from SalesFact sf
left join ACCOUNT a on a.ACCOUNT_ID = sf.ACCOUNT_ID
group by sf.ACCOUNT_ID
ORDER BY PurchaseFreq DESC;

drop procedure if exists pMAUOrigin;
delimiter //
create procedure pMAUOrigin (in selected varchar(50))
begin
	if selected = 'wilbert' then
		select USERNAME, PurchaseFreq
        from vMostActiveUser
        where orderorigin = 'wilbert';
	elseif selected = 'mario' then
		select USERNAME, PurchaseFreq
        from vMostActiveUser
        where orderorigin = 'mario';
	elseif selected = 'vicky' then
		select USERNAME, PurchaseFreq
        from vMostActiveUser
        where orderorigin = 'vicky';
	else
		select USERNAME, PurchaseFreq
        from vMostActiveUser;
	end if;
end //
delimiter ;

drop view if exists vTopSelling;
create view vTopSelling as
select p.Nama_produk, count(sf.PRODUK_ID) as ProductSales, k.NAMA_KATEGORI
from SalesFact sf
join PRODUK p on sf.produk_id = p.produk_id
join KATEGORI k on k.kategori_id = p.kategori_id
group by sf.PRODUK_ID
limit 10;

CREATE VIEW vTopOrigin AS
SELECT 
  orderorigin,
  SUM(harga * jumlah) AS TotalSales
FROM SalesFact
GROUP BY orderorigin
ORDER BY TotalSales DESC;

drop view if exists vSalesByCategory;
CREATE VIEW vSalesByCategory AS
SELECT  k.NAMA_KATEGORI AS Category, SUM(do.JUMLAH * sf.harga) AS TotalSales
FROM KATEGORI k
INNER JOIN PRODUK p ON k.KATEGORI_ID = p.KATEGORI_ID
INNER JOIN DETAIL_ORDER do ON p.PRODUK_ID = do.PRODUK_ID
INNER JOIN SalesFact sf ON do.ORDER_ID = sf.ORDER_ID
GROUP BY k.NAMA_KATEGORI
ORDER BY TotalSales DESC;

drop view if exists vMonthlySales;
create view vMonthlySales as
select YEAR(order_time) AS Year, MONTHNAME(order_time) AS Month, SUM(harga * jumlah) AS TotalSales
FROM SalesFact
GROUP BY MONTH(order_time)
ORDER BY Year, Month;