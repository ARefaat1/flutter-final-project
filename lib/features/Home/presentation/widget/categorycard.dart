import 'package:flutter/material.dart';
import 'package:flutter_final_project/core/utils/app_colors.dart';
import 'package:flutter_final_project/features/Home/data/model/Categorylist_model.dart';

class CategoryCard extends StatelessWidget {
  const CategoryCard({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 90,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        itemCount: Categorylist.categorylist.length,
        separatorBuilder: (BuildContext context, int index) {
          return const SizedBox(width: 15);
        },
        itemBuilder: (BuildContext context, int index) {
          final item = Categorylist.categorylist[index];
          return Column(
            children: [
              Container(
                width: 60,
                height: 60,
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  color: AppColors.yellow2,
                ),
                child: Center(
                  child: Image.asset(
                    item.image,
                    width: 40,
                    height: 40,
                    fit: BoxFit.contain,
                  ),
                ),
              ),
              const SizedBox(height: 5),
              Text(
                item.text,
                style: TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.w500,
                  color: AppColors.blackfont,
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
