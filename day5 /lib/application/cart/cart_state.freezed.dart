// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'cart_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$CartState {
  bool get isLoading => throw _privateConstructorUsedError;
  KtList<CartItem> get items => throw _privateConstructorUsedError;
  Option<Failure> get failure => throw _privateConstructorUsedError;
  double get totalAmount => throw _privateConstructorUsedError;
  bool get showAddAnimation => throw _privateConstructorUsedError;

  /// Create a copy of CartState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CartStateCopyWith<CartState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CartStateCopyWith<$Res> {
  factory $CartStateCopyWith(CartState value, $Res Function(CartState) then) =
      _$CartStateCopyWithImpl<$Res, CartState>;
  @useResult
  $Res call(
      {bool isLoading,
      KtList<CartItem> items,
      Option<Failure> failure,
      double totalAmount,
      bool showAddAnimation});
}

/// @nodoc
class _$CartStateCopyWithImpl<$Res, $Val extends CartState>
    implements $CartStateCopyWith<$Res> {
  _$CartStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CartState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? items = null,
    Object? failure = null,
    Object? totalAmount = null,
    Object? showAddAnimation = null,
  }) {
    return _then(_value.copyWith(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      items: null == items
          ? _value.items
          : items // ignore: cast_nullable_to_non_nullable
              as KtList<CartItem>,
      failure: null == failure
          ? _value.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as Option<Failure>,
      totalAmount: null == totalAmount
          ? _value.totalAmount
          : totalAmount // ignore: cast_nullable_to_non_nullable
              as double,
      showAddAnimation: null == showAddAnimation
          ? _value.showAddAnimation
          : showAddAnimation // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CartStateImplCopyWith<$Res>
    implements $CartStateCopyWith<$Res> {
  factory _$$CartStateImplCopyWith(
          _$CartStateImpl value, $Res Function(_$CartStateImpl) then) =
      __$$CartStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool isLoading,
      KtList<CartItem> items,
      Option<Failure> failure,
      double totalAmount,
      bool showAddAnimation});
}

/// @nodoc
class __$$CartStateImplCopyWithImpl<$Res>
    extends _$CartStateCopyWithImpl<$Res, _$CartStateImpl>
    implements _$$CartStateImplCopyWith<$Res> {
  __$$CartStateImplCopyWithImpl(
      _$CartStateImpl _value, $Res Function(_$CartStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of CartState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? items = null,
    Object? failure = null,
    Object? totalAmount = null,
    Object? showAddAnimation = null,
  }) {
    return _then(_$CartStateImpl(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      items: null == items
          ? _value.items
          : items // ignore: cast_nullable_to_non_nullable
              as KtList<CartItem>,
      failure: null == failure
          ? _value.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as Option<Failure>,
      totalAmount: null == totalAmount
          ? _value.totalAmount
          : totalAmount // ignore: cast_nullable_to_non_nullable
              as double,
      showAddAnimation: null == showAddAnimation
          ? _value.showAddAnimation
          : showAddAnimation // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$CartStateImpl implements _CartState {
  const _$CartStateImpl(
      {required this.isLoading,
      required this.items,
      required this.failure,
      required this.totalAmount,
      required this.showAddAnimation});

  @override
  final bool isLoading;
  @override
  final KtList<CartItem> items;
  @override
  final Option<Failure> failure;
  @override
  final double totalAmount;
  @override
  final bool showAddAnimation;

  @override
  String toString() {
    return 'CartState(isLoading: $isLoading, items: $items, failure: $failure, totalAmount: $totalAmount, showAddAnimation: $showAddAnimation)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CartStateImpl &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.items, items) || other.items == items) &&
            (identical(other.failure, failure) || other.failure == failure) &&
            (identical(other.totalAmount, totalAmount) ||
                other.totalAmount == totalAmount) &&
            (identical(other.showAddAnimation, showAddAnimation) ||
                other.showAddAnimation == showAddAnimation));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, isLoading, items, failure, totalAmount, showAddAnimation);

  /// Create a copy of CartState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CartStateImplCopyWith<_$CartStateImpl> get copyWith =>
      __$$CartStateImplCopyWithImpl<_$CartStateImpl>(this, _$identity);
}

abstract class _CartState implements CartState {
  const factory _CartState(
      {required final bool isLoading,
      required final KtList<CartItem> items,
      required final Option<Failure> failure,
      required final double totalAmount,
      required final bool showAddAnimation}) = _$CartStateImpl;

  @override
  bool get isLoading;
  @override
  KtList<CartItem> get items;
  @override
  Option<Failure> get failure;
  @override
  double get totalAmount;
  @override
  bool get showAddAnimation;

  /// Create a copy of CartState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CartStateImplCopyWith<_$CartStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
