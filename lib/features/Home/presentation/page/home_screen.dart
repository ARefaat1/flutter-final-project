import 'package:flutter/material.dart';
import 'package:flutter_final_project/core/utils/app_colors.dart';
import 'package:flutter_final_project/core/widget/custom_textformfiled.dart';
import 'package:flutter_final_project/core/widget/BottomNav.dart';
import 'package:flutter_final_project/features/Home/presentation/widget/categorycard.dart';
import 'package:flutter_final_project/features/Home/presentation/widget/text_column.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.YellowBase,
      body: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 70),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // CustomTextFormField(
                //   controller: TextEditingController(),
                //   hintText: "Search",
                //   hintstyle: const TextStyle(
                //     color: Color(0xff676767),
                //     fontSize: 12,
                //     fontWeight: FontWeight.w300,
                //   ),
                //   width: 200,
                //   height: 26,
                //   fillColor: Colors.white,
                //   suffixicon: Directionality(
                //     textDirection: TextDirection.ltr,
                //     child: SizedBox(
                //       width: 10,
                //       height: 3,
                //       child: SvgPicture.asset(
                //         "assets/icons/Group 109.svg",
                //       ),
                //     ),
                //   ),
                // ),
                const SizedBox(height: 10),
                const TextColumn(),
              ],
            ),
          ),

          // ✅ الطبقة الثانية: الـ Container الكبير
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              height: 550,
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(40),
                  topRight: Radius.circular(40),
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    child: CategoryCard(),
                  ),
                  Align(
                    alignment: Alignment.bottomCenter,
                    child: CustomBottomNavBar(
                      currentIndex: _currentIndex,
                      onTap: (index) {
                        setState(() {
                          _currentIndex = index;
                        });
                      },
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
