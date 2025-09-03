import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:flutter_final_project/core/utils/app_textstyles.dart';
import 'package:flutter_final_project/core/widget/custom_bottom_container.dart';
import 'package:flutter_final_project/core/widget/custum_appbar.dart';
import 'package:flutter_final_project/core/router/app_routes.dart';
import 'package:flutter_final_project/core/utils/app_colors.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          CustumAppbar(
            title: 'Settings',
            titleTextStyle: AppTextstyles.styleauth.copyWith(
              color: Colors.white, 
              fontWeight: FontWeight.bold, 
            ),
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
                  const SizedBox(height: 8),
                  const Text(
                    'App Settings',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                      color: Color(0xFF391713),
                    ),
                  ),
                  const SizedBox(height: 20),

                  // Notification setting
                  _buildSettingsTile(
                    context,
                    icon: Icons.notifications_outlined,
                    label: 'Notification Settings',
                    route: AppRoutes.notificationSettings,
                  ),
                  const SizedBox(height: 12),

                  // Password setting
                  _buildSettingsTile(
                    context,
                    icon: Icons.lock_outline,
                    label: 'Password Settings',
                    route: AppRoutes.passwordSettings,
                  ),
                  const SizedBox(height: 12),

                  // Delete account 
                  _buildSettingsTile(
                    context,
                    icon: Icons.delete_outline,
                    label: 'Delete Account',
                    route: AppRoutes.deleteAccount,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildSettingsTile(
    BuildContext context, {
    required IconData icon,
    required String label,
    required String route,
  }) {
    return InkWell(
      onTap: () => context.push(route),
      borderRadius: BorderRadius.circular(12),
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 14),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(12),
        ),
        child: Row(
          children: [
            const Icon(Icons.circle, size: 0), 
            Icon(icon, size: 30, color: Color(0xFFF28B65)), 
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
            const Icon(
              Icons.arrow_forward_ios,
              size: 16,
              color: Color(0xFFE96322), 
            ),
          ],
        ),
      ),
    );
  }
}
