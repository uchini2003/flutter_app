import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../application/explore/explore_provider.dart';
import '../../core/values/text_styles.dart';
import 'popular_product_card.dart';

class PopularProductsList extends ConsumerWidget {
  const PopularProductsList({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final popularProducts = ref.watch(
      exploreStateProvider.select((state) => state.popularProducts),
    );

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 20, top: 20, bottom: 15),
          child: Text(
            'Popular Items',
            style: sanFranciscoBold.copyWith(
              fontSize: 18,
            ),
          ),
        ),
        SizedBox(
          height: 230,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            padding: const EdgeInsets.only(left: 20),
            itemCount: popularProducts.size,
            itemBuilder: (context, index) {
              final product = popularProducts[index];
              return PopularProductCard(product: product);
            },
          ),
        ),
      ],
    );
  }
}