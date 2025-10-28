README - Aplikasi Lost & Found (Flutter + GetX)

Folder ini memuat seluruh kode sumber (source code) aplikasi Flutter yang telah
dikembangkan untuk proyek Ujian Akhir Semester (UAS).

Struktur proyek disusun secara rapi dan terorganisasi menggunakan arsitektur GetX (Modules, Views, Controllers, Bindings) untuk memudahkan proses pemeliharaan dan pengembangan selanjutnya.

1. Tema dan Tujuan Aplikasi

Tema: Aplikasi Utilitas Kampus (Lost & Found).

Tujuan: Tujuan utama dari aplikasi ini adalah untuk menyediakan sebuah platform digital terpusat yang membantu mahasiswa dan staf kampus dalam melaporkan dan menemukan barang yang hilang atau ditemukan di area kampus. Aplikasi ini dirancang untuk menggantikan metode konvensional (seperti mading atau grup media sosial) dengan sistem yang lebih terstruktur, cepat, dan efisien.

2. Daftar Halaman (Routes) dan Fungsinya

Aplikasi ini terdiri dari beberapa halaman utama yang diatur oleh GetX Routing. Berikut adalah daftar halaman dan fungsi utamanya:

Nama Route

Path File (View)

Fungsi Halaman

Splash

lib/app/modules/auth/splash/splash_view.dart

Halaman awal. Menampilkan loading dan (simulasi) memeriksa status login pengguna.

Login

lib/app/modules/auth/login/login_view.dart

Menyediakan formulir login (Email & Password) bagi pengguna untuk masuk.

Register

lib/app/modules/auth/register/register_view.dart

Menyediakan formulir pendaftaran bagi pengguna baru.

Home

lib/app/modules/home/home_view.dart

Halaman dashboard utama setelah login. Berisi TabBar ("Barang Hilang" & "Barang Ditemukan").

Add Report

lib/app/modules/add_report/add_report_view.dart

Formulir lengkap untuk membuat laporan baru, termasuk fitur upload gambar.

Item Detail

lib/app/modules/item_detail/item_detail_view.dart

Menampilkan detail lengkap dari satu barang. Tombol aksi (Klaim/Edit) muncul di halaman ini.

Profile

lib/app/modules/profile/profile_view.dart

Halaman akun pengguna. Berisi menu untuk "Laporan Saya", "Proses Klaim", dan tombol "Logout".

My Reports

lib/app/modules/my_reports/my_reports_view.dart

Menampilkan daftar laporan yang pernah dibuat oleh pengguna yang sedang login.

My Claims

lib/app/modules/my_claims/my_claims_view.dart

Menampilkan riwayat/status klaim barang yang sedang diproses oleh pengguna.

Chat

lib/app/modules/chat/chat_view.dart

(Masih placeholder) Halaman untuk interaksi chat antara Penemu dan Pengklaim.

3. Langkah-Langkah Menjalankan Aplikasi

Berikut adalah panduan teknis untuk menginstal dan menjalankan proyek ini di lingkungan pengembangan lokal.

A. Prasyarat (Prerequisites)

Pastikan Anda telah menginstal perangkat lunak berikut di komputer Anda:

Flutter SDK (versi 3.x.x atau lebih baru).

Android Studio (dengan Android SDK & Emulator) atau Xcode (untuk iOS).

Visual Studio Code (atau editor kode lain pilihan Anda) dengan plugin Flutter.

B. Instalasi dan Konfigurasi

Clone atau Unduh Proyek:
Salin seluruh folder kode sumber ini ke direktori kerja Anda.

Buka Proyek:
Buka folder proyek ini menggunakan VS Code atau Android Studio.

Instal Dependensi:
Buka terminal di root direktori proyek dan jalankan perintah berikut untuk mengunduh semua package yang dibutuhkan (seperti get, google_fonts, image_picker, dll.) yang terdaftar di pubspec.yaml.

flutter pub get


C. Menjalankan Aplikasi

Siapkan Emulator/Perangkat:
Pastikan Anda memiliki emulator Android atau simulator iOS yang sedang berjalan, atau hubungkan perangkat fisik (HP) Anda ke komputer.

Jalankan Aplikasi:
Di terminal yang sama, jalankan perintah berikut:

flutter run


Atau, Anda dapat menekan tombol F5 di VS Code (Run and Debug).

Mulai Aplikasi:
Aplikasi akan secara otomatis ter-instal dan diluncurkan di perangkat/emulator Anda, dimulai dari splash_view.dart.

D. Tampilan Aplikasi
<img width="403" height="868" alt="Screenshot from 2025-10-28 12-50-52" src="https://github.com/user-attachments/assets/3eb7f5db-ae67-46fa-8c58-9f047024e9e4" />
<img width="403" height="868" alt="Screenshot from 2025-10-28 12-52-40" src="https://github.com/user-attachments/assets/6c305986-b498-461b-b4ed-b6f554dd483f" />
<img width="403" height="868" alt="Screenshot from 2025-10-28 12-56-38" src="https://github.com/user-attachments/assets/1cb3b26d-e51f-4f3a-a8f8-fafa88a9ae84" />
<img width="403" height="868" alt="Screenshot from 2025-10-28 13-00-09" src="https://github.com/user-attachments/assets/d1206447-7896-4c1c-ad02-52b513363cfd" />
<img width="403" height="868" alt="Screenshot from 2025-10-28 13-06-22" src="https://github.com/user-attachments/assets/fb0488e9-b7cf-45c7-9ef4-7a37db99f620" />
<img width="403" height="868" alt="Screenshot from 2025-10-28 13-15-04" src="https://github.com/user-attachments/assets/1a2a3dfd-10d6-44da-b3ec-0102e54a2429" />
<img width="403" height="868" alt="Screenshot from 2025-10-28 13-15-26" src="https://github.com/user-attachments/assets/fde60bf0-ec7f-4a94-a065-4cc6476a16bf" />
<img width="403" height="868" alt="Screenshot from 2025-10-28 13-16-23" src="https://github.com/user-attachments/assets/2f225415-f546-42be-870f-7b9ff248ad75" />
<img width="403" height="868" alt="Screenshot from 2025-10-28 13-22-09" src="https://github.com/user-attachments/assets/460701fc-02f0-41a1-b1eb-f6e37619d8d7" />
<img width="403" height="868" alt="Screenshot from 2025-10-28 13-22-24" src="https://github.com/user-attachments/assets/ac6c9079-b8e3-4ffe-ae3c-e9de1e86265e" />
