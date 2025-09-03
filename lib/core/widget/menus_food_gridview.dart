import 'package:flutter/material.dart';
import 'package:flutter_final_project/core/utils/app_textstyles.dart';
import 'package:flutter_final_project/features/favorites/models/meal.dart';

class MenusFoodGridView extends StatelessWidget {
  final List<Meal> items; // meals list comes from outside

  const MenusFoodGridView({super.key, required this.items});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10.0),
      child: GridView.builder(
        itemCount: items.length, // ✅ show dynamic length
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          mainAxisSpacing: 10.0,
          crossAxisSpacing: 10.0,
          childAspectRatio: 0.75,
        
        ),
        itemBuilder: (context, index) {
          final meal = items[index]; // ✅ get current meal
          return Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20.0),
            ),
            elevation: 0.0,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Expanded(
                  child: ClipRRect(
                    borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(20.0),
                      topRight: Radius.circular(20.0),
                    ),
                    child: Image.asset(
                      meal.imageUrl!,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(meal.title!, style: AppTextstyles.style16OrangeW500),
                      const SizedBox(height: 4.0),
                      Text(meal.description!, style: AppTextstyles.style12BlackW300),
                    ],
                  ),
                ),
              ],
            ),
          );
        },
      ),
      
    );
  }
}
