import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../models/cart_item.dart';
import '../presentation/screens/home_screen.dart';

//hold items and total
class CartState {
  final Map<String, CartItem> items;
  
  CartState({this.items = const {}});

  //copy with updated items
  CartState copyWith({Map<String, CartItem>? items}) {
    return CartState(
      items: items ?? this.items,
    );
  }

  //total price & qty of all items
  double get totalPrice {
    return items.values.fold(0, (total, item) => total + item.totalPrice);
  }
  
  int get totalQuantity {
    return items.values.fold(0, (total, item) => total + item.quantity);
  }
}

