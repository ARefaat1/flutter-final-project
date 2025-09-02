import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../../../../core/router/app_routes.dart';


class ProfileMenuScreen extends StatelessWidget {
  const ProfileMenuScreen({super.key});

  @override
  Widget build(BuildContext context) {
    const String userName = 'John Smith';
    const String userEmail = 'john@example.com';

    return Scaffold(
      backgroundColor: const Color(0xFFE95322), // Figma orange
      appBar: AppBar(
        backgroundColor: const Color(0xFFE95322),
        title: const Text('Profile'),
        centerTitle: true,
        elevation: 0,
      ),
      body: SafeArea(
        child: ListView(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 24),
          children: [
            _ProfileHeader(name: userName, email: userEmail),
            const SizedBox(height: 28),

            _MenuTile(
              icon: Icons.shopping_bag_outlined,
              label: 'My Orders',
              onTap: () => context.push(AppRoutes.myOrders),
            ),
            const Divider(color: Colors.white24, thickness: 1),

            _MenuTile(
              icon: Icons.person_outline,
              label: 'My Profile',
              onTap: () => context.push(AppRoutes.myProfile),
            ),
            const Divider(color: Colors.white24, thickness: 1),

            _MenuTile(
              icon: Icons.location_on_outlined,
              label: 'Delivery Address',
              onTap: () => context.push(AppRoutes.addresses),
            ),
            const Divider(color: Colors.white24, thickness: 1),

            _MenuTile(
              icon: Icons.payment_outlined,
              label: 'Payment Methods',
              onTap: () => context.push(AppRoutes.payments),
            ),
            const Divider(color: Colors.white24, thickness: 1),

            _MenuTile(
              icon: Icons.contact_support_outlined,
              label: 'Contact Us',
              onTap: () => context.push(AppRoutes.contactUs),
            ),
            const Divider(color: Colors.white24, thickness: 1),

            _MenuTile(
              icon: Icons.help_outline,
              label: 'Help & FAQs',
              onTap: () => context.push(AppRoutes.helpFaqs),
            ),
            const Divider(color: Colors.white24, thickness: 1),

            _MenuTile(
              icon: Icons.settings_outlined,
              label: 'Settings',
              onTap: () => context.push(AppRoutes.settings),
            ),
            const Divider(color: Colors.white24, thickness: 1),

            const SizedBox(height: 20),
            const Divider(color: Colors.white54),
            const SizedBox(height: 8),

            _MenuTile(
              icon: Icons.logout,
              label: 'Log Out',
              onTap: () async {
                final shouldLogout = await showDialog<bool>(
                  context: context,
                  builder: (_) => AlertDialog(
                    title: const Text('Logout'),
                    content: const Text('Are you sure you want to log out?'),
                    actions: [
                      TextButton(
                        onPressed: () => Navigator.pop(_, false),
                        child: const Text('Cancel'),
                      ),
                      ElevatedButton(
                        onPressed: () => Navigator.pop(_, true),
                        child: const Text('Logout'),
                      ),
                    ],
                  ),
                );
                if (shouldLogout == true) {
                  context.go(AppRoutes.login);
                }
              },
            ),
            const SizedBox(height: 24),
          ],
        ),
      ),
    );
  }
}

class _ProfileHeader extends StatelessWidget {
  final String name;
  final String email;
  const _ProfileHeader({required this.name, required this.email});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const CircleAvatar(
          radius: 34,
          backgroundColor: Colors.white,
          child: Icon(Icons.person, size: 36, color: Colors.grey),
        ),
        const SizedBox(width: 12),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(name,
                  style: const TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.w600)),
              const SizedBox(height: 6),
              Text(email,
                  style: const TextStyle(
                      color: Colors.white70,
                      fontSize: 12)),
            ],
          ),
        ),
        IconButton(
          onPressed: () => context.push(AppRoutes.myProfile),
          icon: const Icon(Icons.edit_outlined, color: Colors.white),
          tooltip: 'Edit profile',
        )
      ],
    );
  }
}

class _MenuTile extends StatelessWidget {
  final IconData icon;
  final String label;
  final VoidCallback onTap;

  const _MenuTile({
    required this.icon,
    required this.label,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: InkWell(
        onTap: onTap,
        child: Row(
          children: [
            CircleAvatar(
              radius: 18,
              backgroundColor: Colors.white,
              child: Icon(icon, size: 20, color: const Color(0xFFE95322)),
            ),
            const SizedBox(width: 14),
            Expanded(
              child: Text(
                label,
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}