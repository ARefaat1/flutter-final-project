import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SidebarScreen extends StatelessWidget {
  const SidebarScreen({super.key});

  @override
  Widget build(BuildContext context) {
    print('SidebarScreen is building'); // ✅ Debug print
    return Scaffold(
      appBar: AppBar(
        title: const Text('Sidebar Example'),
        backgroundColor: const Color(0xFFFF4A3C),
      ),
      drawer: const SidebarMenu(),
      body: const Center(
        child: Text(
          'SidebarScreen loaded ✅',
          style: TextStyle(fontSize: 18),
        ),
      ),
    );
  }
}

class SidebarMenu extends StatelessWidget {
  const SidebarMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: SafeArea(
        child: Container(
          color: const Color(0xFFFF4A3C),
          padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 40),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CircleAvatar(
                  radius: 40,
                  backgroundColor: Colors.white,
                  child: Icon(Icons.person, size: 40, color: Colors.grey),
                ),
                const SizedBox(height: 16),
                const Text(
                  'John Smith',
                  style: TextStyle(
                    fontSize: 32,
                    fontWeight: FontWeight.w500,
                    color: Color(0xFFF8F8F8),
                    fontFamily: 'LeagueSpartan',
                  ),
                ),
                const SizedBox(height: 4),
                const Text(
                  'LoremIpsum@lorem.com',
                  style: TextStyle(
                    fontSize: 11,
                    fontWeight: FontWeight.w500,
                    color: Color(0xFF3F3E3E),
                    fontFamily: 'LeagueSpartan',
                  ),
                ),
                const SizedBox(height: 32),
                _buildMenuItem(context, Icons.home, 'Home', '/home'),
                _buildMenuItem(context, Icons.person, 'My Profile', '/profile'),
                _buildMenuItem(context, Icons.location_on, 'Delivery Address', '/address'),
                _buildMenuItem(context, Icons.payment, 'Payment Methods', '/payment'),
                _buildMenuItem(context, Icons.shopping_bag, 'My Orders', '/orders'),
                _buildMenuItem(context, Icons.contact_support, 'Contact Us', '/contact'),
                _buildMenuItem(context, Icons.help_outline, 'Help & FAQs', '/help'),
                _buildMenuItem(context, Icons.settings, 'Settings', '/settings'),
                _buildMenuItem(context, Icons.logout, 'Log Out', '/logout', isDestructive: true),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildMenuItem(
    BuildContext context,
    IconData icon,
    String title,
    String route, {
    bool isDestructive = false,
    String? badge,
  }) {
    return GestureDetector(
      onTap: () {
        Navigator.pop(context); // Close drawer
        context.go(route);      // Navigate using go_router
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 12),
        child: Row(
          children: [
            Icon(icon, color: isDestructive ? Colors.red : Colors.white),
            const SizedBox(width: 16),
            Expanded(
              child: Text(
                title,
                style: TextStyle(
                  color: isDestructive ? Colors.red : Colors.white,
                  fontSize: 16,
                  fontFamily: 'LeagueSpartan',
                ),
              ),
            ),
            if (badge != null)
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Text(
                  badge,
                  style: const TextStyle(
                    color: Colors.black,
                    fontSize: 12,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'LeagueSpartan',
                  ),
                ),
              ),
          ],
        ),
      ),
    );
  }
}