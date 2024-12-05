import 'package:flutter/material.dart';
// Mengimpor pustaka Flutter Material untuk mendukung desain berbasis Material Design.

class SecondScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Second Screen'),
        // Menampilkan judul "Second Screen" di AppBar.
        backgroundColor: Colors.red,
        // Mengatur warna latar belakang AppBar menjadi merah.
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          // Menempatkan elemen dalam kolom di tengah layar secara vertikal.
          children: [
            const Text(
              'This is the Second Screen',
              // Menampilkan teks "This is the Second Screen".
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              // Mengatur gaya teks menjadi tebal dengan ukuran font 20.
            ),
            const SizedBox(height: 20),
            // Memberikan jarak vertikal sebesar 20 piksel antara teks dan tombol.
            ..._buildPageButtons(context),
            // Memanggil fungsi `_buildPageButtons` untuk membuat daftar tombol navigasi ke layar lain.
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: 1,
        // Menentukan indeks awal navigasi bawah berada di Screen 2.
        selectedItemColor: Colors.blue[900],
        // Mengatur warna item yang dipilih menjadi biru tua.
        unselectedItemColor: Colors.black,
        // Mengatur warna item yang tidak dipilih menjadi hitam.
        backgroundColor: Colors.red,
        // Mengatur warna latar belakang navigasi bawah menjadi merah.
        onTap: (index) {
          _navigateToPage(index, context);
          // Memanggil fungsi `_navigateToPage` untuk berpindah ke layar yang dipilih berdasarkan indeks.
        },
        items: _buildBottomNavItems(),
        // Memanggil fungsi `_buildBottomNavItems` untuk membuat daftar item navigasi bawah.
      ),
    );
  }

  List<Widget> _buildPageButtons(BuildContext context) {
    final List<Map<String, String>> routes = [
      {'name': 'Go to Screen 1', 'route': '/screen1'},
      {'name': 'Go to Screen 3', 'route': '/screen3'},
      {'name': 'Go to Screen 4', 'route': '/screen4'},
      {'name': 'Go to Screen 5', 'route': '/screen5'},
    ];
    // Daftar nama layar dan rute tujuan yang akan ditampilkan sebagai tombol.

    return routes.map((route) {
      return Padding(
        padding: const EdgeInsets.symmetric(vertical: 8.0),
        // Memberikan jarak vertikal sebesar 8 piksel di atas dan bawah tombol.
        child: ElevatedButton(
          onPressed: () => Navigator.pushNamed(context, route['route']!),
          // Navigasi ke rute tujuan yang sesuai saat tombol ditekan.
          child: Text(route['name']!),
          // Menampilkan teks tombol sesuai dengan nama layar pada daftar `routes`.
        ),
      );
    }).toList();
    // Mengonversi daftar `routes` menjadi daftar widget tombol.
  }

  void _navigateToPage(int index, BuildContext context) {
    final routes = ['/screen1', '/screen2', '/screen3', '/screen4', '/screen5'];
    // Daftar rute untuk layar-layar aplikasi.
    Navigator.pushReplacementNamed(context, routes[index]);
    // Berpindah layar ke rute berdasarkan indeks yang dipilih dan menggantikan layar saat ini.
  }

  List<BottomNavigationBarItem> _buildBottomNavItems() {
    return [
      const BottomNavigationBarItem(icon: Icon(Icons.looks_one), label: 'Screen 1'),
      const BottomNavigationBarItem(icon: Icon(Icons.looks_two), label: 'Screen 2'),
      const BottomNavigationBarItem(icon: Icon(Icons.looks_3), label: 'Screen 3'),
      const BottomNavigationBarItem(icon: Icon(Icons.looks_4), label: 'Screen 4'),
      const BottomNavigationBarItem(icon: Icon(Icons.looks_5), label: 'Screen 5'),
    ];
    // Membuat daftar item navigasi bawah dengan ikon dan label yang sesuai untuk setiap layar.
  }
}
