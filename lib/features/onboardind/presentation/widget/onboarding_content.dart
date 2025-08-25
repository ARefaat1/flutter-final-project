import 'package:flutter/material.dart';
import 'package:flutter_final_project/core/router/app_routes.dart';
import 'package:flutter_final_project/core/utils/app_colors.dart';
import 'package:flutter_final_project/core/utils/app_strings.dart';
import 'package:flutter_final_project/core/utils/app_textstyles.dart';
import 'package:flutter_final_project/core/widget/custom_bottom_container.dart';
import 'package:flutter_final_project/core/widget/custom_elevated_button.dart';
import 'package:flutter_final_project/features/onboardind/data/models/onboardind_model.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';

class OnboardingContent extends StatelessWidget {
  final int currentIndex;
  final PageController controller;

  const OnboardingContent({
    super.key,
    required this.currentIndex,
    required this.controller,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: 0,
      left: 0,
      right: 0,
      child: CustomBottomContainer(
        padding: const EdgeInsets.all(20),
        height: 338,
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            /// Icon
            SvgPicture.asset(
              OnboardingModel.onboardingData[currentIndex].icon,
              width: 31,
              height: 36.81,
            ),
            const SizedBox(height: 10),

            /// Title
            Text(
              OnboardingModel.onboardingData[currentIndex].title,
              style: AppTextstyles.style24orgI,
            ),
            const SizedBox(height: 10),

            /// Subtitle
            Text(
              OnboardingModel.onboardingData[currentIndex].subtitle,
              textAlign: TextAlign.center,
              style: AppTextstyles.style14blackfont.copyWith(height: 1.5),
            ),
            const SizedBox(height: 20),

            /// Dots Indicator
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: List.generate(
                OnboardingModel.onboardingData.length,
                (index) => Container(
                  margin: const EdgeInsets.symmetric(horizontal: 4),
                  width: currentIndex == index ? 25 : 15,
                  height: 8,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(4),
                    color: currentIndex == index
                        ? AppColors.orangecolor
                        : AppColors.yellow2,
                  ),
                ),
              ),
            ),
            const SizedBox(height: 20),

            /// Next Button
            CustomElevatedButton(
              text: currentIndex == OnboardingModel.onboardingData.length - 1
                  ? AppStrings.getstart
                  : AppStrings.next,
              backgroundColor: AppColors.orangecolor,
              textStyle: AppTextstyles.style17weightcolor,
              onPressed: () {
                if (currentIndex == OnboardingModel.onboardingData.length - 1) {
                  context.go(AppRoutes.authChoosing);
                } else {
                  controller.nextPage(
                    duration: const Duration(milliseconds: 500),
                    curve: Curves.ease,
                  );
                }
              },
            ),
          ],
        ),
      ),
    );
  }
}
