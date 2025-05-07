import 'package:flutter/material.dart';

import '../../../domain/category/category.dart';
import '../../core/values/colors.dart';
import '../../core/values/text_styles.dart';

class CategoryItem extends StatelessWidget {
  final Category category;
  
  const CategoryItem({
    super.key,
    required this.category,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(right: 10),
      child: Column(
        children: [
          Container(
            width: 70,
            height: 70,
            decoration: BoxDecoration(
              color: AppColors.primaryGreen.withOpacity(0.1),
              shape: BoxShape.circle,
              border: Border.all(
                color: AppColors.primaryGreen,
                width: 1,
              ),
            ),
            child: ClipOval(
              child: Image.network(
                category.imageUrl,
                fit: BoxFit.cover,
              ),
            ),
          ),
          const SizedBox(height: 8),
          Text(
            category.name,
            style: sanFranciscoRegular.copyWith(
              fontSize: 12,
              color: AppColors.textGrey,
            ),
          ),
        ],
      ),
    );
  }
}