
import 'package:flutter/material.dart';
import 'package:flutter_final_project/core/utils/app_textstyles.dart';
import 'package:flutter_final_project/core/widget/custom_bottom_container.dart';
import 'package:flutter_final_project/core/widget/custum_appbar.dart';
import 'package:flutter_final_project/core/utils/app_colors.dart';

class AddCardScreen extends StatefulWidget {
  const AddCardScreen({super.key});

  @override
  State<AddCardScreen> createState() => _AddCardScreenState();
}

class _AddCardScreenState extends State<AddCardScreen> {
  final TextEditingController nameController = TextEditingController();
  final TextEditingController numberController = TextEditingController();
  final TextEditingController expiryController = TextEditingController();
  final TextEditingController cvvController = TextEditingController();

  @override
  void initState() {
    super.initState();
    nameController.addListener(() => setState(() {}));
    numberController.addListener(() => setState(() {}));
    expiryController.addListener(() => setState(() {}));
    cvvController.addListener(() => setState(() {}));
  }

  @override
  void dispose() {
    nameController.dispose();
    numberController.dispose();
    expiryController.dispose();
    cvvController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          
          CustumAppbar(
            title: 'Add Card',
            titleTextStyle: AppTextstyles.styleauth,
            centertitle: true,
          ),

          
          CustomBottomContainer(
            color: AppColors.white,
            width: double.infinity,
            height: 700,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 30),
              child: SingleChildScrollView(
                physics: const BouncingScrollPhysics(),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const SizedBox(height: 20),

                   
                    _buildCardPreview(),
                    const SizedBox(height: 20),

                    
                    _buildInputField('Card Holder Name', nameController),
                    _buildInputField('Card Number', numberController),

                    
                    Row(
                      children: [
                        Expanded(
                            child: _buildInputField('Expiry Date', expiryController)),
                        const SizedBox(width: 12),
                        Expanded(child: _buildInputField('CVV', cvvController)),
                      ],
                    ),

                    const SizedBox(height: 30),

                    
                    SizedBox(
                      width: double.infinity,
                      child: ElevatedButton(
                        onPressed: () {
                          print("Card Info:");
                          print("Name: ${nameController.text}");
                          print("Number: ${numberController.text}");
                          print("Expiry: ${expiryController.text}");
                          print("CVV: ${cvvController.text}");

                          Navigator.pop(context);
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: const Color(0xFFE96322),
                          padding: const EdgeInsets.symmetric(vertical: 14),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15),
                          ),
                        ),
                        child: const Text(
                          'Save Card',
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
          ),
        ],
      ),
    );
  }

  
  Widget _buildCardPreview() {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: const Color(0xFFF3E9B5),
        borderRadius: BorderRadius.circular(16),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            numberController.text.isEmpty
                ? '0000 0000 0000 0000'
                : numberController.text,
            style: const TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
          ),
          const SizedBox(height: 8),
          Text(
            nameController.text.isEmpty ? 'Card Holder' : nameController.text,
            style: const TextStyle(fontSize: 16),
          ),
          const SizedBox(height: 4),
          Text(
            expiryController.text.isEmpty ? 'MM/YY' : expiryController.text,
            style: const TextStyle(fontSize: 16),
          ),
        ],
      ),
    );
  }

  
  Widget _buildInputField(String label, TextEditingController controller) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            label,
            style: const TextStyle(
              fontFamily: 'LeagueSpartan',
              fontWeight: FontWeight.w500,
              fontSize: 14,
              color: Color(0xFF391713),
            ),
          ),
          const SizedBox(height: 6),
          TextFormField(
            controller: controller,
            decoration: InputDecoration(
              filled: true,
              fillColor: const Color(0xFFF3E9B5),
              contentPadding:
                  const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(12),
                borderSide: BorderSide.none, // no border
              ),
            ),
          ),
        ],
      ),
    );
  }
}
