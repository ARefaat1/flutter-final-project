
import 'package:flutter/material.dart';
import 'package:flutter_final_project/core/utils/app_colors.dart';
import 'package:flutter_final_project/core/utils/app_strings.dart';
import 'package:flutter_final_project/core/utils/app_textstyles.dart';
import 'package:flutter_final_project/core/widget/custom_bottom_container.dart';
import 'package:flutter_final_project/core/widget/custom_elevated_button.dart';
import 'package:flutter_final_project/core/widget/menu_app_bar.dart';
import 'package:flutter_final_project/features/orders/my_orders/presentation/widgets/cancel_reasons.dart';

class CancelOrder extends StatefulWidget {
  const CancelOrder({super.key});

  @override
  State<CancelOrder> createState() => _CancelOrderState();
}

class _CancelOrderState extends State<CancelOrder> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.YellowBase,
      appBar: MenuAppBar(
        title: AppStrings.cancelOrder,
      ),
    body: CustomBottomContainer(
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                AppStrings.selectedReasonToCancel,
                style: AppTextstyles.style14BlackW300),
              CancelReasons(),
              const SizedBox(height: 20),
              Center(
                child: CustomElevatedButton(
                  text: AppStrings.submit,
                  width: 142,
                  onPressed: () {
                    // Handle cancel order action
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    ),
    );
  }
}