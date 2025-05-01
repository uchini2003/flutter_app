import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../domain/product/product.dart';
import 'product_card.dart';

class FeaturedProducts extends ConsumerWidget {
  const FeaturedProducts({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    List<Product> products = [];

    for (int i = 1; i <= 20; i++) {
      products.add(Product(
        name: 'Anggurku Fresh Indonesia Grapes $i',
        price: 100.0 + i, 
        imageUrl: 'assets/images/strawberries.jpg',
        isDiscount: i % 3 == 0, 
        discountPrice:
            90.0 + i, 
        discountPercentage:
            10 + (i % 5), 
      ));
    }

    return GridView.builder(
      physics: const NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      itemCount: products.length,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        childAspectRatio: 0.61,
      ),
      itemBuilder: (context, index) {
        return ProductCard(products: products, index: index);
      },
    );
  }
}
