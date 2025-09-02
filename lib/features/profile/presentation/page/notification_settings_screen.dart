import 'package:flutter/material.dart';
import 'package:flutter_final_project/core/utils/app_textstyles.dart';
import 'package:flutter_final_project/core/widget/custom_bottom_container.dart';
import 'package:flutter_final_project/core/widget/custum_appbar.dart';
import 'package:flutter_final_project/core/utils/app_colors.dart';

class NotificationSettingsScreen extends StatefulWidget {
  const NotificationSettingsScreen({super.key});

  @override
  State<NotificationSettingsScreen> createState() => _NotificationSettingsScreenState();
}

class _NotificationSettingsScreenState extends State<NotificationSettingsScreen> {
  bool promoNotifications = true;
  bool orderUpdates = true;
  bool appNews = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          CustumAppbar(
            title: 'Notification Settings',
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
                children: [
                  const SizedBox(height: 8),
                  Container(
                    padding: const EdgeInsets.all(18),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(14),
                    ),
                    child: Column(
                      children: [
                        _buildSwitchRow('Promotional Notifications', promoNotifications, (v) => setState(() => promoNotifications = v)),
                        const Divider(color: Color(0xFFFFD8C7)),
                        _buildSwitchRow('Order Updates', orderUpdates, (v) => setState(() => orderUpdates = v)),
                        const Divider(color: Color(0xFFFFD8C7)),
                        _buildSwitchRow('App News & Tips', appNews, (v) => setState(() => appNews = v)),
                      ],
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

  Widget _buildSwitchRow(String label, bool value, ValueChanged<bool> onChanged) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Row(
        children: [
          Expanded(child: Text(label, style: const TextStyle(fontSize: 16, color: Color(0xFF391713)))),
          Switch(
            value: value,
            onChanged: onChanged,
            activeColor: const Color(0xFFF28B65),
          ),
        ],
      ),
    );
  }
}
