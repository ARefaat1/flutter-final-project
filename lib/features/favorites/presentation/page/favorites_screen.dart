import 'package:flutter/material.dart';
import 'package:flutter_final_project/core/utils/app_colors.dart';
import 'package:flutter_final_project/core/utils/app_strings.dart';
import 'package:flutter_final_project/core/utils/app_textstyles.dart';
import 'package:flutter_final_project/core/widget/BottomNav.dart';
import 'package:flutter_final_project/core/widget/custom_bottom_container.dart';
import 'package:flutter_final_project/core/widget/menu_app_bar.dart';
import 'package:flutter_final_project/core/widget/menus_food_gridview.dart';
import 'package:flutter_final_project/features/favorites/models/meal.dart';

class FavoritesScreen extends StatefulWidget {
  // Accept currentIndex and onTap as parameters from MainWrapperScreen
  final int? currentIndex;
  final Function(int)? onTap;
  
  FavoritesScreen({super.key, this.currentIndex, this.onTap});

  final List<Meal> dummyMeals = [
    // dummy meals list will be deleted to fetch data from api or database
    Meal(
      title: "Burger",
      description: "Cheesy beef burger",
      imageUrl: "assets/images/food1.jpg",
    ),
    Meal(
      title: "Pizza",
      description: "Pepperoni with cheese",
      imageUrl: "assets/images/food2.jpg",
    ),
    Meal(
      title: "Pasta",
      description: "Creamy Alfredo pasta",
      imageUrl: "assets/images/food3.jpg",
    ),
  ];

  @override
  State<FavoritesScreen> createState() => _FavoritesScreenState();
}

class _FavoritesScreenState extends State<FavoritesScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.YellowBase,
      appBar: MenuAppBar(title: AppStrings.favoritesTitle),
      body: CustomBottomContainer(
        // Remove the bottomNavigationBar from here since it's handled by MainWrapperScreen
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: Text(
                AppStrings.favoritesSubtitle,
                style: AppTextstyles.style20OrangeW500,
              ),
            ),
            const SizedBox(height: 10),
            Expanded(
              child: MenusFoodGridView(items: widget.dummyMeals),
            ),
          ],
        ),
      ),
      bottomNavigationBar: CustomBottomNavBar(
        currentIndex: 0,
        onTap: (index) {
          // Handle bottom navigation tap
        },
      ),
    );
  }
}