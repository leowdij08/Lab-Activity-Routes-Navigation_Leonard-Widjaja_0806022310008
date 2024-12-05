import 'package:flutter/material.dart';
// Mengimpor pustaka Flutter Material untuk membangun antarmuka pengguna berbasis Material Design.

class WelcomePage extends StatelessWidget {
  final List<Map<String, String>> routes = [
    {'name': 'Go to Screen 1', 'route': '/screen1'},
    {'name': 'Go to Screen 2', 'route': '/screen2'},
    {'name': 'Go to Screen 3', 'route': '/screen3'},
    {'name': 'Go to Screen 4', 'route': '/screen4'},
    {'name': 'Go to Screen 5', 'route': '/screen5'},
  ];
  // Sebuah daftar peta (list of maps) yang mendefinisikan nama tombol dan rute tujuan. 
  // Setiap elemen berisi kunci `name` (nama tombol) dan `route` (rute layar tujuan).

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Welcome Page'), 
        // Menampilkan judul pada AppBar dengan teks 'Welcome Page'.
        backgroundColor: Colors.blue, 
        // Mengatur warna latar belakang AppBar menjadi biru.
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          // Mengatur elemen pada kolom agar terpusat secara vertikal di tengah layar.

          children: [
            const Text(
              'Welcome to the Navigation App!', 
              // Menampilkan teks sambutan di bagian atas halaman.
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold), 
              // Mengatur ukuran teks dan membuatnya tebal (bold).
            ),
            const SizedBox(height: 20), 
            // Menambahkan jarak vertikal sebesar 20 piksel di bawah teks sambutan.

            ...routes.map((route) { 
              // Mengiterasi daftar `routes` dan membuat tombol untuk setiap item.
              return Padding(
                padding: const EdgeInsets.symmetric(vertical: 8.0), 
                // Menambahkan padding vertikal sebesar 8 piksel untuk setiap tombol.

                child: ElevatedButton(
                  onPressed: () => Navigator.pushNamed(context, route['route']!), 
                  // Navigasi ke rute yang ditentukan saat tombol ditekan menggunakan `Navigator.pushNamed`.

                  style: ElevatedButton.styleFrom(
                    fixedSize: const Size(200, 50), 
                    // Mengatur ukuran tombol tetap dengan lebar 200 piksel dan tinggi 50 piksel.
                    backgroundColor: Colors.blue, 
                    // Mengatur warna latar belakang tombol menjadi biru.
                  ),
                  child: Text(
                    route['name']!, 
                    // Menampilkan nama tombol berdasarkan nilai `name` dari elemen `routes`.
                    style: const TextStyle(color: Colors.white), 
                    // Mengatur warna teks tombol menjadi putih.
                  ),
                ),
              );
            }).toList(),
            // Mengonversi hasil iterasi `routes` menjadi daftar widget tombol.
          ],
        ),
      ),
    );
  }
}
// `WelcomePage` adalah widget `StatelessWidget` yang menampilkan halaman selamat datang. 
// Halaman ini berisi teks sambutan dan tombol navigasi ke berbagai layar aplikasi berdasarkan daftar `routes`.
