import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SigninScreen extends StatefulWidget {
  const SigninScreen({super.key});

  @override
  State<SigninScreen> createState() => _SigninScreenState();
}

class _SigninScreenState extends State<SigninScreen> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  String _errorText ='';
  bool _isSigneIn = false;
  bool _obscurePassword = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: SingleChildScrollView(
          padding: EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Container(
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.brown, width: 2),
                  shape: BoxShape.circle,
                ),
              // Logo Jam Tangan
                child: CircleAvatar(
                  radius: 50,
                  backgroundImage: AssetImage('images/placeholder_image.png'), // Tambahkan logo di folder asset
                ),
              ),
              if(_isSigneIn)
                IconButton(onPressed: (){},
                    icon: Icon(Icons.camera_alt, color: Colors.brown[50],)),
              SizedBox(height: 20),
              // Judul
              Text(
                "Timely Treasure",
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Colors.brown[800],
                ),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 30),
              // Input Email
              TextField(
                controller: emailController,
                decoration: InputDecoration(
                  labelText: "Email",
                  border: OutlineInputBorder(),
                  prefixIcon: Icon(Icons.email),
                ),
                keyboardType: TextInputType.emailAddress,
              ),
              SizedBox(height: 20),
              // Input Password
              TextField(
                controller: passwordController,
                decoration: InputDecoration(
                  labelText: "Password",
                  border: OutlineInputBorder(),
                  prefixIcon: Icon(Icons.lock),
                ),
                obscureText: true,
              ),
              SizedBox(height: 20),
              // Tombol Login
              ElevatedButton(
                onPressed: () {
                  // Logika login di sini
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(content: Text('Login berhasil!')),
                  );
                },
                style: ElevatedButton.styleFrom(
                  padding: EdgeInsets.symmetric(vertical: 15),
                  backgroundColor: Colors.brown[700],
                ),
                child: Text("Login"),
              ),
              SizedBox(height: 10),
              // Lupa Password
              TextButton(
                onPressed: () {
                  // Arahkan ke halaman lupa password
                },
                child: Text(
                  "Lupa Password?",
                  style: TextStyle(color: Colors.brown[700]),
                ),
              ),
              SizedBox(height: 10),
              // Registrasi
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Belum punya akun?"),
                  TextButton(
                    onPressed: () {
                      // Arahkan ke halaman registrasi
                    },
                    child: Text(
                      "Daftar",
                      style: TextStyle(color: Colors.brown[700]),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
