import 'package:flutter/material.dart';
import 'package:flutter_final_project/core/utils/app_assets.dart';
import 'package:flutter_final_project/core/utils/app_colors.dart';
import 'package:flutter_final_project/core/utils/app_strings.dart';
import 'package:flutter_final_project/core/utils/app_textstyles.dart';
import 'package:flutter_final_project/core/widget/BottomNav.dart';
import 'package:flutter_final_project/core/widget/custom_bottom_container.dart';
import 'package:flutter_final_project/core/widget/custom_textformfiled.dart';
import 'package:flutter_final_project/features/Home/data/model/Best_Seller_model.dart';
import 'package:flutter_final_project/features/Home/data/model/Categorylist_model.dart';

import 'package:flutter_final_project/features/Home/presentation/widget/action_icon.dart';
import 'package:flutter_final_project/features/Home/presentation/widget/text_column.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';
import 'package:flutter_final_project/core/router/app_routes.dart';
import 'package:flutter_final_project/features/profile/presentation/page/profile_menu_screen.dart';




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
      appBar: AppBar(
      title: Text(AppStrings.home),
      centerTitle: true,
      backgroundColor: AppColors.YellowBase,
      actions: [
        GestureDetector(
          /*onTap: () {
            context.go('AppRoutes.profileMenu');
          },*/
          onTap: () {
  // quick test: open ProfileMenuScreen directly without GoRouter
          Navigator.push(
          context,
    MaterialPageRoute(builder: (_) => const ProfileMenuScreen()),
          );
           },

          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: SvgPicture.asset(
              AppAssets.person,
              height: 28,
              width: 28,
            ),
          ),
        ),
      ],
      ),
        body: Stack(
         children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 70),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    CustomTextFormField(
                      fillColor: AppColors.white,
                      width: 200,
                      height: 30,
                      hintText: "Search",
                      hintStyle: AppTextstyles.style12w300grey,
                      suffixIcon: SvgPicture.asset(
                        AppAssets.search,
                        width: 10,
                        height: 8,
                        fit: BoxFit.scaleDown,
                      ),
                    ),
                    const Spacer(),
                    ActionIcon(
                        child: SvgPicture.asset(AppAssets.cart,
                            fit: BoxFit.scaleDown)),
                    const SizedBox(width: 10),
                    ActionIcon(
                        child: SvgPicture.asset(AppAssets.notification,
                            fit: BoxFit.scaleDown)),
                    const SizedBox(width: 10),
                    

                  ],
                ),
                const SizedBox(height: 20),
                const TextColumn(),
              ],
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: CustomBottomContainer(
              height: 700,
              width: double.infinity,
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // ✅ الكاتيجوري
                    SizedBox(
                      height: 100,
                      child: ListView.separated(
                        scrollDirection: Axis.horizontal,
                        itemCount: Categorylist.categorylist.length,
                        separatorBuilder: (context, index) =>
                            const SizedBox(width: 10),
                        itemBuilder: (context, index) {
                          final category = Categorylist.categorylist[index];
                          return Column(
                            children: [
                              Image.asset(
                                category.image,
                                height: 60,
                                width: 70,
                                fit: BoxFit.contain,
                              ),
                              const SizedBox(height: 8),
                              Text(
                                category.text,
                                style: AppTextstyles.style12w400black,
                              ),
                            ],
                          );
                        },
                      ),
                    ),
                    const SizedBox(height: 5),
                    Center(
                      child: Container(
                        width: 323,
                        height: 1,
                        color: AppColors.linecolor,
                      ),
                    ),
                    const SizedBox(height: 20),

                    // ✅ Best Seller Title
                    Row(
                      children: [
                        Text(
                          "Best Seller",
                          style: AppTextstyles.style20BlackW500,
                        ),
                        const Spacer(),
                        Text(
                          "View All",
                          style: AppTextstyles.style12w500org,
                        ),
                        const SizedBox(width: 5),
                        SvgPicture.asset(AppAssets.nexticon),
                      ],
                    ),

                    const SizedBox(height: 20),

                    // ✅ Best Seller List
                    SizedBox(
                      height: 150,
                      child: ListView.separated(
                        scrollDirection: Axis.horizontal,
                        itemCount: BestSellerModel.bestSellerList.length,
                        separatorBuilder: (context, index) =>
                            const SizedBox(width: 0),
                        itemBuilder: (context, index) {
                          final bestSeller =
                              BestSellerModel.bestSellerList[index];
                          return Stack(
                            alignment: Alignment.bottomCenter,
                            children: [
                              // الصورة
                              ClipRRect(
                                borderRadius: BorderRadius.circular(12),
                                child: Image.asset(
                                  bestSeller.image,
                                  height: 160,
                                  width: 120,
                                  fit: BoxFit.contain,
                                ),
                              ),

                              Positioned(
                                bottom: 8,
                                right: 6,
                                child: Container(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 8, vertical: 4),
                                  decoration: BoxDecoration(
                                    color: AppColors.orangecolor,
                                    borderRadius: BorderRadius.circular(6),
                                    border: const Border(
                                      left: BorderSide(
                                        color: AppColors.orangecolor,
                                        width: 2,
                                      ),
                                    ),
                                  ),
                                  child: Text(
                                    bestSeller.price,
                                    style: AppTextstyles.style12w400white,
                                  ),
                                ),
                              ),
                            ],
                          );
                        },
                      ),
                    )
                  ],
                ),
              ),
            ),
          )
        ],
      ),
      bottomNavigationBar: CustomBottomNavBar(
        currentIndex: _currentIndex,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
      ),
    );
  }
}
