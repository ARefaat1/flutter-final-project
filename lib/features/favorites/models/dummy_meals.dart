import 'package:flutter/material.dart';
import 'package:flutter_final_project/core/widget/menus_food_gridview.dart';
import 'package:flutter_final_project/features/favorites/models/meal.dart';

final List<Meal> dummyMeals = [
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
Widget build(BuildContext context) {
  return Scaffold(
    appBar: AppBar(title: const Text("Restaurant Menu")),
    body: MenusFoodGridView(items: dummyMeals), // ✅ pass meals
  );
}
