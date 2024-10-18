import 'package:flutter/material.dart';
import 'models/destination.dart';
import 'screens/home_screen.dart';
import 'screens/detail_screen.dart';
import 'screens/about_screen.dart';
import 'screens/login_screen.dart';  // Pastikan file ini diimpor

void main() {
  runApp(TravelApp());
}

class TravelApp extends StatelessWidget {
  const TravelApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Travel App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        scaffoldBackgroundColor: Colors.white,
      ),
      initialRoute: '/login',  // Halaman login sebagai halaman awal
      routes: {
        '/login': (context) => LoginScreen(),
        '/home': (context) => HomeScreen(destinations),
        '/details': (context) => DetailScreen(),
        '/about': (context) => AboutScreen(),
      },
    );
  }
}

// Data Dummy Destinations
List<Destination> destinations = [
  Destination(
    name: 'Bali',
    description: 'Beautiful beaches and vibrant culture',
    imageUrl: 'assets/images/travel1.jpg',
    price: 500.0,
  ),
  Destination(
    name: 'Yogyakarta',
    description: 'Historic temples and rich heritage',
    imageUrl: 'assets/images/travel2.jpg',
    price: 300.0,
  ),
  Destination(
    name: 'Lombok',
    description: 'Unspoiled nature and peaceful landscapes',
    imageUrl: 'assets/images/travel3.jpg',
    price: 400.0,
  ),
];
