<?php
session_start();
include 'db.php';

if ($_SERVER['REQUEST_METHOD'] === 'POST') {
    $product_name = trim($_POST['product_name']);
    $description = trim($_POST['description']);
    $price = $_POST['price'];
    $product_image = null;

    if (isset($_FILES['product_image']) && $_FILES['product_image']['error'] == 0) {
        $target_dir = "../../assets/imgs/";
        $image_name = basename($_FILES["product_image"]["name"]);
        $target_file = $target_dir . $image_name;

        $imageFileType = strtolower(pathinfo($target_file, PATHINFO_EXTENSION));
        if (in_array($imageFileType, ['jpg', 'jpeg', 'png', 'gif'])) {
            if (move_uploaded_file($_FILES["product_image"]["tmp_name"], $target_file)) {
                $product_image = $image_name;
            } else {
                $_SESSION['error'] = "Sorry, there was an error uploading your file.";
                header("Location: ../addproducts.php");
                exit;
            }
        } else {
            $_SESSION['error'] = "Invalid file type. Only JPG, JPEG, PNG & GIF files are allowed.";
            header("Location: ../addproducts.php");
            exit;
        }
    } else {
        $_SESSION['error'] = "Please upload an image file.";
        header("Location: ../addproducts.php");
        exit;
    }

    $stmt = $pdo->prepare("INSERT INTO products (product_name, description, price, product_image) VALUES (?, ?, ?, ?)");
    $result = $stmt->execute([$product_name, $description, $price, $product_image]);

    if ($result) {
        $_SESSION['success'] = "Product added successfully!";
        header("Location: ../products.php");
    } else {
        $_SESSION['error'] = "Failed to add product.";
        header("Location: ../addproducts.php");
    }
    exit;
}
?>