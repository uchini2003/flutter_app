import 'package:freezed_annotation/freezed_annotation.dart';
import '../product/product.dart';

part 'cart_item.freezed.dart';

@freezed
class CartItem with _$CartItem {
  const factory CartItem({
    required Product product,
    @Default(1) int quantity,
  }) = _CartItem;

  const CartItem._();
  
  double get totalPrice => product.price * quantity;
}