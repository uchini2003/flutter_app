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

//manages cart state
class CartNotifier extends StateNotifier<CartState> {
  CartNotifier() : super(CartState());
  
  //add product
  void addItem(Product product) {
    final items = {...state.items};
    
    if (items.containsKey(product.id)) {
      //increase qty if product already in cart
      items[product.id] = items[product.id]!.copyWith(
        quantity: items[product.id]!.quantity + 1,
      );
    } else {
      //add new product to cart
      items[product.id] = CartItem(product: product);
    }
    
    state = state.copyWith(items: items);
  }

  // remove product from cart
  void removeItem(String productId) {
    final items = {...state.items};
    
    if (items.containsKey(productId)) {
      if (items[productId]!.quantity > 1) {
        //if more than 1 dec qty
        items[productId] = items[productId]!.copyWith(
          quantity: items[productId]!.quantity - 1,
        );
      } else {
        //if qty is 1 remove item completely
        items.remove(productId);
      }
    }
    
    state = state.copyWith(items: items);
  }

