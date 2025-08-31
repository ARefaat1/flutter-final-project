import 'package:flutter/material.dart';
import 'package:flutter_final_project/core/utils/app_colors.dart';
import 'package:flutter_final_project/core/utils/app_textstyles.dart';
import 'package:flutter_final_project/features/orders/my_orders/models/orders.dart';
import 'package:flutter_final_project/features/orders/my_orders/presentation/widgets/orders_listview.dart';
import 'package:flutter_final_project/core/utils/app_strings.dart';
import 'package:flutter_final_project/core/widget/BottomNav.dart';
import 'package:flutter_final_project/core/widget/custom_bottom_container.dart';
import 'package:flutter_final_project/core/widget/custom_elevated_button.dart';
import 'package:flutter_final_project/core/widget/menu_app_bar.dart';

class MyOrders extends StatefulWidget {
  const MyOrders({super.key});

  @override
  State<MyOrders> createState() => _MyOrdersState();
}

class _MyOrdersState extends State<MyOrders> {
  String selectedTab = "active"; // keep track of selected button

  // Sample data
  final List<Order> allOrders = [
    Order(
      title: "Strawberry Shake",
      price: "\$20.00",
      date: "29 Nov, 01:20 pm",
      items: "2 items",
      image: "https://images.unsplash.com/photo-1589302168068-964664d93dc0?w=200",
      status: "active",
    ),
    Order(
      title: "Chicken Burger",
      price: "\$20.00",
      date: "17 Oct, 01:20 pm",
      items: "1 item",
      image: "https://images.unsplash.com/photo-1568901346375-23c9450c58cd?w=200",
      status: "active",
    ),
    Order(
      title: "Sushi Wave",
      price: "\$20.00",
      date: "22 Apr, 01:20 pm",
      items: "2 items",
      image: "https://images.unsplash.com/photo-1546069901-ba9599a7e63c?w=200",
      status: "completed",
    ),
    Order(
      title: "Pizza",
      price: "\$20.00",
      date: "29 Nov, 01:20 pm",
      items: "1 item",
      image: "https://images.unsplash.com/photo-1601924582971-c9a7fda3b3f3?w=200",
      status: "cancelled",
    ),
  ];

  List<Order> get filteredOrders {
    return allOrders.where((o) => o.status == selectedTab).toList();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.YellowBase,
      appBar: MenuAppBar(title: AppStrings.myOrders),
      body: CustomBottomContainer(
        child: Column(
          children: [
            // Buttons Row
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CustomElevatedButton(
                      text: AppStrings.active,
                      onPressed: () => setState(() => selectedTab = "active"),
                      width: 104,
                      height: 28,
                      textStyle: AppTextstyles.style17whiteW500,
                    ),
                    const SizedBox(width: 8),
                    CustomElevatedButton(
                      text: AppStrings.completed,
                      onPressed: () => setState(() => selectedTab = "completed"),
                      width: 104,
                      height: 28,
                      textStyle: AppTextstyles.style17whiteW500,
                    ),
                    const SizedBox(width: 8),
                    CustomElevatedButton(
                      text: AppStrings.cancelled,
                      onPressed: () => setState(() => selectedTab = "cancelled"),
                      width: 104,
                      height: 28,
                      textStyle: AppTextstyles.style17whiteW500,
                    ),
                  ],
                ),
            ),
        
            // Orders list
            Expanded(
              child: OrdersListView(orders: filteredOrders),
            ),
          ],
        ),
      ),
      bottomNavigationBar: CustomBottomNavBar(
        currentIndex: 2,
        onTap: (index) {
          // Handle bottom navigation tap
        },
      ),
    );
  }
}
