/*import 'package:flutter/material.dart';
import 'package:flutter_final_project/core/utils/app_textstyles.dart';
import 'package:flutter_final_project/core/widget/custom_bottom_container.dart';
import 'package:flutter_final_project/core/widget/custum_appbar.dart';
import 'package:flutter_final_project/core/utils/app_colors.dart';

class ContactUsScreen extends StatelessWidget {
  const ContactUsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final items = <_ContactItem>[
      _ContactItem(icon: Icons.support_agent, label: 'Customer Service'),
      _ContactItem(icon: Icons.language,      label: 'Website'),
      _ContactItem(icon: Icons.chat,          label: 'Whatsapp'),
      _ContactItem(icon: Icons.facebook,      label: 'Facebook'),
      _ContactItem(icon: Icons.camera_alt,    label: 'Instagram'),
    ];

    return Scaffold(
      body: Stack(
        children: [
          CustumAppbar(
            title: 'Contact Us',
            titleTextStyle: AppTextstyles.styleauth,
            centertitle: true,
          ),
          CustomBottomContainer(
            width: double.infinity,
            height: 700,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 30),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Sub-title line
                  const Text(
                    'How Can We Help You?',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                      color: Color(0xFF391713),
                    ),
                  ),
                  const SizedBox(height: 20),

                  // List
                  Expanded(
                    child: ListView.separated(
                      itemCount: items.length,
                      separatorBuilder: (_, __) => const Divider(
                        color: AppColors.linecolor,
                        thickness: 1,
                        height: 24,
                      ),
                      itemBuilder: (context, index) {
                        final item = items[index];
                        return InkWell(
                          borderRadius: BorderRadius.circular(12),
                          onTap: () {
                            ScaffoldMessenger.of(context).showSnackBar(
                              SnackBar(content: Text('${item.label} (coming soon)')),
                            );
                          },
                          child: Padding(
                            padding: const EdgeInsets.symmetric(vertical: 6),
                            child: Row(
                              children: [
                                Icon(item.icon, size: 28, color: AppColors.orangecolor),
                                const SizedBox(width: 12),
                                Expanded(
                                  child: Text(
                                    item.label,
                                    style: const TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w500,
                                      color: AppColors.blackfont,
                                    ),
                                  ),
                                ),
                                const Icon(Icons.keyboard_arrow_down,
                                    size: 22, color: AppColors.orangecolor),
                              ],
                            ),
                          ),
                        );
                      },
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
}

class _ContactItem {
  final IconData icon;
  final String label;
  const _ContactItem({required this.icon, required this.label});
}*/
import 'package:flutter/material.dart';
import 'package:flutter_final_project/core/utils/app_colors.dart';
import 'package:flutter_final_project/core/widget/custum_appbar.dart';
import 'package:flutter_final_project/core/widget/custom_bottom_container.dart';

class ContactUsScreen extends StatelessWidget {
  const ContactUsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final items = <_ContactItem>[
      _ContactItem(icon: Icons.support_agent, label: 'Customer Service'),
      _ContactItem(icon: Icons.language, label: 'Website'),
      _ContactItem(icon: Icons.chat, label: 'Whatsapp'),
      _ContactItem(icon: Icons.facebook, label: 'Facebook'),
      _ContactItem(icon: Icons.camera_alt, label: 'Instagram'),
    ];

    return Scaffold(
      body: Stack(
        children: [
          const CustumAppbar(
            title: "Contact Us",
            centertitle: true,
          ),
          CustomBottomContainer(
            width: double.infinity,
            height: 700,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 30),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const SizedBox(height: 10),
                  const Text(
                    "How Can We Help You?",
                    style: TextStyle(
                      color: AppColors.orangecolor,
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 20),

                  // Buttons side by side
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Expanded(
                        child: OutlinedButton(
                          onPressed: () {},
                          style: OutlinedButton.styleFrom(
                            foregroundColor: AppColors.orangecolor,
                            side: const BorderSide(color: AppColors.orangecolor),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(12),
                            ),
                            padding: const EdgeInsets.symmetric(vertical: 14),
                          ),
                          child: const Text("FAQs"),
                        ),
                      ),
                      const SizedBox(width: 12),
                      Expanded(
                        child: OutlinedButton(
                          onPressed: () {},
                          style: OutlinedButton.styleFrom(
                            foregroundColor: AppColors.orangecolor,
                            side: const BorderSide(color: AppColors.orangecolor),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(12),
                            ),
                            padding: const EdgeInsets.symmetric(vertical: 14),
                          ),
                          child: const Text("Contact Us"),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 30),

                  // Contact items (no orange dividers anymore)
                  ...items.map(
                    (e) => Padding(
                      padding: const EdgeInsets.only(bottom: 20),
                      child: _ContactTile(
                        icon: e.icon,
                        label: e.label,
                        onTap: () {},
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
}

class _ContactItem {
  final IconData icon;
  final String label;
  const _ContactItem({required this.icon, required this.label});
}

class _ContactTile extends StatelessWidget {
  final IconData icon;
  final String label;
  final VoidCallback onTap;

  const _ContactTile({
    required this.icon,
    required this.label,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      borderRadius: BorderRadius.circular(12),
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 14),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(12),
        ),
        child: Row(
          children: [
            Icon(icon, size: 30, color: AppColors.orangecolor),
            const SizedBox(width: 12),
            Expanded(
              child: Text(
                label,
                style: const TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                  color: AppColors.blackfont,
                ),
              ),
            ),
            const Icon(Icons.arrow_forward_ios,
                size: 16, color: AppColors.orangecolor),
          ],
        ),
      ),
    );
  }
}
