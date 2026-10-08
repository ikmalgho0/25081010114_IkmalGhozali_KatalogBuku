<?php
require_once 'services/config.php';

$sql = "SELECT buku.id_buku, buku.judul, buku.harga, buku.stok, 
               kategori.nama_kategori, penulis.nama_penulis, penulis.email 
        FROM buku
        JOIN kategori ON buku.id_kategori = kategori.id_kategori
        JOIN penulis ON buku.id_penulis = penulis.id_penulis
        ORDER BY buku.id_buku ASC";

$result = $conn->query($sql);
?>
<!DOCTYPE html>
<html lang="id">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Katalog Buku Perpustakaan</title>
    <link rel="stylesheet" href="style.css">
</head>
<body>

    <header class="navbar">
        <h1>📚 PustakaDigital</h1>
        <span>Sistem Katalog Buku Terpadu</span>
    </header>

    <main class="container">
        <h2>Daftar Koleksi Buku</h2>

        <div class="grid-container">
            <?php while ($row = $result->fetch_assoc()): ?>
                <div class="card">
                    <span class="badge"><?php echo htmlspecialchars($row['nama_kategori']); ?></span>
                    <h3><?php echo htmlspecialchars($row['judul']); ?></h3>
                    <p><strong>Penulis:</strong> <?php echo htmlspecialchars($row['nama_penulis']); ?></p>
                    <p><strong>Email Penulis:</strong> <?php echo htmlspecialchars($row['email']); ?></p>
                    <p><strong>Stok Tersedia:</strong> <?php echo $row['stok']; ?> eksemplar</p>
                    <p class="price">Rp <?php echo number_format($row['harga'], 0, ',', '.'); ?></p>
                </div>
            <?php endwhile; ?>
        </div>
    </main>

    <?php $conn->close(); ?>
</body>
</html>