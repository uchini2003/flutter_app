import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import '../../core/values/colors.dart';
import '../../core/values/text_styles.dart';

class CategoryList extends HookWidget {
  const CategoryList({super.key});

  @override
  Widget build(BuildContext context) {
    final selectedIndex = useState(0);
    
    final categories = [
      {'name': 'All', 'icon': Icons.grid_view_rounded},
      {'name': 'Groceries', 'icon': Icons.shopping_basket},
      {'name': 'Electronics', 'icon': Icons.devices},
      {'name': 'Fashion', 'icon': Icons.checkroom},
      {'name': 'Beauty', 'icon': Icons.spa},
      {'name': 'Home', 'icon': Icons.home},
    ];

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Categories',
          style: sanFranciscoSemiBold.copyWith(
            fontSize: 18,
          ),
        ),
        const SizedBox(height: 10),
        SizedBox(
          height: 100,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: categories.length,
            itemBuilder: (context, index) {
              return GestureDetector(
                onTap: () {
                  selectedIndex.value = index;
                },
                child: Container(
                  width: 80,
                  margin: const EdgeInsets.only(right: 10),
                  child: Column(
                    children: [
                      Container(
                        width: 60,
                        height: 60,
                        decoration: BoxDecoration(
                          color: selectedIndex.value == index 
                              ? AppColors.primaryGreen 
                              : AppColors.containerWhite,
                          borderRadius: BorderRadius.circular(10),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.1),
                              spreadRadius: 1,
                              blurRadius: 3,
                              offset: const Offset(0, 1),
                            ),
                          ],
                        ),
                        child: Icon(
                          categories[index]['icon'] as IconData,
                          color: selectedIndex.value == index
                              ? AppColors.white
                              : AppColors.textGrey,
                        ),
                      ),
                      const SizedBox(height: 5),
                      Text(
                        categories[index]['name'] as String,
                        style: sanFranciscoRegular.copyWith(
                          fontSize: 12,
                          color: selectedIndex.value == index
                              ? AppColors.primaryGreen
                              : AppColors.textGrey,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}