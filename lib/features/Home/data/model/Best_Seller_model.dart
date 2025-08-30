import 'package:flutter_final_project/core/utils/app_assets.dart';

class BestSellerModel {
  final String image;
  final String price;

  BestSellerModel({required this.image, required this.price});
  static List<BestSellerModel> bestSellerList = [
    BestSellerModel(image: AppAssets.Item1, price: "\$20"),
    BestSellerModel(image: AppAssets.Item2, price: "\$25"),
    BestSellerModel(image: AppAssets.Item3, price: "\$30"),
    BestSellerModel(image: AppAssets.Item4, price: "\$15"),
  ];
}
