import 'package:flutter/material.dart';
import 'package:flutter_final_project/core/utils/app_colors.dart';
import 'package:flutter_final_project/core/utils/app_strings.dart';
import 'package:flutter_final_project/core/utils/app_textstyles.dart';
import 'package:flutter_final_project/core/widget/custom_elevated_button.dart';
import 'package:flutter_final_project/features/orders/my_orders/models/orders.dart';
import 'package:flutter_final_project/features/orders/my_orders/presentation/page/cancel_order.dart';

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
                  width: 72,
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
                        Expanded(
                          child: Text(
                            order.title,
                            style: AppTextstyles.style20BlackW500,
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),
                        const SizedBox(width: 8),
                        Text(order.price, style: AppTextstyles.style20BlackW500),
                      ],
                    ),
                    const SizedBox(height: 2),

                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(order.date,
                            style: AppTextstyles.style14BlackW400),
                        Text(order.items,
                            style: AppTextstyles.style14BlackW300),
                      ],
                    ),

                    const SizedBox(height: 10),

                    // Buttons or status
                    if (order.status == "active") ...[
                      Row(
                        children: [
                          Expanded(
                            child: CustomElevatedButton(
                              height: 32,
                              text: AppStrings.cancelOrder,
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => const CancelOrder(),
                                  ),
                                );
                              },
                              textStyle: AppTextstyles.style15WhiteW500,
                            ),
                          ),
                          const SizedBox(width: 10),
                          Expanded(
                            child: CustomElevatedButton(
                              height: 32,
                              text: AppStrings.trackDriver,
                              onPressed: () {},
                              textStyle: AppTextstyles.style15OrangeW400,
                              backgroundColor: AppColors.orangecolor2,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ],
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
