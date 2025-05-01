import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../core/values/colors.dart';
import '../core/values/style_constants.dart';
import '../core/values/text_styles.dart';
import 'widgets/category_card.dart';
import 'widgets/explore_header.dart';
import 'widgets/trending_product_card.dart';

@RoutePage()
class ExplorePage extends HookConsumerWidget {
  const ExplorePage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final selectedCategoryIndex = useState(0);
    
    // Sample categories
    final categories = [
      'All',
      'Fruits',
      'Vegetables',
      'Dairy',
      'Meat',
      'Bakery',
      'Beverages',
      'Snacks'
    ];
    
    // Sample trending products
    final trendingProducts = [
      {
        'id': '1',
        'name': 'Organic Bananas',
        'price': '4.99',
        'imageUrl': 'https://img.freepik.com/free-vector/vector-ripe-yellow-banana-bunch-isolated-white-background_1284-45456.jpg?t=st=1746016215~exp=1746019815~hmac=58157fdc4785bdfb1e8eb1607a3e4451eb9bb4b38603b3dc2c6f4d5b5ab824c9&w=1800',
        'discount': '10%',
      },
      {
        'id': '2',
        'name': 'Fresh Strawberries',
        'price': '5.99',
        'imageUrl': 'https://images.unsplash.com/photo-1622921491193-345ffb510f6f?q=80&w=2071&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
        'discount': '15%',
      },
      {
        'id': '3',
        'name': 'Avocado Hass',
        'price': '3.99',
        'imageUrl': 'https://t4.ftcdn.net/jpg/14/15/56/83/240_F_1415568377_cgHag4O8TZrWcOFRx0aZh2kmZ5EWbOVg.jpg',
        'discount': null,
      },
      {
        'id': '4',
        'name': 'Red Apples',
        'price': '2.99',
        'imageUrl': 'https://thumbs.dreamstime.com/b/three-red-apples-leaf-isolated-white-background-57496010.jpg?w=992',
        'discount': '5%',
      },
    ];

    return Scaffold(
      body: CustomScrollView(
        slivers: [
          // Sticky header
          const SliverToBoxAdapter(
            child: ExploreHeader(),
          ),
          
          // Main content
          SliverPadding(
            padding: const EdgeInsets.all(AppPaddings.outerPadding),
            sliver: SliverList(
              delegate: SliverChildListDelegate([
                Text(
                  'Categories',
                  style: sanFranciscoBold.copyWith(
                    fontSize: 25,
                  ),
                ),
                const SizedBox(height: 16),
                
                // Categories horizontal list
                SizedBox(
                  height: 40,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: categories.length,
                    itemBuilder: (context, index) {
                      return GestureDetector(
                        onTap: () {
                          selectedCategoryIndex.value = index;
                        },
                        child: Container(
                          margin: const EdgeInsets.only(right: 10),
                          padding: const EdgeInsets.symmetric(horizontal: 16),
                          decoration: BoxDecoration(
                            color: selectedCategoryIndex.value == index
                                ? AppColors.primaryGreen
                                : AppColors.containerWhite,
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Center(
                            child: Text(
                              categories[index],
                              style: sanFranciscoMedium.copyWith(
                                color: selectedCategoryIndex.value == index
                                    ? AppColors.white
                                    : AppColors.textGrey,
                              ),
                            ),
                          ),
                        ),
                      );
                    },
                  ),
                ),
                const SizedBox(height: 24),
                
                // Category cards grid
                LayoutBuilder(
                  builder: (context, constraints) {
                    // Adjust card size based on available width
                    final cardWidth = (constraints.maxWidth - 10) / 2;
                    const aspectRatio = 1.2;
                    final cardHeight = cardWidth / aspectRatio;
                    
                    return GridView.count(
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
                      crossAxisCount: 2,
                      childAspectRatio: aspectRatio,
                      crossAxisSpacing: 10,
                      mainAxisSpacing: 10,
                      children: [
                        CategoryCard(
                          title: 'Fruits',
                          iconData: Icons.apple,
                          color: Colors.orange[100]!,
                          onTap: () {}, imagePath: 'assets/images/strawberries.png',
                        ),
                        CategoryCard(
                          title: 'Vegetables',
                          iconData: Icons.eco,
                          color: Colors.green[100]!,
                          onTap: () {}, imagePath: '',
                        ),
                        CategoryCard(
                          title: 'Dairy',
                          iconData: Icons.egg,
                          color: Colors.blue[100]!,
                          onTap: () {}, imagePath: '',
                        ),
                        CategoryCard(
                          title: 'Meat',
                          iconData: Icons.food_bank,
                          color: Colors.red[100]!,
                          onTap: () {}, imagePath: '',
                        ),
                      ],
                    );
                  },
                ),
                const SizedBox(height: 32),
                
                // Trending section header
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Trending Now',
                      style: sanFranciscoBold.copyWith(
                        fontSize: 25,
                      ),
                    ),
                    TextButton(
                      onPressed: () {},
                      child: Text(
                        'See All',
                        style: sanFranciscoRegular.copyWith(
                          color: AppColors.primaryGreen,
                          fontSize: 14,
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 16),
                
                // Trending products horizontal list
                SizedBox(
                  height: 230, // Increased height to accommodate content
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: trendingProducts.length,
                    itemBuilder: (context, index) {
                      final product = trendingProducts[index];
                      return TrendingProductCard(
                        name: product['name']!,
                        price: product['price']!,
                        imageUrl: product['imageUrl']!,
                        discount: product['discount'],
                        onTap: () {},
                      );
                    },
                  ),
                ),
                
                const SizedBox(height: 20),
              ]),
            ),
          ),
        ],
      ),
    );
  }
}