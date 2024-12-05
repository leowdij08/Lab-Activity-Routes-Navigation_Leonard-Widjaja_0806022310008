import 'package:flutter/material.dart';
// Mengimpor pustaka Material Design Flutter.

class FifthScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Fifth Screen'),
        // Menampilkan teks "Fifth Screen" pada AppBar.
        backgroundColor: Colors.orange,
        // Mengatur warna latar belakang AppBar menjadi oranye.
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          // Menempatkan elemen di tengah layar secara vertikal.
          children: [
            Text(
              'This is the Fifth Screen',
              // Menampilkan teks "This is the Fifth Screen".
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              // Mengatur gaya teks dengan ukuran font 20 dan tebal.
            ),
            SizedBox(height: 20),
            // Memberikan jarak vertikal sebesar 20 piksel.
            ..._buildPageButtons(context),
            // Menyisipkan daftar tombol navigasi yang dibuat dari `_buildPageButtons`.
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: 4,
        // Menentukan item navigasi bawah aktif pada indeks ke-4 (Screen 5).
        selectedItemColor: Colors.blue[900],
        // Mengatur warna item yang dipilih menjadi biru tua.
        unselectedItemColor: Colors.black,
        // Mengatur warna item yang tidak dipilih menjadi hitam.
        backgroundColor: Colors.orange,
        // Mengatur warna latar belakang navigasi bawah menjadi oranye.
        onTap: (index) {
          _navigateToPage(index, context);
          // Berpindah layar ke indeks yang dipilih saat item navigasi ditekan.
        },
        items: _buildBottomNavItems(),
        // Membuat item navigasi bawah dengan fungsi `_buildBottomNavItems`.
      ),
    );
  }

  List<Widget> _buildPageButtons(BuildContext context) {
    final List<Map<String, String>> routes = [
      {'name': 'Go to Screen 1', 'route': '/screen1'},
      {'name': 'Go to Screen 2', 'route': '/screen2'},
      {'name': 'Go to Screen 3', 'route': '/screen3'},
      {'name': 'Go to Screen 4', 'route': '/screen4'},
    ];
    // Daftar nama layar dan rute tujuan untuk tombol navigasi.

    return routes.map((route) {
      return Padding(
        padding: const EdgeInsets.symmetric(vertical: 8.0),
        // Memberikan jarak vertikal 8 piksel di atas dan bawah tombol.
        child: ElevatedButton(
          onPressed: () => Navigator.pushNamed(context, route['route']!),
          // Navigasi ke layar tujuan berdasarkan rute.
          child: Text(route['name']!),
          // Menampilkan nama layar pada tombol.
        ),
      );
    }).toList();
    // Mengonversi daftar `routes` menjadi daftar widget tombol.
  }

  void _navigateToPage(int index, BuildContext context) {
    final routes = ['/screen1', '/screen2', '/screen3', '/screen4', '/screen5'];
    // Daftar rute ke semua layar.
    Navigator.pushReplacementNamed(context, routes[index]);
    // Berpindah layar ke rute berdasarkan indeks, menggantikan layar saat ini.
  }

  List<BottomNavigationBarItem> _buildBottomNavItems() {
    return [
      BottomNavigationBarItem(icon: Icon(Icons.looks_one), label: 'Screen 1'),
      BottomNavigationBarItem(icon: Icon(Icons.looks_two), label: 'Screen 2'),
      BottomNavigationBarItem(icon: Icon(Icons.looks_3), label: 'Screen 3'),
      BottomNavigationBarItem(icon: Icon(Icons.looks_4), label: 'Screen 4'),
      BottomNavigationBarItem(icon: Icon(Icons.looks_5), label: 'Screen 5'),
    ];
    // Membuat daftar item navigasi bawah dengan ikon dan label untuk setiap layar.
  }
}
