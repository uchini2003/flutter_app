// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'explore_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ExploreState {
  bool get isLoading => throw _privateConstructorUsedError;
  KtList<Category> get categories => throw _privateConstructorUsedError;
  KtList<Product> get popularProducts => throw _privateConstructorUsedError;
  Option<Failure> get failure => throw _privateConstructorUsedError;
  String get searchQuery => throw _privateConstructorUsedError;

  /// Create a copy of ExploreState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ExploreStateCopyWith<ExploreState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ExploreStateCopyWith<$Res> {
  factory $ExploreStateCopyWith(
          ExploreState value, $Res Function(ExploreState) then) =
      _$ExploreStateCopyWithImpl<$Res, ExploreState>;
  @useResult
  $Res call(
      {bool isLoading,
      KtList<Category> categories,
      KtList<Product> popularProducts,
      Option<Failure> failure,
      String searchQuery});
}

/// @nodoc
class _$ExploreStateCopyWithImpl<$Res, $Val extends ExploreState>
    implements $ExploreStateCopyWith<$Res> {
  _$ExploreStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ExploreState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? categories = null,
    Object? popularProducts = null,
    Object? failure = null,
    Object? searchQuery = null,
  }) {
    return _then(_value.copyWith(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      categories: null == categories
          ? _value.categories
          : categories // ignore: cast_nullable_to_non_nullable
              as KtList<Category>,
      popularProducts: null == popularProducts
          ? _value.popularProducts
          : popularProducts // ignore: cast_nullable_to_non_nullable
              as KtList<Product>,
      failure: null == failure
          ? _value.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as Option<Failure>,
      searchQuery: null == searchQuery
          ? _value.searchQuery
          : searchQuery // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ExploreStateImplCopyWith<$Res>
    implements $ExploreStateCopyWith<$Res> {
  factory _$$ExploreStateImplCopyWith(
          _$ExploreStateImpl value, $Res Function(_$ExploreStateImpl) then) =
      __$$ExploreStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool isLoading,
      KtList<Category> categories,
      KtList<Product> popularProducts,
      Option<Failure> failure,
      String searchQuery});
}

/// @nodoc
class __$$ExploreStateImplCopyWithImpl<$Res>
    extends _$ExploreStateCopyWithImpl<$Res, _$ExploreStateImpl>
    implements _$$ExploreStateImplCopyWith<$Res> {
  __$$ExploreStateImplCopyWithImpl(
      _$ExploreStateImpl _value, $Res Function(_$ExploreStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of ExploreState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? categories = null,
    Object? popularProducts = null,
    Object? failure = null,
    Object? searchQuery = null,
  }) {
    return _then(_$ExploreStateImpl(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      categories: null == categories
          ? _value.categories
          : categories // ignore: cast_nullable_to_non_nullable
              as KtList<Category>,
      popularProducts: null == popularProducts
          ? _value.popularProducts
          : popularProducts // ignore: cast_nullable_to_non_nullable
              as KtList<Product>,
      failure: null == failure
          ? _value.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as Option<Failure>,
      searchQuery: null == searchQuery
          ? _value.searchQuery
          : searchQuery // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ExploreStateImpl implements _ExploreState {
  const _$ExploreStateImpl(
      {required this.isLoading,
      required this.categories,
      required this.popularProducts,
      required this.failure,
      required this.searchQuery});

  @override
  final bool isLoading;
  @override
  final KtList<Category> categories;
  @override
  final KtList<Product> popularProducts;
  @override
  final Option<Failure> failure;
  @override
  final String searchQuery;

  @override
  String toString() {
    return 'ExploreState(isLoading: $isLoading, categories: $categories, popularProducts: $popularProducts, failure: $failure, searchQuery: $searchQuery)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ExploreStateImpl &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.categories, categories) ||
                other.categories == categories) &&
            (identical(other.popularProducts, popularProducts) ||
                other.popularProducts == popularProducts) &&
            (identical(other.failure, failure) || other.failure == failure) &&
            (identical(other.searchQuery, searchQuery) ||
                other.searchQuery == searchQuery));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isLoading, categories,
      popularProducts, failure, searchQuery);

  /// Create a copy of ExploreState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ExploreStateImplCopyWith<_$ExploreStateImpl> get copyWith =>
      __$$ExploreStateImplCopyWithImpl<_$ExploreStateImpl>(this, _$identity);
}

abstract class _ExploreState implements ExploreState {
  const factory _ExploreState(
      {required final bool isLoading,
      required final KtList<Category> categories,
      required final KtList<Product> popularProducts,
      required final Option<Failure> failure,
      required final String searchQuery}) = _$ExploreStateImpl;

  @override
  bool get isLoading;
  @override
  KtList<Category> get categories;
  @override
  KtList<Product> get popularProducts;
  @override
  Option<Failure> get failure;
  @override
  String get searchQuery;

  /// Create a copy of ExploreState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ExploreStateImplCopyWith<_$ExploreStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
