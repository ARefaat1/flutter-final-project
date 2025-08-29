import 'package:flutter/material.dart';
import 'package:flutter_final_project/features/advertising_banner/presentation/page/advertising_banner.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.orange,
      ),
      home: const AdvertisingBanner(), // your screen here
    );
  }
}
