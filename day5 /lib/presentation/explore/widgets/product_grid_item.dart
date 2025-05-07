import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../application/cart/cart_provider.dart';
import '../../../domain/product/product.dart';
import '../../core/values/colors.dart';
import '../../core/values/text_styles.dart';

class ProductGridItem extends ConsumerWidget {
  final Product product;
  
  const ProductGridItem({
    super.key,
    required this.product,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(
            color: AppColors.cardShadow,
            blurRadius: 5,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Product Image
          Stack(
            children: [
              ClipRRect(
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(10),
                  topRight: Radius.circular(10),
                ),
                child: Image.network(
                  product.imageUrl,
                  height: 120,
                  width: double.infinity,
                  fit: BoxFit.cover,
                ),
              ),
              if (product.isDiscount)
                Positioned(
                  top: 0,
                  left: 0,
                  child: Container(
                    padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 3),
                    decoration: BoxDecoration(
                      color: AppColors.primaryGreen,
                      borderRadius: const BorderRadius.only(
                        bottomRight: Radius.circular(10),
                      ),
                    ),
                    child: Text(
                      '${product.discountPercentage}% OFF',
                      style: sanFranciscoRegular.copyWith(
                        fontSize: 10,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              Positioned(
                top: 5,
                right: 5,
                child: GestureDetector(
                  onTap: () {
                    ref.read(cartStateProvider.notifier).addToCart(product);
                    
                    // Show snackbar
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                        content: Text(
                          '${product.name} added to cart',
                          style: sanFranciscoRegular.copyWith(
                            color: Colors.white,
                          ),
                        ),
                        backgroundColor: AppColors.primaryGreen,
                        duration: const Duration(seconds: 2),
                      ),
                    );
                  },
                  child: Container(
                    padding: const EdgeInsets.all(5),
                    decoration: BoxDecoration(
                      color: AppColors.primaryGreen,
                      shape: BoxShape.circle,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.2),
                          blurRadius: 2,
                          offset: const Offset(0, 1),
                        ),
                      ],
                    ),
                    child: const Icon(
                      Icons.add_shopping_cart,
                      color: Colors.white,
                      size: 18,
                    ),
                  ),
                ),
              ),
            ],
          ),
          // Product Details
          Padding(
            padding: const EdgeInsets.all(10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  product.name,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: sanFranciscoMedium.copyWith(
                    fontSize: 14,
                  ),
                ),
                const SizedBox(height: 5),
                Row(
                  children: [
                    if (product.isDiscount) ...[
                      Text(
                        '\$${product.price.toStringAsFixed(2)}',
                        style: sanFranciscoRegular.copyWith(
                          fontSize: 12,
                          decoration: TextDecoration.lineThrough,
                          color: AppColors.secondaryGrey,
                        ),
                      ),
                      const SizedBox(width: 5),
                    ],
                    Text(
                      '\$${product.discountPrice.toStringAsFixed(2)}',
                      style: sanFranciscoMedium.copyWith(
                        fontSize: 14,
                        color: AppColors.primaryGreen,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}