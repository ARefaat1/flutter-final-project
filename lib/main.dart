import 'package:flutter/material.dart';
import 'package:flutter_final_project/core/router/routers.dart';
import 'package:flutter_final_project/core/utils/app_colors.dart';
import 'package:flutter_final_project/features/orders/delivery_address/presentation/page/add_new_address.dart';
import 'package:flutter_final_project/features/orders/delivery_address/presentation/page/address_page.dart';
import 'package:flutter_final_project/features/orders/my_orders/presentation/page/cancel_order.dart';
import 'package:flutter_final_project/features/orders/my_orders/presentation/page/my_orders.dart';
import 'package:flutter_final_project/features/orders/my_orders/presentation/page/order_cancelled.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Final Project',
      debugShowCheckedModeBanner: false,
      home: const AddNewAddress(),
    );
  }
}