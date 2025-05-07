import 'package:freezed_annotation/freezed_annotation.dart';

part 'product.freezed.dart';

@freezed
class Product with _$Product {
  const factory Product({
    required String id,
    required String name,
    required String description,
    required double price,
    required String imageUrl,
  }) = _Product;

  factory Product.empty() => const Product(
    id: '',
    name: '',
    description: '',
    price: 0.0,
    imageUrl: '',
  );
}