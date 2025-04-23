import '../presentation/screens/home_screen.dart';

//store product & qty
class CartItem {
  final Product product;
  final int quantity;

  CartItem({required this.product, this.quantity = 1});
    
    CartItem copyWith({int? quantity}) {
    return CartItem(
      product: product,
      quantity: quantity ?? this.quantity,
    );
  }

  //item total price 
  double get totalPrice => product.price * quantity;
}