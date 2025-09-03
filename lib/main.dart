import 'package:flutter/material.dart';
import 'package:flutter_final_project/core/router/routers.dart';
import 'package:flutter_final_project/core/utils/app_colors.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: router,
      debugShowCheckedModeBanner: false,
      theme: ThemeData(scaffoldBackgroundColor: AppColors.YellowBase),
    );
  }
}