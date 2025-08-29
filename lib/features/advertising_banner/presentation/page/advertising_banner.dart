import 'package:flutter/material.dart';
import 'package:flutter_final_project/core/utils/app_colors.dart';
import 'package:flutter_final_project/core/utils/app_strings.dart';
import 'package:flutter_final_project/core/utils/app_textstyles.dart';
import 'package:flutter_final_project/core/widget/BottomNav.dart';
import 'package:flutter_final_project/core/widget/custom_bottom_container.dart';
import 'package:flutter_final_project/core/widget/custom_elevated_button.dart';
import 'package:flutter_final_project/features/advertising_banner/widgets/ad_app_bar.dart';
import 'package:flutter_final_project/features/advertising_banner/widgets/add_to_cart.dart';
import 'package:flutter_svg/svg.dart';

class AdvertisingBanner extends StatefulWidget {
  const AdvertisingBanner({super.key});

  @override
  State<AdvertisingBanner> createState() => _AdvertisingBannerState();
}

class _AdvertisingBannerState extends State<AdvertisingBanner> {
  int quantity = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.YellowBase,
      appBar: AdAppBar(title: "Pizza with Pepperoni and Cheese"),

      body: CustomBottomContainer(
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Padding(
            // include bottom padding so content isn't hidden by system/bottom nav
            padding: EdgeInsets.fromLTRB(20, 20, 20, 20 + MediaQuery.of(context).viewPadding.bottom),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 12),

                // Image Banner with Stack
                Stack(
                  children: [
                    // Pizza image placeholder
                    Center(
                      child: Padding(
                        padding: const EdgeInsets.all(12),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(36),
                          child: SizedBox(
                            height: 223,
                            width: 323,
                            child: Image.asset(
                              "assets/images/alferadopizza.png",
                              height: 223,
                              width: 323,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ),
                    ),

                    // Discount Badge (top right)
                    Positioned(
                      top: 12,
                      right: 12,
                      child: Container(
                        padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                        child: Stack(
                          alignment: Alignment.center,
                          children: [
                            SvgPicture.asset(
                              "assets/icons/Star 1.svg",
                            ),
                            Text(
                              "-30%",
                              style: AppTextstyles.style20w700white,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),

                // Price + Quantity Row below the stack
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 12.0),
                  child: Row(
                    children: [
                      const Text(
                        "\$14.00 ",
                        style: TextStyle(color: Colors.red, fontWeight: FontWeight.bold, fontSize: 20),
                      ),
                      const Text(
                        "\$20.00",
                        style: TextStyle(color: Colors.grey, decoration: TextDecoration.lineThrough),
                      ),
                      const Spacer(),
                      IconButton(
                        icon: const Icon(Icons.remove_circle_outline),
                        onPressed: () {
                          if (quantity > 1) {
                            setState(() => quantity--);
                          }
                        },
                      ),
                      Text(
                        "$quantity",
                        style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                      ),
                      IconButton(
                        icon: const Icon(Icons.add_circle_outline),
                        onPressed: () {
                          setState(() => quantity++);
                        },
                      ),
                    ],
                  ),
                ),

                const SizedBox(height: 20),

                // TODO all of this will be deleted to get the data for the db
                // Description Placeholder
                const Text(
                  "Lorem ipsum dolor sit amet",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 6),
                const Text(
                  AppStrings.suptitle1,
                  style: TextStyle(color: Colors.grey),
                ),

                const SizedBox(height: 20),

                // Personal Portion Options Placeholder
                const Text(
                  "Personal portion",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 12),

                Column(
                  children: const [
                    ListTile(
                      title: Text("Personal (4 Slices)"),
                      trailing: Text("\$0.00"),
                    ),
                    ListTile(
                      title: Text("Medium (8 Slices)"),
                      trailing: Text("\$3.00"),
                    ),
                    ListTile(
                      title: Text("Familiar (10 Slices)"),
                      trailing: Text("\$6.00"),
                    ),
                    ListTile(
                      title: Text("Jumbo (12 Slices)"),
                      trailing: Text("\$10.00"),
                    ),
                  ],
                ),  

                const SizedBox(height: 20),

                // Add to Cart Button Placeholder
                Center(child: AddToCart(text: AppStrings.addToCart, onPressed: () {}))
              ],
            ),
          ),
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
