import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_final_project/core/router/app_routes.dart';
import 'package:flutter_final_project/core/utils/app_assets.dart';
import 'package:flutter_final_project/core/utils/app_colors.dart';
import 'package:flutter_final_project/features/onboardind/presentation/page/onboarding.dart';
import 'package:go_router/go_router.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 1), () {
      context.go(AppRoutes.onboarding);
    });
  }

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: AppColors.YellowBase,
      body: Center(
        child: Image.asset(
          AppAssets.logo2,
          width: screenWidth * 0.5,
          height: screenHeight * 0.3,
        ),
      ),
      

    );
  }
}
