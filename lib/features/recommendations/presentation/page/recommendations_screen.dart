import 'package:flutter/material.dart';
import 'package:flutter_final_project/core/utils/app_colors.dart';
import 'package:flutter_final_project/core/utils/app_strings.dart';
import 'package:flutter_final_project/core/utils/app_textstyles.dart'; // make sure this is imported
import 'package:flutter_final_project/core/widget/BottomNav.dart';
import 'package:flutter_final_project/core/widget/custom_bottom_container.dart';
import 'package:flutter_final_project/core/widget/menu_app_bar.dart';
import 'package:flutter_final_project/core/widget/menus_food_gridview.dart';
import 'package:flutter_final_project/features/favorites/models/meal.dart';

class RecommendationsScreen extends StatefulWidget {
  RecommendationsScreen({super.key});

  final List<Meal> dummyMeals = [   // dummy meals list will be delted to fetch data from api or database
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
  State<RecommendationsScreen> createState() => _RecommendationsScreenState();
}

class _RecommendationsScreenState extends State<RecommendationsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.YellowBase,
      // appBar: MenuAppBar(title: AppStrings.recommendationsTitle), // ✅ put AppBar here
      body: CustomBottomContainer(
        bottomNavigationBar: CustomBottomNavBar(
        currentIndex: 0,
        onTap: (index) {
          // Handle bottom navigation tap
        },
      ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: Text(
                AppStrings.favoritesSubtitle,
                style: AppTextstyles.style20OrangeW500,
              ),
            ), // ✅ replaced Title with Text
            const SizedBox(height: 10),
            Expanded(
              child: MenusFoodGridView(items: widget.dummyMeals), // ✅ access via widget
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
