import 'package:flutter/material.dart';
import 'package:jamtangan/screens/cart_screen.dart';
import 'package:jamtangan/screens/search_screen.dart';
import 'package:jamtangan/screens/signUp_screen.dart';


void main() {
  runApp(const MyApp());
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
       //home : DetailScreen()
       // home : ProfileScreen()
      //home: SearchScreen(),
      home: CartScreen(),
      //home: SignupScreen(),
    );
  }
}

