<?php

@include 'config.php';

session_start();

$user_id = $_SESSION['user_id'];

if(!isset($user_id)){
   header('location:login.php');
};

if(isset($_POST['order'])){

   $name = $_POST['name'];
   $name = filter_var($name, FILTER_SANITIZE_STRING);
   $number = $_POST['number'];
   $number = filter_var($number, FILTER_SANITIZE_STRING);
   $email = $_POST['email'];
   $email = filter_var($email, FILTER_SANITIZE_STRING);
   $method = $_POST['method'];
   $method = filter_var($method, FILTER_SANITIZE_STRING);
   $address = 'flat no. '. $_POST['flat'] .' '. $_POST['street'] .' '. $_POST['city'] .' '. $_POST['state'] .' '. $_POST['country'] .' - '. $_POST['pin_code'];
   $address = filter_var($address, FILTER_SANITIZE_STRING);
   $placed_on = date('d-M-Y');

   $cart_total = 0;
   $cart_products[] = '';

   $cart_query = $conn->prepare("SELECT * FROM `cart` WHERE user_id = ?");
   $cart_query->execute([$user_id]);
   if($cart_query->rowCount() > 0){
      while($cart_item = $cart_query->fetch(PDO::FETCH_ASSOC)){
         $cart_products[] = $cart_item['name'].' ( '.$cart_item['quantity'].' )';
         $sub_total = ($cart_item['price'] * $cart_item['quantity']);
         $cart_total += $sub_total;
      };
   };

   $total_products = implode(', ', $cart_products);

   $order_query = $conn->prepare("SELECT * FROM `orders` WHERE name = ? AND number = ? AND email = ? AND method = ? AND address = ? AND total_products = ? AND total_price = ?");
   $order_query->execute([$name, $number, $email, $method, $address, $total_products, $cart_total]);

   if($cart_total == 0){
      $message[] = 'Keranjang Anda kosong';
   }elseif($order_query->rowCount() > 0){
      $message[] = 'Pesanan sudah ditempatkan!';
   }else{
      $insert_order = $conn->prepare("INSERT INTO `orders`(user_id, name, number, email, method, address, total_products, total_price, placed_on) VALUES(?,?,?,?,?,?,?,?,?)");
      $insert_order->execute([$user_id, $name, $number, $email, $method, $address, $total_products, $cart_total, $placed_on]);
      $delete_cart = $conn->prepare("DELETE FROM `cart` WHERE user_id = ?");
      $delete_cart->execute([$user_id]);
      $message[] = 'Pesanan ditempatkan dengan sukses!';
   }

}

?>

<!DOCTYPE html>
<html lang="en">
<head>
   <meta charset="UTF-8">
   <meta http-equiv="X-UA-Compatible" content="IE=edge">
   <meta name="viewport" content="width=device-width, initial-scale=1.0">
   <title>Checkout</title>

   <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.1/css/all.min.css">

   <link rel="stylesheet" href="css/style.css">

</head>
<body>
   
<?php include 'header.php'; ?>

<section class="display-orders">

   <?php
      $cart_grand_total = 0;
      $select_cart_items = $conn->prepare("SELECT * FROM `cart` WHERE user_id = ?");
      $select_cart_items->execute([$user_id]);
      if($select_cart_items->rowCount() > 0){
         while($fetch_cart_items = $select_cart_items->fetch(PDO::FETCH_ASSOC)){
            $cart_total_price = ($fetch_cart_items['price'] * $fetch_cart_items['quantity']);
            $cart_grand_total += $cart_total_price;
   ?>
   <p> <?= $fetch_cart_items['name']; ?> <span>(<?= 'Rp'.$fetch_cart_items['price'].'/- x '. $fetch_cart_items['quantity']; ?>)</span> </p>
   <?php
    }
   }else{
      echo '<p class="empty">Keranjang Anda kosong!</p>';
   }
   ?>
   <div class="grand-total">Total : <span>Rp<?= $cart_grand_total; ?>,-</span></div>
</section>

<section class="checkout-orders">

   <form action="" method="POST">

      <h3>Tempatkan pesanan Anda</h3>

      <div class="flex">
         <div class="inputBox">
            <span>Nama Anda :</span>
            <input type="text" name="name" placeholder="Masukkan nama Anda" class="box" required>
         </div>
         <div class="inputBox">
            <span>Nomor Anda :</span>
            <input type="number" name="number" placeholder="Masukkan nomor Anda" class="box" required>
         </div>
         <div class="inputBox">
            <span>Email Anda :</span>
            <input type="email" name="email" placeholder="Masukkan email Anda" class="box" required>
         </div>
         <div class="inputBox">
            <span>Metode pembayaran :</span>
            <select name="method" class="box" required>
               <option value="bayar di tempat">Bayar di tempat</option>
               <option value="kartu kredit">Kartu kredit</option>
               <option value="paytm">Paytm</option>
               <option value="paypal">PayPal</option>
            </select>
         </div>
         <div class="inputBox">
            <span>Alamat (baris 1) :</span>
            <input type="text" name="flat" placeholder="Contoh: nomor flat" class="box" required>
         </div>
         <div class="inputBox">
            <span>Alamat (baris 2) :</span>
            <input type="text" name="street" placeholder="Contoh: nama jalan" class="box" required>
         </div>
         <div class="inputBox">
            <span>Kota :</span>
            <input type="text" name="city" placeholder="Contoh: Jakarta" class="box" required>
         </div>
         <div class="inputBox">
            <span>Provinsi :</span>
            <input type="text" name="state" placeholder="Contoh: DKI Jakarta" class="box" required>
         </div>
         <div class="inputBox">
            <span>Negara :</span>
            <input type="text" name="country" placeholder="Contoh: Indonesia" class="box" required>
         </div>
         <div class="inputBox">
            <span>Kode pos :</span>
            <input type="number" min="0" name="pin_code" placeholder="Contoh: 123456" class="box" required>
         </div>
      </div>

      <input type="submit" name="order" class="btn <?= ($cart_grand_total > 1)?'':'disabled'; ?>" value="Tempatkan pesanan">

   </form>

</section>

<?php include 'footer.php'; ?>

<script src="js/script.js"></script>

</body>
</html>