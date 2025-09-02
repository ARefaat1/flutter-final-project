import 'package:flutter/material.dart';
import 'package:flutter_final_project/core/utils/app_colors.dart';
import 'package:flutter_final_project/core/utils/app_strings.dart';
import 'package:flutter_final_project/core/widget/BottomNav.dart';
import 'package:flutter_final_project/core/widget/custom_bottom_container.dart';
import 'package:flutter_final_project/core/widget/menu_app_bar.dart';
import 'package:flutter_final_project/features/orders/delivery_address/presentation/widgets/address_list.dart';

class AddressPage extends StatefulWidget {
  const AddressPage({super.key});

  @override
  State<AddressPage> createState() => _State();
}

class _State extends State<AddressPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.YellowBase,
      appBar: MenuAppBar(
        title: AppStrings.deliveryAddress,
      ),
      body: CustomBottomContainer(child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: AddressList(),
      )),
      bottomNavigationBar:
          CustomBottomNavBar(currentIndex: 0, onTap: (index) {}),
    );
  }
}
