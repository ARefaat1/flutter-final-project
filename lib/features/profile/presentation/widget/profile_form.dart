import 'package:flutter/material.dart';

class ProfileForm extends StatelessWidget {
  final TextEditingController fullNameController;
  final TextEditingController dobController;
  final TextEditingController emailController;
  final TextEditingController phoneController;

  const ProfileForm({
    super.key,
    required this.fullNameController,
    required this.dobController,
    required this.emailController,
    required this.phoneController,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        _buildInputField(label: 'Full Name', controller: fullNameController),
        _buildInputField(label: 'Date of Birth', controller: dobController),
        _buildInputField(label: 'Email', controller: emailController),
        _buildInputField(label: 'Phone Number', controller: phoneController),
      ],
    );
  }

  Widget _buildInputField({
    required String label,
    required TextEditingController controller,
  }) {
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
              fillColor: Color(0xFFF3E9B5),
              contentPadding:
                  const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(12),
                borderSide: BorderSide.none,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
