import 'package:flutter/material.dart';
// Mengimpor pustaka Flutter Material untuk mendukung desain berbasis Material Design.

class FirstScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('First Screen'), 
        // Menampilkan judul halaman 'First Screen' pada AppBar.
        backgroundColor: Colors.green, 
        // Mengatur warna latar belakang AppBar menjadi hijau.
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center, 
          // Mengatur elemen dalam kolom berada di tengah layar secara vertikal.
          children: [
            const Text(
              'This is the First Screen', 
              // Menampilkan teks 'This is the First Screen' di halaman.
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold), 
              // Mengatur ukuran teks menjadi 20 dan menjadikannya tebal.
            ),
            const SizedBox(height: 20), 
            // Menambahkan jarak vertikal sebesar 20 piksel antara teks dan tombol.
            ..._buildPageButtons(context), 
            // Memanggil fungsi `_buildPageButtons` untuk menambahkan daftar tombol navigasi ke halaman lain.
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: 0, 
        // Mengatur tab pertama sebagai tab yang aktif.
        selectedItemColor: Colors.blue[900], 
        // Mengatur warna item yang dipilih menjadi biru tua.
        unselectedItemColor: Colors.black, 
        // Mengatur warna item yang tidak dipilih menjadi hitam.
        backgroundColor: Colors.green, 
        // Mengatur warna latar belakang navigasi bawah menjadi hijau.
        onTap: (index) {
          _navigateToPage(index, context); 
          // Memanggil fungsi `_navigateToPage` untuk berpindah layar berdasarkan indeks tab yang dipilih.
        },
        items: _buildBottomNavItems(), 
        // Memanggil fungsi `_buildBottomNavItems` untuk membuat item navigasi bawah.
      ),
    );
  }

  List<Widget> _buildPageButtons(BuildContext context) {
    final List<Map<String, String>> routes = [
      {'name': 'Go to Screen 2', 'route': '/screen2'},
      {'name': 'Go to Screen 3', 'route': '/screen3'},
      {'name': 'Go to Screen 4', 'route': '/screen4'},
      {'name': 'Go to Screen 5', 'route': '/screen5'},
    ];
    // Daftar rute dan nama layar tujuan yang akan dibuat tombolnya.

    return routes.map((route) {
      return Padding(
        padding: const EdgeInsets.symmetric(vertical: 8.0), 
        // Menambahkan jarak vertikal 8 piksel di atas dan bawah setiap tombol.
        child: ElevatedButton(
          onPressed: () => Navigator.pushNamed(context, route['route']!), 
          // Navigasi ke rute tujuan yang didefinisikan pada tombol saat ditekan.
          child: Text(route['name']!), 
          // Menampilkan nama tombol berdasarkan data di `routes`.
        ),
      );
    }).toList();
    // Mengonversi daftar `routes` menjadi daftar widget tombol.
  }

  void _navigateToPage(int index, BuildContext context) {
    final routes = ['/screen1', '/screen2', '/screen3', '/screen4', '/screen5'];
    // Daftar rute untuk setiap layar dalam aplikasi.
    Navigator.pushReplacementNamed(context, routes[index]); 
    // Berpindah layar ke rute yang sesuai berdasarkan indeks yang dipilih dan menggantikan layar sebelumnya.
  }

  List<BottomNavigationBarItem> _buildBottomNavItems() {
    return [
      const BottomNavigationBarItem(icon: Icon(Icons.looks_one), label: 'Screen 1'),
      const BottomNavigationBarItem(icon: Icon(Icons.looks_two), label: 'Screen 2'),
      const BottomNavigationBarItem(icon: Icon(Icons.looks_3), label: 'Screen 3'),
      const BottomNavigationBarItem(icon: Icon(Icons.looks_4), label: 'Screen 4'),
      const BottomNavigationBarItem(icon: Icon(Icons.looks_5), label: 'Screen 5'),
    ];
    // Membuat daftar item navigasi bawah dengan ikon dan label untuk setiap layar.
  }
}
