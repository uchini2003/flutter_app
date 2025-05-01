import 'package:flutter/material.dart';

import '../../core/values/text_styles.dart';

class CategoryCard extends StatelessWidget {
  final String title;
  final String imagePath;
  final Color color;
  final VoidCallback onTap;

  const CategoryCard({
    Key? key,
    required this.title,
    required this.imagePath,
    required this.color,
    required this.onTap, required IconData iconData,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(16),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
              flex: 2,
              child: Padding(
                padding: const EdgeInsets.only(top: 12),
                child: Image.asset(
                  imagePath,
                  fit: BoxFit.contain,
                ),
              ),
            ),
            Expanded(
              flex: 1,
              child: Center(
                child: Text(
                  title,
                  style: sanFranciscoSemiBold.copyWith(fontSize: 16),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}