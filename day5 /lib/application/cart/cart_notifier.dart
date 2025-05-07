import 'package:dartz/dartz.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:kt_dart/kt.dart';
import 'package:uuid/uuid.dart';

import '../../domain/cart/cart_item.dart';
import '../../domain/product/product.dart';
import '../../utils/log_utils.dart';
import 'cart_state.dart';

class CartStateNotifier extends StateNotifier<CartState> {
  CartStateNotifier() : super(CartState.initial()) {
    _logUtils.log("init");
  }

  static final LogUtils _logUtils = LogUtils(
    featureName: "CartStateNotifier",
    printLog: true,
  );
  
  void addToCart(Product product) {
    final items = state.items.asList();
    final existingItemIndex = items.indexWhere(
      (item) => item.product.name == product.name,
    );

    if (existingItemIndex != -1) {
      final updatedItems = List<CartItem>.from(items);
      final existingItem = updatedItems[existingItemIndex];
      updatedItems[existingItemIndex] = existingItem.copyWith(
        quantity: existingItem.quantity + 1,
      );
      
      _updateState(KtList.from(updatedItems));
    } else {
      final newItem = CartItem(
        id: const Uuid().v4(),
        product: product,
        quantity: 1,
      );
      
      _updateState(state.items.plusElement(newItem));
    }
  }
  
  void removeFromCart(String cartItemId) {
    final updatedItems = state.items.asList().where(
      (item) => item.id != cartItemId,
    ).toList();
    
    _updateState(KtList.from(updatedItems));
  }

  void updateQuantity(String cartItemId, int newQuantity) {
    if (newQuantity <= 0) {
      removeFromCart(cartItemId);
      return;
    }
    
    final items = state.items.asList();
    final existingItemIndex = items.indexWhere(
      (item) => item.id == cartItemId,
    );
    
    if (existingItemIndex != -1) {
      final updatedItems = List<CartItem>.from(items);
      final existingItem = updatedItems[existingItemIndex];
      updatedItems[existingItemIndex] = existingItem.copyWith(
        quantity: newQuantity,
      );
      
      _updateState(KtList.from(updatedItems));
    }
  }
  
  void incrementQuantity(String cartItemId) {
    final items = state.items.asList();
    final existingItemIndex = items.indexWhere(
      (item) => item.id == cartItemId,
    );
    
    if (existingItemIndex != -1) {
      final updatedItems = List<CartItem>.from(items);
      final existingItem = updatedItems[existingItemIndex];
      updatedItems[existingItemIndex] = existingItem.copyWith(
        quantity: existingItem.quantity + 1,
      );
      
      _updateState(KtList.from(updatedItems));
    }
  }
  
  void decrementQuantity(String cartItemId) {
    final items = state.items.asList();
    final existingItemIndex = items.indexWhere(
      (item) => item.id == cartItemId,
    );
    
    if (existingItemIndex != -1) {
      final updatedItems = List<CartItem>.from(items);
      final existingItem = updatedItems[existingItemIndex];
      
      if (existingItem.quantity > 1) {
        updatedItems[existingItemIndex] = existingItem.copyWith(
          quantity: existingItem.quantity - 1,
        );
        _updateState(KtList.from(updatedItems));
      } else {
        removeFromCart(cartItemId);
      }
    }
  }
  
  void clearCart() {
    state = state.copyWith(
      items: emptyList(),
      totalAmount: 0.0,
    );
  }
  
  void _updateState(KtList<CartItem> updatedItems) {
    double total = 0.0;
    
    for (final item in updatedItems.iter) {
      final price = item.product.isDiscount
          ? item.product.discountPrice
          : item.product.price;
      total += price * item.quantity;
    }
    
    state = state.copyWith(
      items: updatedItems,
      totalAmount: total,
      showAddAnimation: true,
    );
    
    Future.delayed(const Duration(milliseconds: 300), () {
      if (mounted) {
        state = state.copyWith(showAddAnimation: false);
      }
    });
  }

  bool get mounted => true;
}