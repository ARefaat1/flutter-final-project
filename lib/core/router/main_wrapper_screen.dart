import 'package:flutter/material.dart';
import 'package:flutter_final_project/features/best_seller/presentation/page/best_seller.dart';
import 'package:flutter_final_project/features/orders/my_orders/presentation/page/my_orders.dart';
import 'package:go_router/go_router.dart';
import 'package:flutter_final_project/core/router/app_routes.dart';
import 'package:flutter_final_project/features/Home/presentation/page/home_screen.dart';
import 'package:flutter_final_project/features/favorites/presentation/page/favorites_screen.dart';

import 'package:flutter_final_project/core/widget/BottomNav.dart'; // Use your existing bottom nav

class MainWrapperScreen extends StatefulWidget {
  const MainWrapperScreen({super.key});

  @override
  State<MainWrapperScreen> createState() => _MainWrapperScreenState();
}

class _MainWrapperScreenState extends State<MainWrapperScreen> {
  int _currentIndex = 0;

  void _onTabTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  // Create pages dynamically with current index
  Widget _getCurrentPage() {
    switch (_currentIndex) {
      case 0:
        return HomeScreen();
      case 1:
        return BestSellerScreen();
      case 2:
        return FavoritesScreen(
          currentIndex: _currentIndex,
          onTap: _onTabTapped,
        );
      case 3:
        return  MyOrders();
      case 4:
        return HomeScreen();
      default:
        return HomeScreen();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _getCurrentPage(),
      bottomNavigationBar: CustomBottomNavBar(
        currentIndex: _currentIndex,
        onTap: _onTabTapped,
      ),
    );
  }
}