import '../presentation/screens/home_screen.dart';

//store product & qty
class CartItem {
  final Product product;
  final int quantity;

  CartItem({required this.product, required this.quantity = 1});


}