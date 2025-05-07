import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:kt_dart/kt.dart';

import '../../application/cart/cart_provider.dart';
import '../core/values/colors.dart';
import '../core/values/style_constants.dart';
import '../core/values/text_styles.dart';
import 'widgets/cart_item_card.dart';
import 'widgets/cart_total_section.dart';
import 'widgets/empty_cart.dart';

@RoutePage()
class PurchasesPage extends ConsumerWidget {
  const PurchasesPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final cartItems = ref.watch(
      cartStateProvider.select((state) => state.items),
    );

    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.primaryGreen,
        elevation: 0,
        title: Text(
          'Shopping Cart',
          style: sanFranciscoBold.copyWith(
            fontSize: 20,
            color: Colors.white,
          ),
        ),
        actions: [
          if (cartItems.isNotEmpty())
            IconButton(
              icon: const Icon(
                Icons.delete_outline,
                color: Colors.white,
              ),
              onPressed: () {
                // Show confirmation dialog
                showDialog(
                  context: context,
                  builder: (context) => AlertDialog(
                    title: Text(
                      'Clear Cart',
                      style: sanFranciscoSemiBold.copyWith(
                        fontSize: 18,
                      ),
                    ),
                    content: Text(
                      'Are you sure you want to remove all items from your cart?',
                      style: sanFranciscoRegular.copyWith(
                        fontSize: 14,
                      ),
                    ),
                    actions: [
                      TextButton(
                        child: Text(
                          'Cancel',
                          style: sanFranciscoMedium.copyWith(
                            color: AppColors.textGrey,
                          ),
                        ),
                        onPressed: () => Navigator.of(context).pop(),
                      ),
                      TextButton(
                        child: Text(
                          'Clear',
                          style: sanFranciscoMedium.copyWith(
                            color: Colors.red,
                          ),
                        ),
                        onPressed: () {
                          ref.read(cartStateProvider.notifier).clearCart();
                          Navigator.of(context).pop();
                        },
                      ),
                    ],
                  ),
                );
              },
            ),
        ],
      ),
      body: cartItems.isEmpty()
          ? const EmptyCart()
          : Column(
              children: [
                // Cart Items List
                Expanded(
                  child: ListView.builder(
                    padding: const EdgeInsets.all(AppPaddings.innerPadding),
                    itemCount: cartItems.size,
                    itemBuilder: (context, index) {
                      final item = cartItems[index];
                      return CartItemCard(item: item);
                    },
                  ),
                ),
                // Cart Total and Checkout Section
                const CartTotalSection(),
              ],
            ),
    );
  }
}