import 'package:flutter_final_project/core/utils/app_assets.dart';
import 'package:flutter_final_project/core/utils/app_strings.dart';

class OnboardingModel {
  final String icon;
  final String title;
  final String subtitle;
  final String image;

  OnboardingModel({
    required this.icon,
    required this.title,
    required this.subtitle,
    required this.image,
  });

  static final List<OnboardingModel> onboardingData = [
    OnboardingModel(
      icon: AppAssets.carticon,
      title: AppStrings.OrderforFood,
      subtitle: AppStrings.suptitle1,
      image: AppAssets.onboarding1,
    ),
    OnboardingModel(
      icon: AppAssets.casheicon,
      title: AppStrings.EasyPayment,
      subtitle: AppStrings.suptitle1,
      image: AppAssets.onboarding2,
    ),
    OnboardingModel(
      icon: AppAssets.deliveryicon,
      title: AppStrings.FastDelivery,
      subtitle: AppStrings.suptitle1,
      image: AppAssets.onboarding3,
    ),
  ];
}
