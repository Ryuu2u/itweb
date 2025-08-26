<<<<<<< HEAD
<?php
// รวมการเชื่อมต่อฐานข้อมูล
include './controls/db.php';
session_start();

// ดึงข้อมูลสินค้าจากตาราง products
$sql = "SELECT `id`, `name`, `description`, `price`, `created_at`, `image` FROM `products`";
$stmt = $pdo->prepare($sql); // ใช้ PDO ในการเตรียมค าสั่ง SQL
$stmt->execute(); // รันคำสั่ง SQL
=======
<?php
// รวมการเชื่อมต่อฐานข้อมูล
include './controls/db.php';
session_start();

// ดึงข้อมูลสินค้าจากตาราง products
$sql = "SELECT `id`, `product_name`, `description`, `price`, `created_at`, `product_image` FROM `products`";
$stmt = $pdo->prepare($sql); // ใช้ PDO ในการเตรียมค าสั่ง SQL
$stmt->execute(); // รันคำสั่ง SQL
>>>>>>> aa5f3611420028072c34951eb992ad1a2a4378eb
