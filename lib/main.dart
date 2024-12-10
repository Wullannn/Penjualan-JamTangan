import 'package:flutter/material.dart';
import 'package:nabila/screens/detail_screen.dart';
import 'package:nabila/screens/profile_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.brown,
      ),
      //home: SigninScreen()
      //home: HomeScreen(),
      home: DetailScreen(),
      //home: ProfileScreen(),
    );
  }
}

