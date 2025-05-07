import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../application/explore/explore_provider.dart';
import '../../core/values/style_constants.dart';
import 'product_grid_item.dart';

class ProductGrid extends ConsumerWidget {
  const ProductGrid({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final products = ref.watch(
      exploreStateProvider.select((state) => state.popularProducts),
    );

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: AppPaddings.innerPadding),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          GridView.builder(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              childAspectRatio: 0.75,
              crossAxisSpacing: 15,
              mainAxisSpacing: 15,
            ),
            itemCount: products.size,
            itemBuilder: (context, index) {
              final product = products[index];
              return ProductGridItem(product: product);
            },
          ),
        ],
      ),
    );
  }
}