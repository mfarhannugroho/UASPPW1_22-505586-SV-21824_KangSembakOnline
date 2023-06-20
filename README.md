# Nama Lengkap Mahasiswa
Nama : Muhammad Farhan Nugroho

NIM : 22/505586/SV/21824

# Penjelasan Website Secara Umum
KangSembakOnline adalah sebuah website toko kelontong/grocery store online yang menyediakan sembako dan bahan pangan secara praktis dan efisien. Kami menyediakan berbagai produk sembako seperti daging, ikan, buah, dan sayur.
### Tujuan
Website ini dirancang untuk memenuhi kebutuhan klien dengan memberikan kemudahan dalam pembelian sembako secara online. Klien kami dapat dengan mudah menjelajahi berbagai produk yang tersedia, memilih produk sesuai kebutuhan mereka, dan menyelesaikan proses pembelian dengan cepat dan aman.
### Permasalahan yang Dicover
Website KangSembakOnline hadir untuk menyelesaikan beberapa permasalahan yang sering dihadapi dalam pembelian sembako secara tradisional. Beberapa masalah yang kami coba atasi meliputi :
1. Keterbatasan waktu : Banyak orang kesulitan untuk mengunjungi toko kelontong fisik karena kesibukan sehari-hari. Melalui website kami, klien dapat melakukan pembelian kapan saja dan di mana saja tanpa harus meninggalkan rumah atau kantor.
2. Keterbatasan stok : Kadang-kadang toko kelontong fisik menghadapi masalah stok barang tertentu. Kami berusaha untuk menjaga persediaan yang memadai agar klien tidak kecewa saat mencari produk sembako yang mereka butuhkan.
3. Kemudahan perbandingan : Website kami menyediakan informasi produk yang lengkap, termasuk gambar, deskripsi, dan harga. Ini memungkinkan klien untuk membandingkan produk dan membuat keputusan pembelian yang tepat.
4. Pengiriman yang cepat : Kami bekerja sama dengan layanan pengiriman terpercaya untuk memastikan produk yang dipesan oleh klien kami dikirim dengan cepat dan aman ke alamat yang dituju.
5. Keamanan pembayaran: Melalui website KangSembakOnline, kami menyediakan sistem pembayaran yang aman dan terpercaya. Klien dapat memilih metode pembayaran yang sesuai dengan preferensi mereka, seperti transfer bank, kartu kredit, dompet digital, atau pembayaran di tempat.
### Kontribusi
Kami berkomitmen untuk memberikan layanan terbaik kepada klien kami dan terus meningkatkan pengalaman belanja online mereka. KangSembakOnline hadir untuk memudahkan akses dan memenuhi kebutuhan sembako dan bahan pangan Anda dengan cepat, mudah, dan terpercaya.

# Kriteria Penilaian (4 Requirement Dasar)
### 1. Desain rapi mengikuti kaidah atau prinsip desain
Berikut adalah penjelasan untuk setiap bagian kode yang memenuhi persyaratan dasar desain :
1. Konsistensi

Konsistensi dalam desain dicapai dengan menggunakan kelas dan struktur yang serupa di seluruh kode CSS. Misalnya, penggunaan .home-bg .home .content dan .home-category .box-container .box menunjukkan konsistensi dalam struktur selector.

2. Kontras

Kontras dapat dilihat dalam penggunaan warna dan perbedaan ukuran teks. Misalnya, pada .home-bg .home .content span, warna teks yang cerah (--lightorange) digunakan untuk menyoroti elemen tertentu dan menciptakan kontras dengan latar belakangnya. Hal yang sama berlaku untuk .home-bg .home .content h3 dengan menggunakan warna teks gelap (--black). 

3. Repetisi

Repetisi dapat dilihat dalam penggunaan selector dan properti yang diulang. Misalnya, dalam .home-category .box-container .box dan .products .box-container .box, properti seperti padding, text-align, border, background-color, box-shadow, dan border-radius digunakan secara berulang.

4. Kesatuan

Kesatuan dicapai melalui penggunaan kelas dan gaya yang serupa di seluruh kode CSS. Misalnya, .box-container digunakan dalam beberapa kelas seperti .home-category .box-container, .products .box-container, .reviews .box-container, dll. Ini menciptakan konsistensi visual dan kesatuan antara elemen-elemen yang terkait.

Berikut adalah potongan kode nya :
```css
/* Konsistensi */
.home-bg .home .content {
  /* gaya untuk elemen .content di dalam .home di dalam .home-bg */
}

.home-category .box-container .box {
  /* gaya untuk elemen .box di dalam .box-container di dalam .home-category */
}

/* Kontras */
.home-bg .home .content span {
  color: var(--orange);
  /* gaya untuk elemen <span> di dalam .content di dalam .home-bg */
}

.home-bg .home .content h3 {
  color: var(--black);
  /* gaya untuk elemen <h3> di dalam .content di dalam .home-bg */
}

/* Repetisi */
.home-category .box-container .box,
.products .box-container .box {
  padding: 10px;
  text-align: center;
  border: 1px solid black;
  background-color: white;
  box-shadow: 2px 2px 2px black;
  border-radius: 5px;
  /* gaya yang diulang untuk elemen .box di dalam .box-container */
}

/* Kesatuan */
.box-container {
  /* gaya untuk elemen .box-container yang digunakan dalam beberapa kelas */
}
```
### 2. Website responsive, dapat diakses melalui device
Dalam potongan kode berikut, terdapat beberapa aturan CSS media query yang menunjukkan bahwa kode tersebut mendukung responsif pada perangkat mobile, tablet, dan laptop. Berikut potongan kode dan penjelasannya :

```css
@media (max-width: 991px) {
   html {
      font-size: 55%;
   }
}

@media (max-width: 768px) {
   #menu-btn {
      display: inline-block;
   }

   .header .flex .navbar {
      border-top: var(--border);
      border-bottom: var(--border);
      background-color: var(--white);
      position: absolute;
      top: 99%;
      left: 0;
      right: 0;
      transition: .2s linear;
      clip-path: polygon(0 0, 100% 0, 100% 0, 0 0);
   }

   .header .flex .navbar.active {
      clip-path: polygon(0 0, 100% 0, 100% 100%, 0 100%);
   }

   .header .flex .navbar a {
      display: block;
      margin: 2rem;
   }

   .update-profile form .flex {
      flex-wrap: wrap;
      gap: 0;
   }

   .update-profile form .flex .inputBox {
      width: 100%;
   }
}

@media (max-width: 450px) {
   html {
      font-size: 50%;
   }

   .flex-btn {
      flex-flow: column;
      gap: 0;
   }

   .title {
      font-size: 3rem;
   }
}
```
CSS di atas mencakup beberapa media query yang mengatur tampilan responsif untuk berbagai lebar layar. Beberapa contoh pengaturan responsif dalam kode CSS tersebut adalah:
1. Pada lebar layar maksimum 991px, ukuran font dalam elemen HTML diatur menjadi 55%.
2. Pada lebar layar maksimum 768px, tombol menu (#menu-btn) ditampilkan dan gaya navigasi di header diubah agar sesuai dengan tampilan responsif. Kapanpun tombol menu tersebut diklik, elemen navigasi (navbar) akan muncul dan menghilang dengan efek transisi. Tautan navigasi juga diberi jarak dan tampil dalam bentuk daftar vertikal.
3. Pada lebar layar maksimum 450px, ukuran font dalam elemen HTML diatur menjadi 50% dan gaya tata letak (flex-btn) pada tombol-tombol di dalamnya diubah agar tampil dalam satu kolom.

Dengan pengaturan media query ini, tampilan website diharapkan menjadi responsif dan dapat menyesuaikan dengan berbagai ukuran layar yang berbeda.
### 3. Direct feedback ke pengguna website

Potongan kode berikut memenuhi kriteria Direct feedback ke pengguna website. Berikut adalah alasan mengapa kode tersebut memenuhi kriteria tersebut :
1. Pesan Kesalahan : Kode tersebut menggunakan array message untuk menyimpan pesan kesalahan yang mungkin terjadi saat login. Jika ada pesan kesalahan yang dihasilkan, kode tersebut akan mencetak pesan-pesan tersebut di dalam elemen HTML dengan class "message". Pesan kesalahan tersebut akan ditampilkan kepada pengguna langsung di halaman web.
```php
<?php
if(isset($message)){
   foreach($message as $message){
      echo '
      <div class="message">
         <span>'.$message.'</span>
         <i class="fas fa-times" onclick="this.parentElement.remove();"></i>
      </div>
      ';
   }
}
?>
```
2. Penanganan Kesalahan : Kode tersebut menangani dua jenis kesalahan yang dapat terjadi saat login, yaitu ketika email atau kata sandi yang dimasukkan salah dan ketika pengguna tidak ditemukan. Jika terjadi kesalahan, pesan kesalahan yang sesuai akan ditambahkan ke dalam array message, dan pesan-pesan tersebut akan ditampilkan kepada pengguna.
```php
<?php
if($rowCount > 0){

   if($row['user_type'] == 'admin'){

      $_SESSION['admin_id'] = $row['id'];
      header('location:admin_page.php');

   }elseif($row['user_type'] == 'user'){

      $_SESSION['user_id'] = $row['id'];
      header('location:home.php');

   }else{
      $message[] = 'Pengguna tidak ditemukan!';
   }

}else{
   $message[] = 'Email atau kata sandi salah!';
}
?>
```
3. Penghapusan Pesan : Setiap pesan kesalahan memiliki tombol "X" (ikon silang) yang memungkinkan pengguna untuk menghapus pesan tersebut dari tampilan. Ini memberikan pengguna kemampuan untuk membersihkan tampilan jika mereka tidak tertarik dengan pesan kesalahan.
```html
<div class="message">
   <span>'.$message.'</span>
   <i class="fas fa-times" onclick="this.parentElement.remove();"></i>
</div>
```
Dengan menggunakan kode di atas, pengguna akan mendapatkan umpan balik langsung tentang status login mereka dan informasi tentang kesalahan yang terjadi, jika ada.

### 4. Konten dinamis dari database
Potongan kode berikut memenuhi kriteria Konten Dinamis dari Database. Berikut adalah penjelasan mengapa kode tersebut memenuhi kriteria tersebut :
1. Mengambil data dari database : Kode menggunakan query SQL untuk mengambil data pengguna dari tabel users. Query ini digunakan untuk mengambil informasi pengguna yang akan ditampilkan di halaman web.
```php
$select_users = $conn->prepare("SELECT * FROM `users`");
$select_users->execute();
while($fetch_users = $select_users->fetch(PDO::FETCH_ASSOC)){
```
2. Menampilkan data pengguna : Setelah data pengguna diambil dari database, kode menggunakan perulangan while untuk menampilkan setiap pengguna dalam elemen HTML yang sesuai. Data pengguna seperti id, nama, email, dan tipe pengguna ditampilkan menggunakan variabel PHP.
```html
<div class="box" style="<?php if($fetch_users['id'] == $admin_id){ echo 'display:none'; }; ?>">
   <img src="uploaded_img/<?= $fetch_users['image']; ?>" alt="">
   <p> id pengguna : <span><?= $fetch_users['id']; ?></span></p>
   <p> nama pengguna : <span><?= $fetch_users['name']; ?></span></p>
   <p> email : <span><?= $fetch_users['email']; ?></span></p>
   <p> tipe pengguna : <span style=" color:<?php if($fetch_users['user_type'] == 'admin'){ echo 'orange'; }; ?>"><?= $fetch_users['user_type']; ?></span></p>
   <a href="admin_users.php?delete=<?= $fetch_users['id']; ?>" onclick="return confirm('hapus pengguna ini?');" class="delete-btn">hapus</a>
</div>
```
3. Menghapus data pengguna: Kode juga menyediakan tombol "hapus" yang memungkinkan admin untuk menghapus pengguna. Ketika tombol di klik, kode mengirim permintaan ke halaman admin_users.php dengan parameter delete yang berisi ID pengguna yang akan dihapus. Setelah mengonfirmasi penghapusan, pengguna akan dihapus dari database.
```php
if(isset($_GET['delete'])){
   $delete_id = $_GET['delete'];
   $delete_users = $conn->prepare("DELETE FROM `users` WHERE id = ?");
   $delete_users->execute([$delete_id]);
   header('location:admin_users.php');
}
```
Dengan menggunakan kode di atas, data pengguna akan diambil dari database dan ditampilkan secara dinamis di halaman web, memberikan konten yang berasal dari database. Pengguna juga dapat menghapus pengguna tertentu melalui tombol "hapus" yang tersedia.

# Catatan
Website ini memiliki 2 tipe user yaitu user (pengguna) dan admin yang dibedakan ketika melakukan login dan harus melakukan registrasi terlebih dahulu, agar bisa dapat mengakses/login dengan ke 2 tipe user tersebut, saya sudah me-registrasikannya dengan akun google dan password sebagai berikut :
#### Admin
Akun : admin01@gmail.com

Password : 111
#### User
Akun : user01@gmail.com

Password : 123

Atau jika tidak ingin menggunakan akun yang di atas, kita juga bisa membuat akun sendiri melalui menu registrasi/daftar.
