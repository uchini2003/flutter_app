import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import '../core/values/style_constants.dart';
import '../core/values/colors.dart';
import '../core/values/text_styles.dart';
import 'widgets/category_list.dart';
import 'widgets/search_bar_widget.dart';
import 'widgets/trending_products.dart';

@RoutePage()
class ExplorePage extends StatelessWidget {
  const ExplorePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(AppPaddings.outerPadding),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 10),
                Text(
                  'Discover',
                  style: sanFranciscoBold.copyWith(
                    fontSize: 25,
                  ),
                ),
                const SizedBox(height: 10),
                const SearchBarWidget(),
                const SizedBox(height: 20),
                const CategoryList(),
                const SizedBox(height: 20),
                Text(
                  'Trending Products',
                  style: sanFranciscoSemiBold.copyWith(
                    fontSize: 18,
                  ),
                ),
                const SizedBox(height: 10),
                const TrendingProducts(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}