import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:dartz/dartz.dart';
import '../../domain/cart/cart_item.dart';

part 'cart_state.freezed.dart';

@freezed
class CartState with _$CartState {
  const factory CartState({
    required Map<String, CartItem> items,
  }) = _CartState;

  const CartState._();

  factory CartState.initial() => const CartState(
    items: {},
  );