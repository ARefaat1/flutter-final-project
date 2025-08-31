import 'package:flutter/material.dart';
import 'package:flutter_final_project/core/utils/app_colors.dart';
import 'package:flutter_final_project/core/utils/app_strings.dart';
import 'package:flutter_final_project/core/utils/app_textstyles.dart';
import 'package:flutter_final_project/core/widget/custom_elevated_button.dart';
import 'package:flutter_final_project/features/orders/my_orders/models/orders.dart';

class OrdersListView extends StatelessWidget {
  final List<Order> orders;

  const OrdersListView({super.key, required this.orders});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: orders.length,
      itemBuilder: (context, index) {
        final order = orders[index];
        return Padding(
          padding: const EdgeInsets.all(20.0),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Left side image
              ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Image.network(
                  order.image,
                  width: 71.68141174316406,
                  height: 108,
                  fit: BoxFit.cover,
                ),
              ),
              const SizedBox(width: 12),
              // Right side content
              Expanded(
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // Title + Price
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(order.title,
                              style: AppTextstyles.style20Blackw500),
                          Text(order.price,
                              style: AppTextstyles.style20Blackw500),
                        ],
                      ),
                      const SizedBox(height: 2),
                      
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(order.date, style: AppTextstyles.style14BlackW400),
                          Text(order.items,
                          style: AppTextstyles.style14BlackW300)
                        ],
                      ),
                      
                      const SizedBox(height: 10),
                      // Buttons or status
                      if (order.status == "active") ...[
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            CustomElevatedButton(
                              height: 26,
                            
                              text: AppStrings.cancelOrder,
                              onPressed: () {},
                              textStyle: AppTextstyles.style15WhiteW500,
                            ),
                            const SizedBox(width: 10),
                            CustomElevatedButton(
                              height: 26,
                              width: 110,
                              text: AppStrings.trackDriver,
                              onPressed: () {},
                              textStyle: AppTextstyles.style15OrangeW400,
                              backgroundColor: AppColors.orangecolor2,
                            ),
                          ],
                        ),
                        // ] else if (order.status == "completed") ...[
                        //   const Text("Delivered",
                        //       style:
                        //           TextStyle(fontSize: 12, color: Colors.green)),
                        // ] else if (order.status == "cancelled") ...[
                        //   const Text("Cancelled",
                        //       style: TextStyle(fontSize: 12, color: Colors.red)),
                        // ],
                      ],
                    ]),
              ),
            ],
          ),
        );
      },
    );
  }
}
