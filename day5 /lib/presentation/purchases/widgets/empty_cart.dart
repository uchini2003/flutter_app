import 'package:flutter/material.dart';
import 'package:auto_route/auto_route.dart';

import '../../core/values/colors.dart';
import '../../core/values/text_styles.dart';
import '../../routes/app_router.gr.dart';

class EmptyCart extends StatelessWidget {
  const EmptyCart({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            Icons.shopping_cart_outlined,
            size: 100,
            color: AppColors.secondaryGrey.withOpacity(0.5),
          ),
          const SizedBox(height: 20),
          Text(
            'Your cart is empty',
            style: sanFranciscoMedium.copyWith(
              fontSize: 20,
              color: AppColors.textGrey,
            ),
          ),
          const SizedBox(height: 10),
          Text(
            'Add items to your cart to start shopping',
            style: sanFranciscoRegular.copyWith(
              fontSize: 14,
              color: AppColors.textDarkerGrey,
            ),
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 30),
          GestureDetector(
            onTap: () {
              context.router.navigate(const ExploreRoute());
            },
            child: Container(
              padding: const EdgeInsets.symmetric(
                horizontal: 30,
                vertical: 12,
              ),
              decoration: BoxDecoration(
                color: AppColors.primaryGreen,
                borderRadius: BorderRadius.circular(25),
              ),
              child: Text(
                'Browse Products',
                style: sanFranciscoMedium.copyWith(
                  fontSize: 16,
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}