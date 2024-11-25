import 'package:flutter/material.dart';
import 'package:spotify_slicing_ui/homepage/page/home_page_view.dart'; // Pastikan path ini benar sesuai struktur project Anda.

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Spotify UI',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.green), // Sesuai dengan warna Spotify
        useMaterial3: true,
      ),
      debugShowCheckedModeBanner: false, // Menghilangkan banner debug
      home: HomeView  (), // Mengatur halaman pertama aplikasi
    );
  }
}
