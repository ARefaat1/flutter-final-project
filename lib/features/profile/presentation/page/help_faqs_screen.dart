/*import 'package:flutter/material.dart';
import 'package:flutter_final_project/core/utils/app_colors.dart';
import 'package:flutter_final_project/core/utils/app_textstyles.dart';
import 'package:flutter_final_project/core/widget/custom_bottom_container.dart';
import 'package:flutter_final_project/core/widget/custum_appbar.dart';


class HelpFaqsScreen extends StatefulWidget {
  const HelpFaqsScreen({super.key});

  @override
  State<HelpFaqsScreen> createState() => _HelpFaqsScreenState();
}

class _HelpFaqsScreenState extends State<HelpFaqsScreen>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  final List<String> faqs = [
    "Lorem ipsum dolor sit amet?",
    "Lorem ipsum dolor sit amet?",
    "Lorem ipsum dolor sit amet?",
    "Lorem ipsum dolor sit amet?",
  ];

  final String answerText =
      "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent pellentesque, justo nec commodo efficitur, nisi sapien dignissim orci, a congue arcu diam. Aenean in sagittis mi.";

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 4, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          CustumAppbar(
            title: "Help & FAQs – How Can We Help You?",
            titleTextStyle: AppTextstyles.styleauth,
            centertitle: true,
          ),
          CustomBottomContainer(
            width: double.infinity,
            height: 700,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Tabs
                TabBar(
                  controller: _tabController,
                  labelColor: AppColors.orangecolor,
                  unselectedLabelColor: AppColors.blackfont,
                  indicatorColor: AppColors.orangecolor,
                  tabs: const [
                    Tab(text: "FAQ"),
                    Tab(text: "General"),
                    Tab(text: "Account"),
                    Tab(text: "Services"),
                  ],
                ),
                const SizedBox(height: 20),

                // Tab content
                Expanded(
                  child: TabBarView(
                    controller: _tabController,
                    children: [
                      _buildFaqList(), // FAQ tab
                      _buildFaqList(), // General tab
                      _buildFaqList(), // Account tab
                      _buildFaqList(), // Services tab
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  /// FAQ list builder
  Widget _buildFaqList() {
    return ListView.separated(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
      itemCount: faqs.length,
      separatorBuilder: (_, __) =>
          const Divider(color: AppColors.linecolor, thickness: 1),
      itemBuilder: (context, index) {
        return ExpansionTile(
          tilePadding: const EdgeInsets.symmetric(horizontal: 8),
          title: Text(
            faqs[index],
            style: const TextStyle(
              fontFamily: "LeagueSpartan",
              fontSize: 16,
              fontWeight: FontWeight.w400,
              color: AppColors.blackfont,
            ),
          ),
          trailing: const Icon(
            Icons.arrow_drop_down,
            color: AppColors.orangecolor,
          ),
          children: [
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Text(
                answerText,
                style: const TextStyle(
                  fontFamily: "LeagueSpartan",
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                  color: AppColors.grey,
                ),
              ),
            ),
          ],
        );
      },
    );
  }
}
*/
import 'package:flutter/material.dart';
import 'package:flutter_final_project/core/utils/app_colors.dart';
import 'package:flutter_final_project/core/widget/custum_appbar.dart';
import 'package:flutter_final_project/core/widget/custom_bottom_container.dart';

class HelpFaqsScreen extends StatelessWidget {
  const HelpFaqsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final List<String> faqs = [
      "Lorem ipsum dolor sit amet?",
      "Lorem ipsum dolor sit amet?",
      "Lorem ipsum dolor sit amet?",
      "Lorem ipsum dolor sit amet?",
    ];

    final String answerText =
        "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent pellentesque, justo nec commodo efficitur, nisi sapien dignissim orci, a congue arcu diam. Aenean in sagittis mi.";

    return Scaffold(
      body: Stack(
        children: [
          const CustumAppbar(
            title: "Help & FAQs",
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

                  // FAQs & Contact Us buttons
                  Row(
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
                  const SizedBox(height: 20),

                  // Smaller category buttons
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                        child: OutlinedButton(
                          onPressed: () {},
                          style: OutlinedButton.styleFrom(
                            foregroundColor: AppColors.blackfont,
                            side: const BorderSide(color: AppColors.orangecolor),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8),
                            ),
                            padding: const EdgeInsets.symmetric(vertical: 10),
                          ),
                          child: const Text("General"),
                        ),
                      ),
                      const SizedBox(width: 8),
                      Expanded(
                        child: OutlinedButton(
                          onPressed: () {},
                          style: OutlinedButton.styleFrom(
                            foregroundColor: AppColors.blackfont,
                            side: const BorderSide(color: AppColors.orangecolor),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8),
                            ),
                            padding: const EdgeInsets.symmetric(vertical: 10),
                          ),
                          child: const Text("Account"),
                        ),
                      ),
                      const SizedBox(width: 8),
                      Expanded(
                        child: OutlinedButton(
                          onPressed: () {},
                          style: OutlinedButton.styleFrom(
                            foregroundColor: AppColors.blackfont,
                            side: const BorderSide(color: AppColors.orangecolor),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8),
                            ),
                            padding: const EdgeInsets.symmetric(vertical: 10),
                          ),
                          child: const Text("Services"),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 20),

                  // Search bar
                  TextField(
                    decoration: InputDecoration(
                      hintText: "Search",
                      hintStyle: const TextStyle(color: AppColors.grey),
                      prefixIcon:
                          const Icon(Icons.search, color: AppColors.grey),
                      filled: true,
                      fillColor: AppColors.yellow2,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12),
                        borderSide: BorderSide.none,
                      ),
                    ),
                  ),
                  const SizedBox(height: 20),

                  // FAQ List (all expanded)
                  Expanded(
                    child: ListView.separated(
                      itemCount: faqs.length,
                      separatorBuilder: (context, index) =>
                          const SizedBox(height: 16),
                      itemBuilder: (context, index) {
                        return Container(
                          padding: const EdgeInsets.all(14),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(12),
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  Expanded(
                                    child: Text(
                                      faqs[index],
                                      style: const TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.w600,
                                        color: AppColors.blackfont,
                                      ),
                                    ),
                                  ),
                                  const Icon(
                                    Icons.arrow_forward_ios,
                                    size: 16,
                                    color: AppColors.orangecolor,
                                  ),
                                ],
                              ),
                              const SizedBox(height: 8),
                              Text(
                                answerText,
                                style: const TextStyle(
                                  fontSize: 14,
                                  color: AppColors.grey,
                                ),
                              ),
                            ],
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
