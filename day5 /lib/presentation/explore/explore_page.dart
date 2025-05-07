import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../application/explore/explore_provider.dart';
import '../core/values/colors.dart';
import '../core/values/text_styles.dart';
import 'widgets/cart_badge.dart';
import 'widgets/categories_list.dart';
import 'widgets/explore_search_bar.dart';
import 'widgets/popular_products_list.dart';
import 'widgets/trending_banner.dart';

@RoutePage()
class ExplorePage extends ConsumerWidget {
  const ExplorePage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final isLoading = ref.watch(
      exploreStateProvider.select((state) => state.isLoading),
    );

    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.primaryGreen,
        elevation: 0,
        title: Text(
          'Explore',
          style: sanFranciscoBold.copyWith(
            fontSize: 20,
            color: Colors.white,
          ),
        ),
        actions: [
          IconButton(
            icon: const Icon(
              Icons.filter_list,
              color: Colors.white,
            ),
            onPressed: () {
              // Show filter options
            },
          ),
          const CartBadge(),
        ],
      ),
      body: isLoading
          ? Center(
              child: CircularProgressIndicator(
                color: AppColors.primaryGreen,
              ),
            )
          : const SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children:  [
                  ExploreSearchBar(),
                  CategoriesList(),
                  TrendingBanner(),
                  PopularProductsList(),
                  SizedBox(height: 20),
                ],
              ),
            ),
    );
  }
}