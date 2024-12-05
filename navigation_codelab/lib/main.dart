import 'package:flutter/material.dart';
// Mengimpor pustaka Flutter Material untuk membangun antarmuka pengguna berbasis Material Design.

import 'welcome_page.dart';
import 'first_screen.dart';
import 'second_screen.dart';
import 'third_screen.dart';
import 'fourth_screen.dart';
import 'fifth_screen.dart';
// Mengimpor file dart lainnya yang berisi kelas untuk masing-masing layar (page) aplikasi.

void main() {
  runApp(MyApp());
}
// Fungsi utama aplikasi Flutter. 
// Memanggil fungsi `runApp` untuk menjalankan aplikasi Flutter dengan widget root `MyApp`.

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Navigation App', 
      // Menentukan nama aplikasi. Nama ini bisa muncul di deskripsi aplikasi atau tab aplikasi saat berjalan.

      theme: ThemeData(
        primarySwatch: Colors.blue, 
        // Menentukan tema aplikasi, dengan warna utama (primary color) biru.
      ),
      
      initialRoute: '/welcome', 
      // Menentukan rute awal yang akan ditampilkan pertama kali saat aplikasi berjalan. Dalam hal ini, layar `WelcomePage`.

      routes: {
        // Mendefinisikan peta rute untuk navigasi ke berbagai layar aplikasi.
        '/welcome': (context) => WelcomePage(), 
        // Rute untuk layar pertama yang menyambut pengguna (WelcomePage).
        '/screen1': (context) => FirstScreen(), 
        // Rute untuk layar pertama setelah welcome (FirstScreen).
        '/screen2': (context) => SecondScreen(), 
        // Rute untuk layar kedua (SecondScreen).
        '/screen3': (context) => ThirdScreen(), 
        // Rute untuk layar ketiga (ThirdScreen).
        '/screen4': (context) => FourthScreen(), 
        // Rute untuk layar keempat (FourthScreen).
        '/screen5': (context) => FifthScreen(), 
        // Rute untuk layar kelima (FifthScreen).
      },
    );
  }
}
// `MyApp` adalah kelas utama aplikasi yang merupakan turunan dari `StatelessWidget`. 
// Di dalamnya terdapat konfigurasi dasar aplikasi, seperti tema, rute awal, dan peta rute ke widget layar terkait.
