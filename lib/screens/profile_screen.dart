import 'package:flutter/material.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
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
      backgroundColor: const Color(0xFFFFF3D9),
      body: SafeArea(
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(height: 32),
              const Text(
                'My profile',
                style: TextStyle(
                  fontFamily: 'TitilliumWeb',
                  fontWeight: FontWeight.w600,
                  fontSize: 24,
                  color: Color(0xFF5C6588),
                ),
              ),
              const SizedBox(height: 24),
              _buildProfileImage(),
              const SizedBox(height: 32),
              _buildInputField(label: 'Full Name', controller: fullNameController),
              _buildInputField(label: 'Date of Birth', controller: dobController),
              _buildInputField(label: 'Email', controller: emailController),
              _buildInputField(label: 'Phone Number', controller: phoneController),
              const SizedBox(height: 40),
              _buildUpdateButton(),
              const SizedBox(height: 24),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildProfileImage() {
    return CircleAvatar(
      radius: 64,
      backgroundColor: Colors.white,
      child: Icon(Icons.person, size: 64, color: Colors.grey),
    );
  }

  Widget _buildInputField({required String label, required TextEditingController controller}) {
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
              fillColor: Colors.white,
              contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
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

  Widget _buildUpdateButton() {
    return SizedBox(
      width: double.infinity,
      child: ElevatedButton(
        onPressed: () {
          print('User Info:');
          print('Name: ${fullNameController.text}');
          print('DOB: ${dobController.text}');
          print('Email: ${emailController.text}');
          print('Phone: ${phoneController.text}');
        },
        style: ElevatedButton.styleFrom(
          backgroundColor: const Color(0xFFE96322),
          padding: const EdgeInsets.symmetric(vertical: 14),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15),
          ),
        ),
        child: const Text(
          'Update Profile',
          style: TextStyle(
            fontFamily: 'LeagueSpartan',
            fontWeight: FontWeight.w500,
            fontSize: 16,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
