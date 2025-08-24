import 'package:flutter_final_project/core/utils/app_assets.dart';

class Categorylist {
  final String image;
  final String text;
  Categorylist({required this.image, required this.text});

  static List<Categorylist> categorylist = [
    Categorylist(image: AppAssets.Meals, text: "Breakfast"),
    Categorylist(image: AppAssets.Snacks, text: "Lunch"),
    Categorylist(image: AppAssets.vegan, text: "Dinner"),
    Categorylist(image: AppAssets.Desserts, text: "Snacks"),
    Categorylist(image: AppAssets.Drinks, text: "Drinks"),
  ];
}
