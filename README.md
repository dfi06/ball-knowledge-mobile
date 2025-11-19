# Nobarpedia Flutter

## Tugas 7

## 1. Jelaskan apa itu widget tree pada Flutter dan bagaimana hubungan parent-child (induk-anak) bekerja antar widget

Widget adalah building block ui aplikasi flutter. Widget tree adalah struktur hierarchy untuk semua widget, dimana di dalamnya kita bisa menyisipkan widget di dalam widget untuk menciptakan hubungan parent child di antara keduanya. Parent yang membungkus, dan child adalah semua widget yang dibungkus oleh parent.

## 2. Sebutkan semua widget yang kamu gunakan dalam proyek ini dan jelaskan fungsinya

StatelessWidget: Widget yang tidak memiliki state.  
MaterialApp: Widget root, menyediakan navigasi, theme, dan judul. Berupa pondasi material design.  
ThemeData: Menentukan warna, typography, dan icon.  
ColorScheme: Menentukan warna dalam ThemeData.  
Scaffold: Menyediakan struktur dasar halaman seperti AppBar dan body.  
AppBar: Bar horizontal di bagian atas halaman, menampilkan judul.  
Text: Menampilkan teks.  
Padding: Memberikan ruang kosong di sekitar widget child.  
Column: Menyusun widget anak secara vertikal atas ke bawah.  
Row: Menyusun widget anak secara horizontal kiri ke kanan.  
InfoCard: Menampilkan informasi singkat npm, nama, dan kelas.  
SizedBox: Membuat jarak antar widget.  
Center: Menempatkan widget child di tengah parentnya.  
GridView.count: Menyusun widget anak dalam bentuk grid.  
ItemCard: Menampilkan item dengan icon dan teks, dapat ditekan.  
Card: Membuat kotak kartu dengan bayangan dibawahnya.  
Material: Pembungkus dalam material design, menyediakan data visual seperti warna, border, dll.  
InkWell: Memberikan efek ink splash ketika disentuh.  
Container: Widget tntuk layout, styling, dan dekorasi.  
Icon: Menampilkan icon.  
ScaffoldMessenger: Mengatur tampilan SnackBar dan MaterialBanner pada Scaffold.  
SnackBar: Menampilkan pesan singkat dan sementara di bagian bawah layar.  

## 3. Apa fungsi dari widget MaterialApp? Jelaskan mengapa widget ini sering digunakan sebagai widget root

MaterialApp adalah widget yang dapat menyediakan hal-hal penting pada aplikasi flutter kita seperti tema global warna dan font, navigasi routing, dan context penting lainnya untuk di-inherit oleh child widget. Juga menjadi pondasi material design.

## 4. Jelaskan perbedaan antara StatelessWidget dan StatefulWidget. Kapan kamu memilih salah satunya?

StatelessWidget adalah widget yang tidak memiliki state, artinya statis dan tidak akan berubah tampilannya.
StatefulWidget adalah widget yang memiliki state, artinya dapat berubah dan diperbarui tampilannya selama aplikasi berjalan.

Penggunaannya:
Stateless untuk hal-hal statis seperti icon, gambar, teks pada sebuah article atau kutipan yang pasti tidak berubah.
Stateful untuk memperbarui tampilan seperti pada form input, counter, animasi, atau komponen ui yang memanfaatkan data dinamis apapun.

## 5. Apa itu BuildContext dan mengapa penting di Flutter? Bagaimana penggunaannya di metode build?

BuildContext adalah objek yang menyimpan informasi posisi widget di dalam widget tree. Ini penting karena flutter dapat menggunakan data itu untuk mengetahui bagaimana widgetnya berinteraksi dengan widget lain di atasnya.

contohnya seperti untuk:
Mengakses theme (Theme.of(context)).
Mengakses navigator (Navigator.of(context)).
Mengambil data dari widget parent yang lebih tinggi dalam tree.

Pada method build, BuildContext otomatis di pass oleh flutter untuk melakukan semua hal di atas.

## 6. Jelaskan konsep "hot reload" di Flutter dan bagaimana bedanya dengan "hot restart"

Hot Reload:

1. Menyuntikkan perubahan kode ke aplikasi.
2. Lebih cepat.
3. State dipertahankan.
4. Untuk perubahan kecil seperti UI atau layout.

Hot Restart:

1. Memulai ulang seluruh aplikasi dari awal.
2. Lebih lambat.
3. State direset.
4. Untuk perubahan besar pada struktur, inisialisasi aplikasi, atau global variable.


## Tugas 8

## Jelaskan perbedaan antara Navigator.push() dan Navigator.pushReplacement() pada Flutter. Dalam kasus apa sebaiknya masing-masing digunakan pada aplikasi Football Shop kamu?

.push() untuk menambah route pada stack navigator dan .pushReplacement() untuk mengganti route paling atas pada stack navigator dengan route lain.  
.push() cocok untuk kebanyakan kasus perpindahan halaman dan .pushReplacement() untuk kasus khusus dimana kita tidak ingin user balik ke halaman sekarang misal setelah login, kita ganti route paling atas dengan halaman home sehingga user tidak bisa balik ke route login tanpa melakukan logout terlebih dahulu.

## Bagaimana kamu memanfaatkan hierarchy widget seperti Scaffold, AppBar, dan Drawer untuk membangun struktur halaman yang konsisten di seluruh aplikasi?

Scaffold menyediakan field appbar dan drawer. Appbar didalamnya dapat kita tempatkah judul route dan tombol untuk membuka drawer. Drawer dapat kita tempatkan tombol-tombol untuk navigasi antar route. Semuanya dapat kita implement di setiap halaman aplikasi sebagai judul dinamik dan navbar yang konsisten.

## Dalam konteks desain antarmuka, apa kelebihan menggunakan layout widget seperti Padding, SingleChildScrollView, dan ListView saat menampilkan elemen-elemen form? Berikan contoh penggunaannya dari aplikasi kamu.

1. Padding: Memberikan ruang kosong di sekitar elemen form, meningkatkan visibilitas dan estetik pada form.
2. SingleChildScrollView: Memastikan semua elemen form tetap dapat diakses meskipun kontennya melebihi tinggi layar, mencegah kasus overflow.
3. ListView: Menampilkan daftar item form yang dinamis atau sangat panjang. Hanya render item yang terlihat di layar sehingga efisien memori perangkat.

## Bagaimana kamu menyesuaikan warna tema agar aplikasi Football Shop memiliki identitas visual yang konsisten dengan brand toko?

Kita bisa mendefinisikan ThemeData dalam MaterialApp dengan mengatur primarySwatch di dalam colorScheme. Value primarySwatch akan menentukan warna yang akan digunakan secara default oleh widget-widget lain aplikasi, seperti pada AppBar.

## Tugas 9

## Jelaskan mengapa kita perlu membuat model Dart saat mengambil/mengirim data JSON? Apa konsekuensinya jika langsung memetakan Map<String, dynamic> tanpa model (terkait validasi tipe, null-safety, maintainability)?



## Apa fungsi package http dan CookieRequest dalam tugas ini? Jelaskan perbedaan peran http vs CookieRequest.



## Jelaskan mengapa instance CookieRequest perlu untuk dibagikan ke semua komponen di aplikasi Flutter.



## Jelaskan konfigurasi konektivitas yang diperlukan agar Flutter dapat berkomunikasi dengan Django. Mengapa kita perlu menambahkan 10.0.2.2 pada ALLOWED_HOSTS, mengaktifkan CORS dan pengaturan SameSite/cookie, dan menambahkan izin akses internet di Android? Apa yang akan terjadi jika konfigurasi tersebut tidak dilakukan dengan benar?



## Jelaskan mekanisme pengiriman data mulai dari input hingga dapat ditampilkan pada Flutter.



## Jelaskan mekanisme autentikasi dari login, register, hingga logout. Mulai dari input data akun pada Flutter ke Django hingga selesainya proses autentikasi oleh Django dan tampilnya menu pada Flutter.



## Jelaskan bagaimana cara kamu mengimplementasikan checklist di atas secara step-by-step! (bukan hanya sekadar mengikuti tutorial).


