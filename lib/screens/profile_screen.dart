import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  // Data pengguna (Anda bisa menggantinya dengan data dinamis atau data yang lebih kompleks)
  final String name = "John Doe";
  final String email = "johndoe@example.com";
  final String profilePicture = "https://www.example.com/profile.jpg"; // Ganti dengan URL gambar Anda

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Profile Screen"),
        backgroundColor: Colors.blue,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            // Gambar profil
            CircleAvatar(
              radius: 50,
              backgroundImage: NetworkImage(profilePicture),
              backgroundColor: Colors.grey[200],
            ),
            SizedBox(height: 16),

            // Nama pengguna
            Text(
              name,
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 8),

            // Email pengguna
            Text(
              email,
              style: TextStyle(
                fontSize: 16,
                color: Colors.grey[600],
              ),
            ),
            SizedBox(height: 32),

            // Tombol logout
            ElevatedButton(
              onPressed: () {
                // Logika untuk logout bisa ditambahkan di sini
                print("Logout pressed");
                Navigator.pop(context);  // Contoh logika logout dengan kembali ke halaman sebelumnya
              },
              child: Text("Logout"),
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.red, // Warna merah untuk tombol logout
                padding: EdgeInsets.symmetric(vertical: 12, horizontal: 24),
                textStyle: TextStyle(fontSize: 16),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
