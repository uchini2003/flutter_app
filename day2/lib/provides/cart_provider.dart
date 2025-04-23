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