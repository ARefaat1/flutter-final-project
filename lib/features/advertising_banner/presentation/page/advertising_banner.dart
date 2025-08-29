import 'package:flutter/material.dart';
import 'package:flutter_final_project/core/utils/app_colors.dart';
import 'package:flutter_final_project/core/utils/app_strings.dart';
import 'package:flutter_final_project/core/utils/app_textstyles.dart';
import 'package:flutter_final_project/core/widget/custom_label.dart';
import 'package:flutter_final_project/core/widget/custum_appbar.dart';

class AdvertisingBanner extends StatefulWidget {
  const AdvertisingBanner({super.key});

  @override
  State<AdvertisingBanner> createState() => _AdvertisingBannerState();
}

class _AdvertisingBannerState extends State<AdvertisingBanner> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            CustumAppbar(
              title: "MEAL TITLE", //TODO will be fetched from db or api
              titleTextStyle: AppTextstyles
                  .style20w500, //TODO Favorite icon should be added
            ),
            Stack(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: Image.asset(
                    "assets/pizza.jpg",
                    height: 220,
                    width: double.infinity,
                    fit: BoxFit.cover,
                  ),
                ),
                SizedBox(
                    width: double.infinity,
                    height:
                        0.0), //TODO will be changed by the app custom widget
                // Price + Quantity
                Row(
                  children: [
                    const Text(
                      "\$14.00 ",
                      style: TextStyle(
                          color: Colors.red,
                          fontWeight: FontWeight.bold,
                          fontSize: 20),
                    ),
                    const Text(
                      "\$20.00",
                      style: TextStyle(
                          color: Colors.grey,
                          decoration: TextDecoration.lineThrough),
                    ),
                    const Spacer(),
                    // IconButton( TODO Make the logic
                    //   icon: const Icon(Icons.remove_circle_outline),
                    //   onPressed: () {
                    //     if (quantity > 1) {
                    //       setState(() => quantity--);
                    //     }
                    //   },
                    // ),
                    // Text("$quantity",
                    //     style: const TextStyle(
                    //         fontSize: 18, fontWeight: FontWeight.bold)),
                    // IconButton(
                    //   icon: const Icon(Icons.add_circle_outline),
                    //   onPressed: () {
                    //     setState(() => quantity++);
                    //   },
                    // ),
                  ],
                ),
                SizedBox(
                    width: double.infinity,
                    height:
                        0.0), //TODO will be changed by the app custom widget
              ],

            )
          ],
        ),
      ),
    );
  }
}
