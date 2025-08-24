import 'package:flutter/material.dart';

import 'package:flutter_final_project/features/onboardind/presentation/widget/onboarding_content.dart';
import 'package:flutter_final_project/features/onboardind/presentation/widget/onboarding_image_view.dart';
import 'package:flutter_final_project/features/onboardind/presentation/widget/skip_button.dart';

class Onboarding extends StatefulWidget {
  const Onboarding({super.key});

  @override
  State<Onboarding> createState() => _OnboardingState();
}

class _OnboardingState extends State<Onboarding> {
  final PageController _controller = PageController();
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          /// PageView
          OnboardingImageView(
            controller: _controller,
            onPageChanged: (index) {
              setState(() => currentIndex = index);
            },
          ),
          const SkipButton(),
          OnboardingContent(
            currentIndex: currentIndex,
            controller: _controller,
          ),
        ],
      ),
    );
  }
}
