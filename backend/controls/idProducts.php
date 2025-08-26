<<<<<<< HEAD
<?php
    include 'db.php';


    // ดึงข้อมูลผู็ใช้งานตาม id
    $id = $_GET['id'];
    $stmt = $pdo->prepare("SELECT * FROM products WHERE id = ?");
    $stmt->execute([$id]);
    $user = $stmt->fetch(PDO::FETCH_ASSOC);
=======
<?php
    include 'db.php';


    // ดึงข้อมูลผู็ใช้งานตาม id
    $id = $_GET['id'];
    $stmt = $pdo->prepare("SELECT * FROM products WHERE id = ?");
    $stmt->execute([$id]);
    $user = $stmt->fetch(PDO::FETCH_ASSOC);
>>>>>>> aa5f3611420028072c34951eb992ad1a2a4378eb
?>