import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'cart_notifier.dart';
import 'cart_state.dart';

final cartStateProvider = StateNotifierProvider<CartStateNotifier, CartState>(
  (ref) => CartStateNotifier(),
);