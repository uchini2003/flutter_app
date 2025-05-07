import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../application/explore/explore_provider.dart';
import '../../core/values/text_styles.dart';
import 'category_item.dart';

class CategoriesList extends ConsumerWidget {
  const CategoriesList({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final categories = ref.watch(
      exploreStateProvider.select((state) => state.categories),
    );

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 20, bottom: 15),
          child: Text(
            'Categories',
            style: sanFranciscoBold.copyWith(
              fontSize: 18,
            ),
          ),
        ),
        SizedBox(
          height: 110,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            padding: const EdgeInsets.only(left: 20),
            itemCount: categories.size,
            itemBuilder: (context, index) {
              final category = categories[index];
              return CategoryItem(category: category);
            },
          ),
        ),
      ],
    );
  }
}