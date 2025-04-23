import 'package:day2/providers/cart_provider.dart';
import 'package:flutter/material.dart';
import 'package:auto_route/auto_route.dart'; // Added auto_route import
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../widgets/product_tile.dart';

//store product info
class Product {
  final String id;
  final String name;
  final String description;
  final double price;
  final String imageUrl;

  const Product({
    required this.id,
    required this.name,
    required this.description,
    required this.price,
    required this.imageUrl,
  });
}

//static product list for mock data
final productsProvider = Provider<List<Product>>((ref) {
  return [
    const Product(
      id: '1',
      name: 'Smartphone',
      description: 'Latest generation smartphone with top features',
      price: 699.99,
      imageUrl: 'assets/images/smartphone.png',
    ),
    const Product(
      id: '2',
      name: 'Laptop',
      description: 'High-performance laptop for work and play',
      price: 1299.99,
      imageUrl: 'assets/images/laptop.png',
    ),
    const Product(
      id: '3',
      name: 'Headphones',
      description: 'Noise-cancelling wireless headphones',
      price: 199.99,
      imageUrl: 'assets/images/headphones.png',
    ),
    const Product(
      id: '4',
      name: 'Smart Watch',
      description: 'Track your fitness and stay connected',
      price: 249.99,
      imageUrl: 'assets/images/smartwatch.png',
    ),
    const Product(
      id: '5',
      name: 'Tablet',
      description: 'Portable tablet for entertainment and productivity',
      price: 349.99,
      imageUrl: 'assets/images/tablet.png',
    ),
  ];
});

//changed to ConsumerWidget for Riverpod
@RoutePage()
class HomeScreen extends ConsumerWidget {
  const HomeScreen({super.key});

  @override
  // Added WidgetRef parameter for Riverpod
  Widget build(BuildContext context, WidgetRef ref) {
    // Get products from provider
    final products = ref.watch(productsProvider);
    // Get cart state from provider 
    final cart = ref.watch(cartProvider);
    
    return Scaffold(
      appBar: AppBar(
        title: const Text('My Shop'),
        actions: [
          // Updated cart button with badge
          Stack(
            alignment: Alignment.center,
            children: [
              IconButton(
                icon: const Icon(Icons.shopping_cart),
                onPressed: () {
                  // Navigate to cart screen
                  context.router.push(const CartRoute());
                },
              ),
              if (cart.totalQuantity > 0)
                Positioned(
                  top: 5,
                  right: 5,
                  child: Container(
                    padding: const EdgeInsets.all(2.0),
                    decoration: BoxDecoration(
                      color: Colors.red,
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    constraints: const BoxConstraints(
                      minWidth: 16,
                      minHeight: 16,
                    ),
                    child: Text(
                      '${cart.totalQuantity}',
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 10,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
            ],
          ),
        ],
      ),
      body: ListView.builder(
        padding: const EdgeInsets.all(8.0),
        itemCount: products.length,
        itemBuilder: (context, index) {
          return ProductTile(product: products[index]);
        },
      ),
    );
  }
}