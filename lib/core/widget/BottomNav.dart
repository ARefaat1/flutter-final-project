import 'package:flutter/material.dart';
import 'package:flutter_final_project/core/utils/app_assets.dart';
import 'package:flutter_final_project/core/utils/app_colors.dart';
import 'package:flutter_final_project/features/Home/presentation/page/home_screen.dart';
import 'package:flutter_final_project/features/favorites/presentation/page/favorites_screen.dart';
import 'package:flutter_final_project/features/orders/my_orders/presentation/page/my_orders.dart';
import 'package:flutter_final_project/features/profile/presentation/page/profile_menu_screen.dart';
import 'package:flutter_svg/svg.dart';

class CustomBottomNavBar extends StatelessWidget {
  final int currentIndex;
  final Function(int) onTap;

  const CustomBottomNavBar({
    super.key,
    required this.currentIndex,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: AppColors.white,
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(25),
          topRight: Radius.circular(25),
        ),
      
  
      ),
      child: ClipRRect(
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(25),
          topRight: Radius.circular(25),
        ),
        child: BottomNavigationBar(
          currentIndex: currentIndex,
          onTap: onTap,
          backgroundColor: AppColors.orangecolor,
          type: BottomNavigationBarType.fixed,
          selectedItemColor: Colors.orange,
          unselectedItemColor: Colors.grey,
          showSelectedLabels: false,
          showUnselectedLabels: false,
          items: [
            BottomNavigationBarItem(
              icon: IconButton(
              icon: SvgPicture.asset(
                AppAssets.homeicon,
                width: 22,
                height: 18,
              ),
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => HomeScreen())); // Index 0 for home
              },
              ),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: IconButton(
                icon: SvgPicture.asset(
                  AppAssets.ordericon,
                  width: 22,
                  height: 18,
                ),
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => MyOrders())); // Index 1 for orders
                },
              ),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: IconButton(
                icon: SvgPicture.asset(
                  AppAssets.favoriteicon,
                  width: 22,
                  height: 18,
                ),
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => FavoritesScreen())); // Index 2 for favorites
                },
              ),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: IconButton(
                icon: SvgPicture.asset(
                  AppAssets.profileicon,
                  width: 22,
                  height: 18,
                ),
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => ProfileMenuScreen())); // Index 3 for profile
                },
              ),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: SvgPicture.asset(
                AppAssets.supporticon,
                width: 22,
                height: 18,
              ),
              label: '',
            ),
          ],
        ),
      ),
    );
  }
}
