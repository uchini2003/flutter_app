import 'package:flutter/material.dart';
import '../widgets/product_tile.dart';

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

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  // Static list of products
  final List<Product> products = const [
    Product(
      id: '1',
      name: 'Smartphone',
      description: 'Latest generation smartphone with top features',
      price: 699.99,
      imageUrl: 'assets/images/smartphone.png',
    ),
    Product(
      id: '2',
      name: 'Laptop',
      description: 'High-performance laptop for work and play',
      price: 1299.99,
      imageUrl: 'assets/images/laptop.png',
    ),
    Product(
      id: '3',
      name: 'Headphones',
      description: 'Noise-cancelling wireless headphones',
      price: 199.99,
      imageUrl: 'assets/images/headphones.png',
    ),
    Product(
      id: '4',
      name: 'Smart Watch',
      description: 'Track your fitness and stay connected',
      price: 249.99,
      imageUrl: 'assets/images/smartwatch.png',
    ),
    Product(
      id: '5',
      name: 'Tablet',
      description: 'Portable tablet for entertainment and productivity',
      price: 349.99,
      imageUrl: 'assets/images/tablet.png',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('My Shop'),
        actions: [
          IconButton(
            icon: const Icon(Icons.shopping_cart),
            onPressed: () {
              // Cart functionality would go here
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(content: Text('Cart feature coming soon!')),
              );
            },
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