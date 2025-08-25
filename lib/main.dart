import 'package:flutter/material.dart';
import 'package:flutter_final_project/features/Home/presentation/page/home_screen.dart';
import 'package:flutter_final_project/features/favorites/presentation/page/favorites_screen.dart';
import 'package:flutter_final_project/features/splach_screen/presentation/page/splach_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(),
      home:  FavoritesScreen(),
    );
  }
}
