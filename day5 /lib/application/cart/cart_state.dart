import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:kt_dart/kt.dart';

import '../../domain/cart/cart_item.dart';
import '../../domain/core/failure.dart';

part 'cart_state.freezed.dart';

@freezed
class CartState with _$CartState {
  const factory CartState({
    required bool isLoading,
    required KtList<CartItem> items,
    required Option<Failure> failure,
    required double totalAmount,
    required bool showAddAnimation, 
  }) = _CartState;

  factory CartState.initial() => CartState(
        isLoading: false,
        items: KtList.empty(),
        failure: none(),
        totalAmount: 0.0,
        showAddAnimation: false, 
      );
}