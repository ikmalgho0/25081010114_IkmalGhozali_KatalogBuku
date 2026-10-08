# Proyek Katalog Buku Perpustakaan

Aplikasi web sederhana untuk menampilkan katalog buku secara dinamis menggunakan PHP dan MySQL.

## Struktur Database & Relasi (ERD)

Database `db_katalog_buku` terdiri dari 3 tabel:
1. **`kategori`** (Entitas)
   - `id_kategori` (Primary Key, INT, Auto Increment)
   - `nama_kategori` (VARCHAR)
   - `deskripsi` (TEXT)

2. **`penulis`** (Entitas)
   - `id_penulis` (Primary Key, INT, Auto Increment)
   - `nama_penulis` (VARCHAR)
   - `email` (VARCHAR)

3. **`buku`** (Entitas Utama)
   - `id_buku` (Primary Key, INT, Auto Increment)
   - `judul` (VARCHAR)
   - `harga` (INT)
   - `stok` (INT)
   - `id_kategori` (Foreign Key -> kategori.id_kategori)
   - `id_penulis` (Foreign Key -> penulis.id_penulis)

### Kardinalitas:
- **Kategori ke Buku:** One-to-Many (1:N) - Satu kategori bisa mencakup banyak buku.
- **Penulis ke Buku:** One-to-Many (1:N) - Satu penulis bisa menulis banyak buku.

## Cara Menjalankan Proyek
1. Pastikan Laragon/XAMPP aktif (Apache & MySQL).
2. Import file `database/schema.sql` ke MySQL via DBeaver atau phpMyAdmin.
3. Simpan folder proyek pada direktori `C:\laragon\www\`.
4. Buka browser dan akses `http://localhost/25081010114_IkmalGhozali_KatalogBuku/`.
