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