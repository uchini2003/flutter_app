import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../application/cart/cart_provider.dart';
import '../../../domain/cart/cart_item.dart';
import '../../core/values/colors.dart';
import '../../core/values/text_styles.dart';

class CartItemCard extends ConsumerWidget {
  final CartItem item;
  
  const CartItemCard({
    super.key,
    required this.item,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final product = item.product;
    final price = product.isDiscount 
        ? product.discountPrice 
        : product.price;
    final subtotal = price * item.quantity;

    return Container(
      margin: const EdgeInsets.only(bottom: 15),
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(
            color: AppColors.cardShadow,
            blurRadius: 3,
            offset: const Offset(0, 1),
          ),
        ],
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          // Product Image
          ClipRRect(
            borderRadius: BorderRadius.circular(8),
            child: Image.network(
              product.imageUrl,
              width: 80,
              height: 80,
              fit: BoxFit.cover,
            ),
          ),
          const SizedBox(width: 15),
          // Product Details
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  product.name,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: sanFranciscoMedium.copyWith(
                    fontSize: 16,
                  ),
                ),
                const SizedBox(height: 5),
                Text(
                  '\$${price.toStringAsFixed(2)} x ${item.quantity}',
                  style: sanFranciscoRegular.copyWith(
                    fontSize: 14,
                    color: AppColors.textDarkerGrey,
                  ),
                ),
                const SizedBox(height: 5),
                Text(
                  'Subtotal: \$${subtotal.toStringAsFixed(2)}',
                  style: sanFranciscoSemiBold.copyWith(
                    fontSize: 14,
                    color: AppColors.primaryGreen,
                  ),
                ),
              ],
            ),
          ),
          //Qty Controls
          Column(
            children: [
              //Remove item btn
              GestureDetector(
                onTap: () {
                  ref.read(cartStateProvider.notifier).removeFromCart(item.id);
                },
                child: Container(
                  padding: const EdgeInsets.all(4),
                  decoration: BoxDecoration(
                    color: Colors.red.shade100,
                    shape: BoxShape.circle,
                  ),
                  child: const Icon(
                    Icons.delete_outline,
                    color: Colors.red,
                    size: 20,
                  ),
                ),
              ),
              const SizedBox(height: 15),
              // Quantity Controls
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  // Decrement Button
                  GestureDetector(
                    onTap: () {
                      ref.read(cartStateProvider.notifier).decrementQuantity(item.id);
                    },
                    child: Container(
                      padding: const EdgeInsets.all(3),
                      decoration: BoxDecoration(
                        color: AppColors.containerWhite,
                        shape: BoxShape.circle,
                        border: Border.all(
                          color: AppColors.primaryGreen,
                        ),
                      ),
                      child: Icon(
                        Icons.remove,
                        color: AppColors.primaryGreen,
                        size: 18,
                      ),
                    ),
                  ),
                  // Quantity
                  Container(
                    margin: const EdgeInsets.symmetric(horizontal: 8),
                    child: Text(
                      '${item.quantity}',
                      style: sanFranciscoSemiBold.copyWith(
                        fontSize: 16,
                      ),
                    ),
                  ),
                  // Increment Button
                  GestureDetector(
                    onTap: () {
                      ref.read(cartStateProvider.notifier).incrementQuantity(item.id);
                    },
                    child: Container(
                      padding: const EdgeInsets.all(3),
                      decoration: BoxDecoration(
                        color: AppColors.primaryGreen,
                        shape: BoxShape.circle,
                      ),
                      child: const Icon(
                        Icons.add,
                        color: Colors.white,
                        size: 18,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}