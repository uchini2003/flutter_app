import 'package:flutter/material.dart';
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


