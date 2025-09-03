
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:flutter_final_project/core/utils/app_textstyles.dart';
import 'package:flutter_final_project/core/widget/custom_bottom_container.dart';
import 'package:flutter_final_project/core/widget/custum_appbar.dart';
import 'package:flutter_final_project/core/router/app_routes.dart';
import 'package:flutter_final_project/core/utils/app_colors.dart';

class PaymentMethodsScreen extends StatefulWidget {
  const PaymentMethodsScreen({super.key});

  @override
  State<PaymentMethodsScreen> createState() => _PaymentMethodsScreenState();
}

class _PaymentMethodsScreenState extends State<PaymentMethodsScreen> {
  String selectedMethod = "**** **** **** 43";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          CustumAppbar(
            title: 'Payment Methods',
            titleTextStyle: AppTextstyles.styleauth,
            centertitle: true,
          ),
          CustomBottomContainer(
            color: AppColors.white,
            width: double.infinity,
            height: 700,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 30),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: 20),
                  const Text(
                    'Your Payment Options:',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                      color: Color(0xFF391713),
                    ),
                  ),
                  const SizedBox(height: 30),
                  _buildPaymentOption('**** **** **** 43', Icons.credit_card),
                  _buildDivider(),
                  _buildPaymentOption('Apple Pay', Icons.apple),
                  _buildDivider(),
                  _buildPaymentOption('Paypal', Icons.account_balance_wallet), 
                  _buildDivider(),
                  _buildPaymentOption('Google Pay', Icons.g_mobiledata), 
                  const Spacer(),
                  SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                      onPressed: () => context.push(AppRoutes.addCard),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color(0xFFE96322),
                        padding: const EdgeInsets.symmetric(vertical: 14),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15),
                        ),
                      ),
                      child: const Text(
                        'Add New Card',
                        style: TextStyle(
                          fontFamily: 'LeagueSpartan',
                          fontWeight: FontWeight.w500,
                          fontSize: 16,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildPaymentOption(String label, IconData icon) {
    return InkWell(
      onTap: () {
        setState(() {
          selectedMethod = label;
        });
      },
      child: Row(
        children: [
          Icon(
            icon,
            color: const Color(0xFFE96322),
            size: 32, // bigger icons
          ),
          const SizedBox(width: 12),
          Expanded(
            child: Text(
              label,
              style: const TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w500,
                color: Color(0xFF391713),
              ),
            ),
          ),
          Radio<String>(
            value: label,
            groupValue: selectedMethod,
            activeColor: const Color(0xFFE96322),
            onChanged: (value) {
              setState(() {
                selectedMethod = value!;
              });
            },
          ),
        ],
      ),
    );
  }

  Widget _buildDivider() {
    return const Divider(
      color: Color(0xFFFFD8C7),
      thickness: 1,
      height: 24,
    );
  }
}
