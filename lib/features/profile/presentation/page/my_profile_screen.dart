import 'package:flutter/material.dart';
import 'package:flutter_final_project/core/utils/app_strings.dart';
import 'package:flutter_final_project/core/utils/app_textstyles.dart';
import 'package:flutter_final_project/core/widget/custom_bottom_container.dart';
import 'package:flutter_final_project/core/widget/custum_appbar.dart';
import 'package:flutter_final_project/features/profile/presentation/widget/profile_form.dart';

class MyProfileScreen extends StatefulWidget {
  const MyProfileScreen({super.key});

  @override
  State<MyProfileScreen> createState() => _MyProfileScreenState();
}

class _MyProfileScreenState extends State<MyProfileScreen> {
  final TextEditingController fullNameController = TextEditingController();
  final TextEditingController dobController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController phoneController = TextEditingController();

  @override
  void dispose() {
    fullNameController.dispose();
    dobController.dispose();
    emailController.dispose();
    phoneController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          /// Custom AppBar
          CustumAppbar(
            title: AppStrings.myProfile,
            titleTextStyle: AppTextstyles.styleauth,
            centertitle: true,
          ),

          /// Bottom Container with form
          CustomBottomContainer(
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

                    /// Profile Image
                    CircleAvatar(
                      radius: 50,
                      backgroundColor: Colors.grey[200],
                      child: const Icon(Icons.person,
                          size: 60, color: Colors.grey),
                    ),
                    const SizedBox(height: 20),

                    /// Profile Form
                    ProfileForm(
                      fullNameController: fullNameController,
                      dobController: dobController,
                      emailController: emailController,
                      phoneController: phoneController,
                    ),

                    const SizedBox(height: 30),

                    /// Update button
                    SizedBox(
                      width: double.infinity,
                      child: ElevatedButton(
                        onPressed: () {
                          print("User Info:");
                          print("Name: ${fullNameController.text}");
                          print("DOB: ${dobController.text}");
                          print("Email: ${emailController.text}");
                          print("Phone: ${phoneController.text}");

                          Navigator.pop(context); // go back after update
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: const Color(0xFFE96322),
                          padding: const EdgeInsets.symmetric(vertical: 14),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15),
                          ),
                        ),
                        child: const Text(
                          AppStrings.updateProfile,
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
}
