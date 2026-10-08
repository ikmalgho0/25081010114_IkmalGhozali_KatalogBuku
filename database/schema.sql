CREATE DATABASE IF NOT EXISTS db_katalog_buku;
USE db_katalog_buku;

CREATE TABLE kategori (
    id_kategori INT PRIMARY KEY AUTO_INCREMENT,
    nama_kategori VARCHAR(100) NOT NULL,
    deskripsi TEXT
);

CREATE TABLE penulis (
    id_penulis INT PRIMARY KEY AUTO_INCREMENT,
    nama_penulis VARCHAR(100) NOT NULL,
    email VARCHAR(100) NOT NULL
);

CREATE TABLE buku (
    id_buku INT PRIMARY KEY AUTO_INCREMENT,
    judul VARCHAR(150) NOT NULL,
    harga INT NOT NULL,
    stok INT NOT NULL,
    id_kategori INT NOT NULL,
    id_penulis INT NOT NULL,
    FOREIGN KEY (id_kategori) REFERENCES kategori(id_kategori) ON DELETE CASCADE,
    FOREIGN KEY (id_penulis) REFERENCES penulis(id_penulis) ON DELETE CASCADE
);

INSERT INTO kategori (nama_kategori, deskripsi) VALUES
('Sains & Teknologi', 'Buku seputar ilmu pengetahuan dan teknologi modern'),
('Pemrograman', 'Buku panduan koding dan rekayasa perangkat lunak'),
('Fiksi', 'Novel dan karya sastra rekaan'),
('Bisnis & Keuangan', 'Buku manajemen, investasi, dan kewirausahaan'),
('Sejarah', 'Buku rekam jejak peristiwa peradaban masa lalu');

INSERT INTO penulis (nama_penulis, email) VALUES
('Eko Prasetyo', 'eko.prasetyo@email.com'),
('Rina Lestari', 'rina.lestari@email.com'),
('Budi Santoso', 'budi.santoso@email.com'),
('Siti Rahma', 'siti.rahma@email.com'),
('Andi Wijaya', 'andi.wijaya@email.com');

INSERT INTO buku (judul, harga, stok, id_kategori, id_penulis) VALUES
('Pemrograman PHP & MySQL Modern', 95000, 15, 2, 1),
('Dasar-Dasar Cyber Security', 120000, 10, 1, 3),
('Strategi Bisnis Digital', 85000, 20, 4, 2),
('Jejak Peradaban Nusantara', 110000, 8, 5, 5),
('Misteri Di Balik Awan', 75000, 12, 3, 4);