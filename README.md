# Tugas 7

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
