import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:auto_route/auto_route.dart';

import '../../../application/cart/cart_provider.dart';
import '../../core/values/colors.dart';
import '../../core/values/text_styles.dart';
import '../../routes/app_router.gr.dart';

class CartBadge extends ConsumerWidget {
  const CartBadge({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final itemCount = ref.watch(
      cartStateProvider.select((state) => state.items.size),
    );

    return Stack(
      children: [
        IconButton(
          icon: const Icon(
            Icons.shopping_cart_outlined,
            color: Colors.white,
          ),
          onPressed: () {
            context.router.navigate(const PurchasesRoute());
          },
        ),
        if (itemCount > 0)
          Positioned(
            right: 5,
            top: 5,
            child: Container(
              padding: const EdgeInsets.all(4),
              decoration: const BoxDecoration(
                color: Colors.red,
                shape: BoxShape.circle,
              ),
              child: Text(
                itemCount.toString(),
                style: sanFranciscoRegular.copyWith(
                  color: Colors.white,
                  fontSize: 10,
                ),
              ),
            ),
          ),
      ],
    );
  }
}