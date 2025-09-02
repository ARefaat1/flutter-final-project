import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../../../../core/router/app_routes.dart';


class SidebarMenu extends StatelessWidget {
  const SidebarMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: SafeArea(
        child: Container(
          color: const Color(0xFFE95322),
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 28),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const CircleAvatar(radius: 36, backgroundColor: Colors.white, child: Icon(Icons.person, color: Color(0xFFE95322), size: 38)),
                const SizedBox(height: 14),
                const Text('John Smith', style: TextStyle(fontSize: 22, fontWeight: FontWeight.w600, color: Colors.white)),
                const SizedBox(height: 4),
                const Text('john@example.com', style: TextStyle(fontSize: 12, color: Colors.white70)),
                const SizedBox(height: 24),

                _item(context, icon: Icons.home_outlined, label: 'My Orders', route: AppRoutes.myOrders),
                _item(context, icon: Icons.person_outline, label: 'My Profile', route: AppRoutes.myProfile),
                _item(context, icon: Icons.location_on_outlined, label: 'Delivery Address', route: AppRoutes.addresses),
                _item(context, icon: Icons.payment_outlined, label: 'Payment Methods', route: AppRoutes.payments),
                _item(context, icon: Icons.contact_support_outlined, label: 'Contact Us', route: AppRoutes.contactUs),
                _item(context, icon: Icons.help_outline, label: 'Help & FAQs', route: AppRoutes.helpFaqs),
                _item(context, icon: Icons.settings_outlined, label: 'Settings', route: AppRoutes.settings),

                const SizedBox(height: 20),
                const Divider(color: Colors.white54),
                const SizedBox(height: 8),
                _item(context, icon: Icons.logout, label: 'Log Out', route: AppRoutes.logout, isDestructive: true),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _item(BuildContext context, {
  required IconData icon,
  required String label,
  required String route,
  bool isDestructive = false,
}) {
  final textColor = isDestructive ? Colors.redAccent : Colors.white;
  final iconColor = isDestructive ? Colors.redAccent : Theme.of(context).colorScheme.primary;

  return InkWell(
    onTap: () {
      Navigator.pop(context); // close drawer
      if (route == AppRoutes.logout) {
        context.go(AppRoutes.login);
      } else {
        context.push(route);
      }
    },
    child: Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Row(
        children: [
          CircleAvatar(
            radius: 18,
            backgroundColor: Colors.white,
            child: Icon(icon, size: 20, color: iconColor),
          ),
          const SizedBox(width: 14),
          Expanded(
            child: Text(
              label,
              style: TextStyle(
                color: textColor,
                fontSize: 16,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
        ],
      ),
    ),
  );
}}