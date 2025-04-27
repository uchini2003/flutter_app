import 'package:hooks_riverpod/hooks_riverpod.dart';
import '../../domain/product/product.dart';
import '../../domain/cart/cart_item.dart';
import '../core/failure/failure_provider.dart';
import '../../utils/log_utils.dart';
import 'cart_state.dart';

class CartNotifier extends StateNotifier<CartState> {
  CartNotifier() : super(CartState.initial()) {
    _logUtils.log("init");
  }

  static final LogUtils _logUtils = LogUtils(
    featureName: "CartNotifier",
    printLog: true,
  );

  @override
  void dispose() {
    _logUtils.log("dispose");
    super.dispose();
  }

    void addItem(Product product) {
    _logUtils.log("addItem :: product : $product");
    
    final items = {...state.items};
    
    if (items.containsKey(product.id)) {
      items[product.id] = CartItem(
        product: product,
        quantity: items[product.id]!.quantity + 1,
      );
    } else {
      items[product.id] = CartItem(product: product);
    }
    
    state = state.copyWith(items: items);
  }

  void removeItem(String productId) {
    _logUtils.log("removeItem :: productId : $productId");
    
    final items = {...state.items};
    
    if (items.containsKey(productId)) {
      if (items[productId]!.quantity > 1) {
        items[productId] = CartItem(
          product: items[productId]!.product,
          quantity: items[productId]!.quantity - 1,
        );
      } else {
        items.remove(productId);
      }
    }
    
    state = state.copyWith(items: items);
  }

  void clear() {
    _logUtils.log("clear");
    state = CartState.initial();
  }
}