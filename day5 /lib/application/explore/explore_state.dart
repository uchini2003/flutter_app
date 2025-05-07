import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:kt_dart/kt.dart';

import '../../domain/category/category.dart';
import '../../domain/core/failure.dart';
import '../../domain/product/product.dart';

part 'explore_state.freezed.dart';

@freezed
class ExploreState with _$ExploreState {
  const factory ExploreState({
    required bool isLoading,
    required KtList<Category> categories,
    required KtList<Product> popularProducts,
    required Option<Failure> failure,
    required String searchQuery,
  }) = _ExploreState;

  factory ExploreState.initial() => ExploreState(
        isLoading: false,
        categories: emptyList(),
        popularProducts: emptyList(),
        failure: none(),
        searchQuery: '',
      );
}