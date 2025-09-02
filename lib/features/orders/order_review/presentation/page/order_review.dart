import 'package:flutter/material.dart';
import 'package:flutter_final_project/core/utils/app_assets.dart';
import 'package:flutter_final_project/core/utils/app_colors.dart';
import 'package:flutter_final_project/core/utils/app_strings.dart';
import 'package:flutter_final_project/core/utils/app_textstyles.dart';
import 'package:flutter_final_project/core/widget/custom_bottom_container.dart';
import 'package:flutter_final_project/core/widget/menu_app_bar.dart';
import 'package:flutter_final_project/features/orders/my_orders/models/orders.dart';
import 'package:flutter_svg/svg.dart';

class OrderReview extends StatefulWidget {
  const OrderReview({super.key});

  @override
  State<OrderReview> createState() => _OrderReviewState();
}

class _OrderReviewState extends State<OrderReview> {
  final List<Order> allOrders = [
     Order(
      title: "Chicken Burger",
      price: "\$20.00",
      date: "17 Oct, 01:20 pm",
      items: "1 item",
      image: "https://images.unsplash.com/photo-1568901346375-23c9450c58cd?w=200",
      status: "active",
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.YellowBase,
      appBar: MenuAppBar(title: AppStrings.leaveAReview),
      body:  CustomBottomContainer(
        child: Column(
          children: [

            Center(
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [

                    Center(child: Image(image: NetworkImage(allOrders[0].image))),
                    Text(allOrders[0].title, style: AppTextstyles.style20Blackw500),
                    Text(AppStrings.preReviewText),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        IconButton(
                          icon: SvgPicture.asset(AppAssets.ratingStar),
                          onPressed: () {
                            // Handle star button press
                          },
                        ),
                        IconButton(
                          icon: SvgPicture.asset(AppAssets.ratingStar),
                          onPressed: () {
                            // Handle star button press
                          },
                        ),
                        IconButton(
                          icon: SvgPicture.asset(AppAssets.ratingStar),
                          onPressed: () {
                            // Handle star button press
                          },
                        ),
                        IconButton(
                          icon: SvgPicture.asset(AppAssets.ratingStar),
                          onPressed: () {
                            // Handle star button press
                          },
                        ),
                        IconButton(
                          icon: SvgPicture.asset(AppAssets.ratingStar),
                          onPressed: () {
                            // Handle star button press
                          },
                        ),
                      ],
                    )

                  ],
                ),
              ),
            ),

           // Add your review form or content here
          ],
        ),
      ),
    );

   

  }
}