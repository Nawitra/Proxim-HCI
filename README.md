# Proxim - UI Aplikasi Mobile
Aplikasi ini dibuat untuk memberikan exposure pada pengusaha UMKM. Proyek ini hanya berupa UI aplikasi ini dibuat dengan menggunakan Flutter (Dart Framework).

## Konten:
- [Apa itu Proxim?](#Apa-Itu-Proxim-?)
- [Tim Proxim](#Tim-Proxim)
- [Target Pengguna](#Target-Pengguna)
- [Tujuan Proxim](#Tujuan-Proxim)
- [Filosofi HCI](#Filosofi-HCI)
- [Teknologi yanng dipakai dalam pembuatan Proxim](#Teknologi)
- [Bagaimana Cara Menggunakannya?](#Bagaimana-Cara-Menggunakannya-?)

## Tim Proxim
- 1806200116 - Jidan Dhirayoga Gumbira (Ketua)
- 1806200280 - Vernando Wijaya Putra
- 1806200330 - Glory Alifa Puncuna

## Apa itu Proxim?
Proxim adalah aplikasi yang digunakan untuk memberikan informasi kepada
pengunjung mengenai lokasi usaha mikro terdekat agar pengunjung dapat
lebih mudah mendapatkan barang yang diinginkan dengan pasti.

## Target Pengguna
Penjual UMKM dan Pengunjung yang berada di sekitar Objek Pariwisata.

## Tujuan Proxim 
1. Meningkatkan kesadaran pengunjung akan keberadaan usaha-usaha
mikro di objek wisata setempat.
2. Membangun minat masyarakat untuk membuka usaha mikro.

## Filosofi HCI
· Elemen visual ekonomi
· Tidak berlebihan
· Jelas dan terorganizir dengan baik
Secara keseluruhan, aplikasi Proxim dibuat dengan sederhana. Dengan harapan bahwa pengguna yang tidak begitu melek teknologi, dapat menggunakannya dengan baik. Aplikasi ini bahkan tidak memiliki navigasi bar yang berisi banyak tab, biasanya ada pada aplikasi yang lebih kompleks.
- Contohnya adalah menu utama Proxim:
<img src="Menu.jpg">

## Teknologi
- Flutter: "1.22.0"
- Dart: "2.8"
- Android SDK: ">=2.7.0 <3.0.0"

## Bagaimana cara menggunakannya?
- [Mendunduh Proyek](#Mengunduh-Proyek)
- [Mengekstraksi File Proyek](#Mengekstraksi-File-Proyek)
- [Instalasi Flutter](#Instalasi-Flutter)

Menjalankan Proyek dengan menggunakan:
- [Visual Studio Code](#Visual-Studio-Code)
- [Android Studio](#Android-Studio)

## Mengunduh Proyek
- Pada tab code di https://github.com/Nawitra/Proxim-HCI. 
- Klik tombol berwarna hijau dengan ikon download dan tulisan code. Kemudian, akan muncul dropdown dengan berbagai opsi untuk melakukan clone terhadap repository proyek ini. 
- Pilih 'Download ZIP' untuk mengunduh keseluruhan file yang ada di dalam proyek. 
- Kemudian, pilih folder untuk menyimpan proyek yang dikompres berupa zip tersebut. Secara default, file akan masuk ke dalam C:\Users\[User_Sekarang]\Downloads.
- File Proxim-HCI-master.zip akan diunduh

## Mengekstraksi File Proyek
- Pastikan komputer telah memiliki aplikasi untuk mengekstraksi file ZIP. Jika belum maka dapat mengunduh aplikasi file archiver https://www.7-zip.org/. Jika sudah memiliki aplikasi sejenisnya, dapat lanjut ke tahapan berikutnya.
- Membuka folder tempat mengunduh Proxim-HCI-master.zip.
- Klik kanan pada file, lalu pilih Extract to Proxim-HCI-master\
- Sebuah folder bernama Proxim-HCI-master akan muncul pada direktori anda.

## Instalasi Flutter
Untuk mengeksekusi proyek, dapat menggunakan Visual Code atau Android Studio untuk melakukan pembangunan aplikasi (Compilation and Building). Kemudian akan dijalankan pada perangkat Android atau Emulator.
- Sebelum melakukan setup editor, pastikan telah mengunduh dan menginstalasi Flutter.Jika belum dapat mengunjungi link https://flutter.dev/docs/get-started/install/windows#get-the-flutter-sdk. Sesuaikan dengan sistem operasi yang dipakai. Lalu melakukan update path sesuai instruksi di https://flutter.dev/docs/get-started/install/windows#update-your-path.

## Visual Studio Code
- Untuk melakukan instalasi Visual Studio Code dapat dimulai dengan mengunduhnya di https://code.visualstudio.com/download. Unduh sesuai dengan sistem operasi yang dipakai. Disarankan untuk mengunduh versi terbaru yang direkomendasikan, seperti pada sistem operasi Windows yaitu Version 1.51.
- Lakukan instalasi Visual Studio Code hingga selesai.
- Membuka Visual Studio Code. Dan melakukan instalasi extensions atau plugin Dart dan Flutter denbgan cara klik Extensions pada bar samping.
- Kemudian panggil ulang Visual Studio Code.
Note: Untuk memasang ekstensi Dart dan Flutter secara lengkap dapat mengunjungi dokumentasi di link https://flutter.dev/docs/development/tools/vs-code#installation-and-setup.
- Klik Open Folder pada Visual Studio Code. Dan pilih folder Proxim-HCI-master.
- Lalu pada pada status bar Visual Code akan terlihat perangkat yang terkoneksi. 
Note: Jika belum memasang perangkat, maka secara default akan ada tulisan no device. Lihat disini untuk [pemasangan perangkat](#pemasangan-perangkat).
- Setelah perangkat terdeteksi, klik Run > Start Debugging atau menggunakan F5.
- Menunggu aplikasi di build.
- Aplikasi kemudian akan terinstall dan dijalankan pada perangkat yang terkoneksi.

## Android Studio
- Untuk melakukan instalasi Android Studio dapat melihat instruksi di https://flutter.dev/docs/get-started/install/windows#install-android-studio. 
- Mulai Android Studio.
- Buka plugin preferences dengan klik Configure > Plugins.
- Pilih dan install Flutter Plugin.
- Install Dart plugin.
- Lakukan pemanggilan ulang pada Android Studio.
- Klik Open an existing Android Studio project.
- Kemudian, pilih folder Proxim-HCI-master.
- Pada toolbar, pastikan target selector telah memiliki perangkat android yang terpasang. Jika belum, lihat disini untuk [pemasangan perangkat](#pemasangan-perangkat).
- Klik ikon run pada toolbar atau lewat Run > Run.
-  Menunggu aplikasi di build.
- Aplikasi Proxim akan terinstall dan dijalankan pada perangkat yang terkoneksi.

## Pemasangan Perangkat
### Untuk Visual Studio Code:
- Install Android Studio dengan instruksi di https://flutter.dev/docs/get-started/install/windows#install-android-studio.
- Perangkat yang digunakan dapat berupa perangkat Android asli atau Emulator Android. 
- Untuk pemasangan perangkat Android dapat mengunjungi https://flutter.dev/docs/get-started/install/windows#set-up-your-android-device.
- Sedangkan pemasangan emulator di https://flutter.dev/docs/get-started/install/windows#set-up-the-android-emulator.
### Untuk Android Studio
- Untuk memasang Emulator: https://developer.android.com/studio/run/emulator.
- Untuk memasang perangkat android asli: https://developer.android.com/studio/run/device.
