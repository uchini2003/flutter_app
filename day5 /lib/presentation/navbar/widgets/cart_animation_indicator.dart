import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../application/cart/cart_provider.dart';
import '../../core/values/colors.dart';

class CartAnimationIndicator extends ConsumerWidget {
  const CartAnimationIndicator({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final showAnimation = ref.watch(
      cartStateProvider.select((state) => state.showAddAnimation),
    );
    
    return AnimatedContainer(
      duration: const Duration(milliseconds: 300),
      height: showAnimation ? 5 : 0,
      color: AppColors.primaryGreen,
    );
  }
}