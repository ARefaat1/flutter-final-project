import 'package:flutter/material.dart';
import 'package:flutter_final_project/features/onboardind/data/models/onboardind_model.dart';

class OnboardingImageView extends StatelessWidget {
  final PageController controller;
  final Function(int) onPageChanged;

  const OnboardingImageView({
    super.key,
    required this.controller,
    required this.onPageChanged,
  });

  @override
  Widget build(BuildContext context) {
    return PageView.builder(
      controller: controller,
      itemCount: OnboardingModel.onboardingData.length,
      onPageChanged: onPageChanged,
      itemBuilder: (context, index) {
        return Image.asset(
          OnboardingModel.onboardingData[index].image,
          width: double.infinity,
          height: double.infinity,
          fit: BoxFit.cover,
        );
      },
    );
  }
}
