import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'cart_notifier.dart';
import 'cart_state.dart';

final cartProvider = StateNotifierProvider<CartNotifier, CartState>((ref) {
  return CartNotifier();
});