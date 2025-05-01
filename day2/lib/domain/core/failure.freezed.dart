// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'failure.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$Failure {
  Object get failure => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(CoreFailure failure) core,
    required TResult Function(NetworkFailure failure) network,
    required TResult Function(StorageFailure failure) storage,
    required TResult Function(AuthenticationFailure failure) authentication,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(CoreFailure failure)? core,
    TResult? Function(NetworkFailure failure)? network,
    TResult? Function(StorageFailure failure)? storage,
    TResult? Function(AuthenticationFailure failure)? authentication,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(CoreFailure failure)? core,
    TResult Function(NetworkFailure failure)? network,
    TResult Function(StorageFailure failure)? storage,
    TResult Function(AuthenticationFailure failure)? authentication,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CoreFailure value) core,
    required TResult Function(_NetworkFailure value) network,
    required TResult Function(_StorageFailure value) storage,
    required TResult Function(_AuthenticationFailure value) authentication,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_CoreFailure value)? core,
    TResult? Function(_NetworkFailure value)? network,
    TResult? Function(_StorageFailure value)? storage,
    TResult? Function(_AuthenticationFailure value)? authentication,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CoreFailure value)? core,
    TResult Function(_NetworkFailure value)? network,
    TResult Function(_StorageFailure value)? storage,
    TResult Function(_AuthenticationFailure value)? authentication,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FailureCopyWith<$Res> {
  factory $FailureCopyWith(Failure value, $Res Function(Failure) then) =
      _$FailureCopyWithImpl<$Res, Failure>;
}

/// @nodoc
class _$FailureCopyWithImpl<$Res, $Val extends Failure>
    implements $FailureCopyWith<$Res> {
  _$FailureCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Failure
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$CoreFailureImplCopyWith<$Res> {
  factory _$$CoreFailureImplCopyWith(
          _$CoreFailureImpl value, $Res Function(_$CoreFailureImpl) then) =
      __$$CoreFailureImplCopyWithImpl<$Res>;
  @useResult
  $Res call({CoreFailure failure});

  $CoreFailureCopyWith<$Res> get failure;
}

/// @nodoc
class __$$CoreFailureImplCopyWithImpl<$Res>
    extends _$FailureCopyWithImpl<$Res, _$CoreFailureImpl>
    implements _$$CoreFailureImplCopyWith<$Res> {
  __$$CoreFailureImplCopyWithImpl(
      _$CoreFailureImpl _value, $Res Function(_$CoreFailureImpl) _then)
      : super(_value, _then);

  /// Create a copy of Failure
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? failure = null,
  }) {
    return _then(_$CoreFailureImpl(
      null == failure
          ? _value.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as CoreFailure,
    ));
  }

  /// Create a copy of Failure
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $CoreFailureCopyWith<$Res> get failure {
    return $CoreFailureCopyWith<$Res>(_value.failure, (value) {
      return _then(_value.copyWith(failure: value));
    });
  }
}

/// @nodoc

class _$CoreFailureImpl implements _CoreFailure {
  const _$CoreFailureImpl(this.failure);

  @override
  final CoreFailure failure;

  @override
  String toString() {
    return 'Failure.core(failure: $failure)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CoreFailureImpl &&
            (identical(other.failure, failure) || other.failure == failure));
  }

  @override
  int get hashCode => Object.hash(runtimeType, failure);

  /// Create a copy of Failure
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CoreFailureImplCopyWith<_$CoreFailureImpl> get copyWith =>
      __$$CoreFailureImplCopyWithImpl<_$CoreFailureImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(CoreFailure failure) core,
    required TResult Function(NetworkFailure failure) network,
    required TResult Function(StorageFailure failure) storage,
    required TResult Function(AuthenticationFailure failure) authentication,
  }) {
    return core(failure);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(CoreFailure failure)? core,
    TResult? Function(NetworkFailure failure)? network,
    TResult? Function(StorageFailure failure)? storage,
    TResult? Function(AuthenticationFailure failure)? authentication,
  }) {
    return core?.call(failure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(CoreFailure failure)? core,
    TResult Function(NetworkFailure failure)? network,
    TResult Function(StorageFailure failure)? storage,
    TResult Function(AuthenticationFailure failure)? authentication,
    required TResult orElse(),
  }) {
    if (core != null) {
      return core(failure);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CoreFailure value) core,
    required TResult Function(_NetworkFailure value) network,
    required TResult Function(_StorageFailure value) storage,
    required TResult Function(_AuthenticationFailure value) authentication,
  }) {
    return core(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_CoreFailure value)? core,
    TResult? Function(_NetworkFailure value)? network,
    TResult? Function(_StorageFailure value)? storage,
    TResult? Function(_AuthenticationFailure value)? authentication,
  }) {
    return core?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CoreFailure value)? core,
    TResult Function(_NetworkFailure value)? network,
    TResult Function(_StorageFailure value)? storage,
    TResult Function(_AuthenticationFailure value)? authentication,
    required TResult orElse(),
  }) {
    if (core != null) {
      return core(this);
    }
    return orElse();
  }
}

abstract class _CoreFailure implements Failure {
  const factory _CoreFailure(final CoreFailure failure) = _$CoreFailureImpl;

  @override
  CoreFailure get failure;

  /// Create a copy of Failure
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CoreFailureImplCopyWith<_$CoreFailureImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$NetworkFailureImplCopyWith<$Res> {
  factory _$$NetworkFailureImplCopyWith(_$NetworkFailureImpl value,
          $Res Function(_$NetworkFailureImpl) then) =
      __$$NetworkFailureImplCopyWithImpl<$Res>;
  @useResult
  $Res call({NetworkFailure failure});

  $NetworkFailureCopyWith<$Res> get failure;
}

/// @nodoc
class __$$NetworkFailureImplCopyWithImpl<$Res>
    extends _$FailureCopyWithImpl<$Res, _$NetworkFailureImpl>
    implements _$$NetworkFailureImplCopyWith<$Res> {
  __$$NetworkFailureImplCopyWithImpl(
      _$NetworkFailureImpl _value, $Res Function(_$NetworkFailureImpl) _then)
      : super(_value, _then);

  /// Create a copy of Failure
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? failure = null,
  }) {
    return _then(_$NetworkFailureImpl(
      null == failure
          ? _value.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as NetworkFailure,
    ));
  }

  /// Create a copy of Failure
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $NetworkFailureCopyWith<$Res> get failure {
    return $NetworkFailureCopyWith<$Res>(_value.failure, (value) {
      return _then(_value.copyWith(failure: value));
    });
  }
}

/// @nodoc

class _$NetworkFailureImpl implements _NetworkFailure {
  const _$NetworkFailureImpl(this.failure);

  @override
  final NetworkFailure failure;

  @override
  String toString() {
    return 'Failure.network(failure: $failure)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NetworkFailureImpl &&
            (identical(other.failure, failure) || other.failure == failure));
  }

  @override
  int get hashCode => Object.hash(runtimeType, failure);

  /// Create a copy of Failure
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$NetworkFailureImplCopyWith<_$NetworkFailureImpl> get copyWith =>
      __$$NetworkFailureImplCopyWithImpl<_$NetworkFailureImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(CoreFailure failure) core,
    required TResult Function(NetworkFailure failure) network,
    required TResult Function(StorageFailure failure) storage,
    required TResult Function(AuthenticationFailure failure) authentication,
  }) {
    return network(failure);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(CoreFailure failure)? core,
    TResult? Function(NetworkFailure failure)? network,
    TResult? Function(StorageFailure failure)? storage,
    TResult? Function(AuthenticationFailure failure)? authentication,
  }) {
    return network?.call(failure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(CoreFailure failure)? core,
    TResult Function(NetworkFailure failure)? network,
    TResult Function(StorageFailure failure)? storage,
    TResult Function(AuthenticationFailure failure)? authentication,
    required TResult orElse(),
  }) {
    if (network != null) {
      return network(failure);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CoreFailure value) core,
    required TResult Function(_NetworkFailure value) network,
    required TResult Function(_StorageFailure value) storage,
    required TResult Function(_AuthenticationFailure value) authentication,
  }) {
    return network(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_CoreFailure value)? core,
    TResult? Function(_NetworkFailure value)? network,
    TResult? Function(_StorageFailure value)? storage,
    TResult? Function(_AuthenticationFailure value)? authentication,
  }) {
    return network?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CoreFailure value)? core,
    TResult Function(_NetworkFailure value)? network,
    TResult Function(_StorageFailure value)? storage,
    TResult Function(_AuthenticationFailure value)? authentication,
    required TResult orElse(),
  }) {
    if (network != null) {
      return network(this);
    }
    return orElse();
  }
}

abstract class _NetworkFailure implements Failure {
  const factory _NetworkFailure(final NetworkFailure failure) =
      _$NetworkFailureImpl;

  @override
  NetworkFailure get failure;

  /// Create a copy of Failure
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$NetworkFailureImplCopyWith<_$NetworkFailureImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$StorageFailureImplCopyWith<$Res> {
  factory _$$StorageFailureImplCopyWith(_$StorageFailureImpl value,
          $Res Function(_$StorageFailureImpl) then) =
      __$$StorageFailureImplCopyWithImpl<$Res>;
  @useResult
  $Res call({StorageFailure failure});

  $StorageFailureCopyWith<$Res> get failure;
}

/// @nodoc
class __$$StorageFailureImplCopyWithImpl<$Res>
    extends _$FailureCopyWithImpl<$Res, _$StorageFailureImpl>
    implements _$$StorageFailureImplCopyWith<$Res> {
  __$$StorageFailureImplCopyWithImpl(
      _$StorageFailureImpl _value, $Res Function(_$StorageFailureImpl) _then)
      : super(_value, _then);

  /// Create a copy of Failure
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? failure = null,
  }) {
    return _then(_$StorageFailureImpl(
      null == failure
          ? _value.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as StorageFailure,
    ));
  }

  /// Create a copy of Failure
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StorageFailureCopyWith<$Res> get failure {
    return $StorageFailureCopyWith<$Res>(_value.failure, (value) {
      return _then(_value.copyWith(failure: value));
    });
  }
}

/// @nodoc

class _$StorageFailureImpl implements _StorageFailure {
  const _$StorageFailureImpl(this.failure);

  @override
  final StorageFailure failure;

  @override
  String toString() {
    return 'Failure.storage(failure: $failure)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StorageFailureImpl &&
            (identical(other.failure, failure) || other.failure == failure));
  }

  @override
  int get hashCode => Object.hash(runtimeType, failure);

  /// Create a copy of Failure
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$StorageFailureImplCopyWith<_$StorageFailureImpl> get copyWith =>
      __$$StorageFailureImplCopyWithImpl<_$StorageFailureImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(CoreFailure failure) core,
    required TResult Function(NetworkFailure failure) network,
    required TResult Function(StorageFailure failure) storage,
    required TResult Function(AuthenticationFailure failure) authentication,
  }) {
    return storage(failure);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(CoreFailure failure)? core,
    TResult? Function(NetworkFailure failure)? network,
    TResult? Function(StorageFailure failure)? storage,
    TResult? Function(AuthenticationFailure failure)? authentication,
  }) {
    return storage?.call(failure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(CoreFailure failure)? core,
    TResult Function(NetworkFailure failure)? network,
    TResult Function(StorageFailure failure)? storage,
    TResult Function(AuthenticationFailure failure)? authentication,
    required TResult orElse(),
  }) {
    if (storage != null) {
      return storage(failure);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CoreFailure value) core,
    required TResult Function(_NetworkFailure value) network,
    required TResult Function(_StorageFailure value) storage,
    required TResult Function(_AuthenticationFailure value) authentication,
  }) {
    return storage(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_CoreFailure value)? core,
    TResult? Function(_NetworkFailure value)? network,
    TResult? Function(_StorageFailure value)? storage,
    TResult? Function(_AuthenticationFailure value)? authentication,
  }) {
    return storage?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CoreFailure value)? core,
    TResult Function(_NetworkFailure value)? network,
    TResult Function(_StorageFailure value)? storage,
    TResult Function(_AuthenticationFailure value)? authentication,
    required TResult orElse(),
  }) {
    if (storage != null) {
      return storage(this);
    }
    return orElse();
  }
}

abstract class _StorageFailure implements Failure {
  const factory _StorageFailure(final StorageFailure failure) =
      _$StorageFailureImpl;

  @override
  StorageFailure get failure;

  /// Create a copy of Failure
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$StorageFailureImplCopyWith<_$StorageFailureImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AuthenticationFailureImplCopyWith<$Res> {
  factory _$$AuthenticationFailureImplCopyWith(
          _$AuthenticationFailureImpl value,
          $Res Function(_$AuthenticationFailureImpl) then) =
      __$$AuthenticationFailureImplCopyWithImpl<$Res>;
  @useResult
  $Res call({AuthenticationFailure failure});

  $AuthenticationFailureCopyWith<$Res> get failure;
}

/// @nodoc
class __$$AuthenticationFailureImplCopyWithImpl<$Res>
    extends _$FailureCopyWithImpl<$Res, _$AuthenticationFailureImpl>
    implements _$$AuthenticationFailureImplCopyWith<$Res> {
  __$$AuthenticationFailureImplCopyWithImpl(_$AuthenticationFailureImpl _value,
      $Res Function(_$AuthenticationFailureImpl) _then)
      : super(_value, _then);

  /// Create a copy of Failure
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? failure = null,
  }) {
    return _then(_$AuthenticationFailureImpl(
      null == failure
          ? _value.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as AuthenticationFailure,
    ));
  }

  /// Create a copy of Failure
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $AuthenticationFailureCopyWith<$Res> get failure {
    return $AuthenticationFailureCopyWith<$Res>(_value.failure, (value) {
      return _then(_value.copyWith(failure: value));
    });
  }
}

/// @nodoc

class _$AuthenticationFailureImpl implements _AuthenticationFailure {
  const _$AuthenticationFailureImpl(this.failure);

  @override
  final AuthenticationFailure failure;

  @override
  String toString() {
    return 'Failure.authentication(failure: $failure)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AuthenticationFailureImpl &&
            (identical(other.failure, failure) || other.failure == failure));
  }

  @override
  int get hashCode => Object.hash(runtimeType, failure);

  /// Create a copy of Failure
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AuthenticationFailureImplCopyWith<_$AuthenticationFailureImpl>
      get copyWith => __$$AuthenticationFailureImplCopyWithImpl<
          _$AuthenticationFailureImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(CoreFailure failure) core,
    required TResult Function(NetworkFailure failure) network,
    required TResult Function(StorageFailure failure) storage,
    required TResult Function(AuthenticationFailure failure) authentication,
  }) {
    return authentication(failure);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(CoreFailure failure)? core,
    TResult? Function(NetworkFailure failure)? network,
    TResult? Function(StorageFailure failure)? storage,
    TResult? Function(AuthenticationFailure failure)? authentication,
  }) {
    return authentication?.call(failure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(CoreFailure failure)? core,
    TResult Function(NetworkFailure failure)? network,
    TResult Function(StorageFailure failure)? storage,
    TResult Function(AuthenticationFailure failure)? authentication,
    required TResult orElse(),
  }) {
    if (authentication != null) {
      return authentication(failure);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CoreFailure value) core,
    required TResult Function(_NetworkFailure value) network,
    required TResult Function(_StorageFailure value) storage,
    required TResult Function(_AuthenticationFailure value) authentication,
  }) {
    return authentication(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_CoreFailure value)? core,
    TResult? Function(_NetworkFailure value)? network,
    TResult? Function(_StorageFailure value)? storage,
    TResult? Function(_AuthenticationFailure value)? authentication,
  }) {
    return authentication?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CoreFailure value)? core,
    TResult Function(_NetworkFailure value)? network,
    TResult Function(_StorageFailure value)? storage,
    TResult Function(_AuthenticationFailure value)? authentication,
    required TResult orElse(),
  }) {
    if (authentication != null) {
      return authentication(this);
    }
    return orElse();
  }
}

abstract class _AuthenticationFailure implements Failure {
  const factory _AuthenticationFailure(final AuthenticationFailure failure) =
      _$AuthenticationFailureImpl;

  @override
  AuthenticationFailure get failure;

  /// Create a copy of Failure
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AuthenticationFailureImplCopyWith<_$AuthenticationFailureImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$CoreFailure {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() cannotLaunchURL,
    required TResult Function() ignoreWarning,
    required TResult Function() invalidMobileNumber,
    required TResult Function() permissionDenied,
    required TResult Function(String message) serverError,
    required TResult Function(Object e) somethingWentWrong,
    required TResult Function() unexpected,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? cannotLaunchURL,
    TResult? Function()? ignoreWarning,
    TResult? Function()? invalidMobileNumber,
    TResult? Function()? permissionDenied,
    TResult? Function(String message)? serverError,
    TResult? Function(Object e)? somethingWentWrong,
    TResult? Function()? unexpected,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? cannotLaunchURL,
    TResult Function()? ignoreWarning,
    TResult Function()? invalidMobileNumber,
    TResult Function()? permissionDenied,
    TResult Function(String message)? serverError,
    TResult Function(Object e)? somethingWentWrong,
    TResult Function()? unexpected,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CannotLaunchURL value) cannotLaunchURL,
    required TResult Function(_IgnoreWarning value) ignoreWarning,
    required TResult Function(_InvalidMobileNumber value) invalidMobileNumber,
    required TResult Function(_PermissionDeniedFailure value) permissionDenied,
    required TResult Function(_ServerErrorFailure value) serverError,
    required TResult Function(_SomethingWentWrong value) somethingWentWrong,
    required TResult Function(_UnexpectedFailure value) unexpected,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_CannotLaunchURL value)? cannotLaunchURL,
    TResult? Function(_IgnoreWarning value)? ignoreWarning,
    TResult? Function(_InvalidMobileNumber value)? invalidMobileNumber,
    TResult? Function(_PermissionDeniedFailure value)? permissionDenied,
    TResult? Function(_ServerErrorFailure value)? serverError,
    TResult? Function(_SomethingWentWrong value)? somethingWentWrong,
    TResult? Function(_UnexpectedFailure value)? unexpected,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CannotLaunchURL value)? cannotLaunchURL,
    TResult Function(_IgnoreWarning value)? ignoreWarning,
    TResult Function(_InvalidMobileNumber value)? invalidMobileNumber,
    TResult Function(_PermissionDeniedFailure value)? permissionDenied,
    TResult Function(_ServerErrorFailure value)? serverError,
    TResult Function(_SomethingWentWrong value)? somethingWentWrong,
    TResult Function(_UnexpectedFailure value)? unexpected,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CoreFailureCopyWith<$Res> {
  factory $CoreFailureCopyWith(
          CoreFailure value, $Res Function(CoreFailure) then) =
      _$CoreFailureCopyWithImpl<$Res, CoreFailure>;
}

/// @nodoc
class _$CoreFailureCopyWithImpl<$Res, $Val extends CoreFailure>
    implements $CoreFailureCopyWith<$Res> {
  _$CoreFailureCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CoreFailure
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$CannotLaunchURLImplCopyWith<$Res> {
  factory _$$CannotLaunchURLImplCopyWith(_$CannotLaunchURLImpl value,
          $Res Function(_$CannotLaunchURLImpl) then) =
      __$$CannotLaunchURLImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$CannotLaunchURLImplCopyWithImpl<$Res>
    extends _$CoreFailureCopyWithImpl<$Res, _$CannotLaunchURLImpl>
    implements _$$CannotLaunchURLImplCopyWith<$Res> {
  __$$CannotLaunchURLImplCopyWithImpl(
      _$CannotLaunchURLImpl _value, $Res Function(_$CannotLaunchURLImpl) _then)
      : super(_value, _then);

  /// Create a copy of CoreFailure
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$CannotLaunchURLImpl implements _CannotLaunchURL {
  const _$CannotLaunchURLImpl();

  @override
  String toString() {
    return 'CoreFailure.cannotLaunchURL()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$CannotLaunchURLImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() cannotLaunchURL,
    required TResult Function() ignoreWarning,
    required TResult Function() invalidMobileNumber,
    required TResult Function() permissionDenied,
    required TResult Function(String message) serverError,
    required TResult Function(Object e) somethingWentWrong,
    required TResult Function() unexpected,
  }) {
    return cannotLaunchURL();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? cannotLaunchURL,
    TResult? Function()? ignoreWarning,
    TResult? Function()? invalidMobileNumber,
    TResult? Function()? permissionDenied,
    TResult? Function(String message)? serverError,
    TResult? Function(Object e)? somethingWentWrong,
    TResult? Function()? unexpected,
  }) {
    return cannotLaunchURL?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? cannotLaunchURL,
    TResult Function()? ignoreWarning,
    TResult Function()? invalidMobileNumber,
    TResult Function()? permissionDenied,
    TResult Function(String message)? serverError,
    TResult Function(Object e)? somethingWentWrong,
    TResult Function()? unexpected,
    required TResult orElse(),
  }) {
    if (cannotLaunchURL != null) {
      return cannotLaunchURL();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CannotLaunchURL value) cannotLaunchURL,
    required TResult Function(_IgnoreWarning value) ignoreWarning,
    required TResult Function(_InvalidMobileNumber value) invalidMobileNumber,
    required TResult Function(_PermissionDeniedFailure value) permissionDenied,
    required TResult Function(_ServerErrorFailure value) serverError,
    required TResult Function(_SomethingWentWrong value) somethingWentWrong,
    required TResult Function(_UnexpectedFailure value) unexpected,
  }) {
    return cannotLaunchURL(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_CannotLaunchURL value)? cannotLaunchURL,
    TResult? Function(_IgnoreWarning value)? ignoreWarning,
    TResult? Function(_InvalidMobileNumber value)? invalidMobileNumber,
    TResult? Function(_PermissionDeniedFailure value)? permissionDenied,
    TResult? Function(_ServerErrorFailure value)? serverError,
    TResult? Function(_SomethingWentWrong value)? somethingWentWrong,
    TResult? Function(_UnexpectedFailure value)? unexpected,
  }) {
    return cannotLaunchURL?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CannotLaunchURL value)? cannotLaunchURL,
    TResult Function(_IgnoreWarning value)? ignoreWarning,
    TResult Function(_InvalidMobileNumber value)? invalidMobileNumber,
    TResult Function(_PermissionDeniedFailure value)? permissionDenied,
    TResult Function(_ServerErrorFailure value)? serverError,
    TResult Function(_SomethingWentWrong value)? somethingWentWrong,
    TResult Function(_UnexpectedFailure value)? unexpected,
    required TResult orElse(),
  }) {
    if (cannotLaunchURL != null) {
      return cannotLaunchURL(this);
    }
    return orElse();
  }
}

abstract class _CannotLaunchURL implements CoreFailure {
  const factory _CannotLaunchURL() = _$CannotLaunchURLImpl;
}

/// @nodoc
abstract class _$$IgnoreWarningImplCopyWith<$Res> {
  factory _$$IgnoreWarningImplCopyWith(
          _$IgnoreWarningImpl value, $Res Function(_$IgnoreWarningImpl) then) =
      __$$IgnoreWarningImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$IgnoreWarningImplCopyWithImpl<$Res>
    extends _$CoreFailureCopyWithImpl<$Res, _$IgnoreWarningImpl>
    implements _$$IgnoreWarningImplCopyWith<$Res> {
  __$$IgnoreWarningImplCopyWithImpl(
      _$IgnoreWarningImpl _value, $Res Function(_$IgnoreWarningImpl) _then)
      : super(_value, _then);

  /// Create a copy of CoreFailure
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$IgnoreWarningImpl implements _IgnoreWarning {
  const _$IgnoreWarningImpl();

  @override
  String toString() {
    return 'CoreFailure.ignoreWarning()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$IgnoreWarningImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() cannotLaunchURL,
    required TResult Function() ignoreWarning,
    required TResult Function() invalidMobileNumber,
    required TResult Function() permissionDenied,
    required TResult Function(String message) serverError,
    required TResult Function(Object e) somethingWentWrong,
    required TResult Function() unexpected,
  }) {
    return ignoreWarning();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? cannotLaunchURL,
    TResult? Function()? ignoreWarning,
    TResult? Function()? invalidMobileNumber,
    TResult? Function()? permissionDenied,
    TResult? Function(String message)? serverError,
    TResult? Function(Object e)? somethingWentWrong,
    TResult? Function()? unexpected,
  }) {
    return ignoreWarning?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? cannotLaunchURL,
    TResult Function()? ignoreWarning,
    TResult Function()? invalidMobileNumber,
    TResult Function()? permissionDenied,
    TResult Function(String message)? serverError,
    TResult Function(Object e)? somethingWentWrong,
    TResult Function()? unexpected,
    required TResult orElse(),
  }) {
    if (ignoreWarning != null) {
      return ignoreWarning();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CannotLaunchURL value) cannotLaunchURL,
    required TResult Function(_IgnoreWarning value) ignoreWarning,
    required TResult Function(_InvalidMobileNumber value) invalidMobileNumber,
    required TResult Function(_PermissionDeniedFailure value) permissionDenied,
    required TResult Function(_ServerErrorFailure value) serverError,
    required TResult Function(_SomethingWentWrong value) somethingWentWrong,
    required TResult Function(_UnexpectedFailure value) unexpected,
  }) {
    return ignoreWarning(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_CannotLaunchURL value)? cannotLaunchURL,
    TResult? Function(_IgnoreWarning value)? ignoreWarning,
    TResult? Function(_InvalidMobileNumber value)? invalidMobileNumber,
    TResult? Function(_PermissionDeniedFailure value)? permissionDenied,
    TResult? Function(_ServerErrorFailure value)? serverError,
    TResult? Function(_SomethingWentWrong value)? somethingWentWrong,
    TResult? Function(_UnexpectedFailure value)? unexpected,
  }) {
    return ignoreWarning?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CannotLaunchURL value)? cannotLaunchURL,
    TResult Function(_IgnoreWarning value)? ignoreWarning,
    TResult Function(_InvalidMobileNumber value)? invalidMobileNumber,
    TResult Function(_PermissionDeniedFailure value)? permissionDenied,
    TResult Function(_ServerErrorFailure value)? serverError,
    TResult Function(_SomethingWentWrong value)? somethingWentWrong,
    TResult Function(_UnexpectedFailure value)? unexpected,
    required TResult orElse(),
  }) {
    if (ignoreWarning != null) {
      return ignoreWarning(this);
    }
    return orElse();
  }
}

abstract class _IgnoreWarning implements CoreFailure {
  const factory _IgnoreWarning() = _$IgnoreWarningImpl;
}

/// @nodoc
abstract class _$$InvalidMobileNumberImplCopyWith<$Res> {
  factory _$$InvalidMobileNumberImplCopyWith(_$InvalidMobileNumberImpl value,
          $Res Function(_$InvalidMobileNumberImpl) then) =
      __$$InvalidMobileNumberImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InvalidMobileNumberImplCopyWithImpl<$Res>
    extends _$CoreFailureCopyWithImpl<$Res, _$InvalidMobileNumberImpl>
    implements _$$InvalidMobileNumberImplCopyWith<$Res> {
  __$$InvalidMobileNumberImplCopyWithImpl(_$InvalidMobileNumberImpl _value,
      $Res Function(_$InvalidMobileNumberImpl) _then)
      : super(_value, _then);

  /// Create a copy of CoreFailure
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$InvalidMobileNumberImpl implements _InvalidMobileNumber {
  const _$InvalidMobileNumberImpl();

  @override
  String toString() {
    return 'CoreFailure.invalidMobileNumber()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InvalidMobileNumberImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() cannotLaunchURL,
    required TResult Function() ignoreWarning,
    required TResult Function() invalidMobileNumber,
    required TResult Function() permissionDenied,
    required TResult Function(String message) serverError,
    required TResult Function(Object e) somethingWentWrong,
    required TResult Function() unexpected,
  }) {
    return invalidMobileNumber();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? cannotLaunchURL,
    TResult? Function()? ignoreWarning,
    TResult? Function()? invalidMobileNumber,
    TResult? Function()? permissionDenied,
    TResult? Function(String message)? serverError,
    TResult? Function(Object e)? somethingWentWrong,
    TResult? Function()? unexpected,
  }) {
    return invalidMobileNumber?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? cannotLaunchURL,
    TResult Function()? ignoreWarning,
    TResult Function()? invalidMobileNumber,
    TResult Function()? permissionDenied,
    TResult Function(String message)? serverError,
    TResult Function(Object e)? somethingWentWrong,
    TResult Function()? unexpected,
    required TResult orElse(),
  }) {
    if (invalidMobileNumber != null) {
      return invalidMobileNumber();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CannotLaunchURL value) cannotLaunchURL,
    required TResult Function(_IgnoreWarning value) ignoreWarning,
    required TResult Function(_InvalidMobileNumber value) invalidMobileNumber,
    required TResult Function(_PermissionDeniedFailure value) permissionDenied,
    required TResult Function(_ServerErrorFailure value) serverError,
    required TResult Function(_SomethingWentWrong value) somethingWentWrong,
    required TResult Function(_UnexpectedFailure value) unexpected,
  }) {
    return invalidMobileNumber(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_CannotLaunchURL value)? cannotLaunchURL,
    TResult? Function(_IgnoreWarning value)? ignoreWarning,
    TResult? Function(_InvalidMobileNumber value)? invalidMobileNumber,
    TResult? Function(_PermissionDeniedFailure value)? permissionDenied,
    TResult? Function(_ServerErrorFailure value)? serverError,
    TResult? Function(_SomethingWentWrong value)? somethingWentWrong,
    TResult? Function(_UnexpectedFailure value)? unexpected,
  }) {
    return invalidMobileNumber?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CannotLaunchURL value)? cannotLaunchURL,
    TResult Function(_IgnoreWarning value)? ignoreWarning,
    TResult Function(_InvalidMobileNumber value)? invalidMobileNumber,
    TResult Function(_PermissionDeniedFailure value)? permissionDenied,
    TResult Function(_ServerErrorFailure value)? serverError,
    TResult Function(_SomethingWentWrong value)? somethingWentWrong,
    TResult Function(_UnexpectedFailure value)? unexpected,
    required TResult orElse(),
  }) {
    if (invalidMobileNumber != null) {
      return invalidMobileNumber(this);
    }
    return orElse();
  }
}

abstract class _InvalidMobileNumber implements CoreFailure {
  const factory _InvalidMobileNumber() = _$InvalidMobileNumberImpl;
}

/// @nodoc
abstract class _$$PermissionDeniedFailureImplCopyWith<$Res> {
  factory _$$PermissionDeniedFailureImplCopyWith(
          _$PermissionDeniedFailureImpl value,
          $Res Function(_$PermissionDeniedFailureImpl) then) =
      __$$PermissionDeniedFailureImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$PermissionDeniedFailureImplCopyWithImpl<$Res>
    extends _$CoreFailureCopyWithImpl<$Res, _$PermissionDeniedFailureImpl>
    implements _$$PermissionDeniedFailureImplCopyWith<$Res> {
  __$$PermissionDeniedFailureImplCopyWithImpl(
      _$PermissionDeniedFailureImpl _value,
      $Res Function(_$PermissionDeniedFailureImpl) _then)
      : super(_value, _then);

  /// Create a copy of CoreFailure
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$PermissionDeniedFailureImpl implements _PermissionDeniedFailure {
  const _$PermissionDeniedFailureImpl();

  @override
  String toString() {
    return 'CoreFailure.permissionDenied()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PermissionDeniedFailureImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() cannotLaunchURL,
    required TResult Function() ignoreWarning,
    required TResult Function() invalidMobileNumber,
    required TResult Function() permissionDenied,
    required TResult Function(String message) serverError,
    required TResult Function(Object e) somethingWentWrong,
    required TResult Function() unexpected,
  }) {
    return permissionDenied();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? cannotLaunchURL,
    TResult? Function()? ignoreWarning,
    TResult? Function()? invalidMobileNumber,
    TResult? Function()? permissionDenied,
    TResult? Function(String message)? serverError,
    TResult? Function(Object e)? somethingWentWrong,
    TResult? Function()? unexpected,
  }) {
    return permissionDenied?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? cannotLaunchURL,
    TResult Function()? ignoreWarning,
    TResult Function()? invalidMobileNumber,
    TResult Function()? permissionDenied,
    TResult Function(String message)? serverError,
    TResult Function(Object e)? somethingWentWrong,
    TResult Function()? unexpected,
    required TResult orElse(),
  }) {
    if (permissionDenied != null) {
      return permissionDenied();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CannotLaunchURL value) cannotLaunchURL,
    required TResult Function(_IgnoreWarning value) ignoreWarning,
    required TResult Function(_InvalidMobileNumber value) invalidMobileNumber,
    required TResult Function(_PermissionDeniedFailure value) permissionDenied,
    required TResult Function(_ServerErrorFailure value) serverError,
    required TResult Function(_SomethingWentWrong value) somethingWentWrong,
    required TResult Function(_UnexpectedFailure value) unexpected,
  }) {
    return permissionDenied(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_CannotLaunchURL value)? cannotLaunchURL,
    TResult? Function(_IgnoreWarning value)? ignoreWarning,
    TResult? Function(_InvalidMobileNumber value)? invalidMobileNumber,
    TResult? Function(_PermissionDeniedFailure value)? permissionDenied,
    TResult? Function(_ServerErrorFailure value)? serverError,
    TResult? Function(_SomethingWentWrong value)? somethingWentWrong,
    TResult? Function(_UnexpectedFailure value)? unexpected,
  }) {
    return permissionDenied?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CannotLaunchURL value)? cannotLaunchURL,
    TResult Function(_IgnoreWarning value)? ignoreWarning,
    TResult Function(_InvalidMobileNumber value)? invalidMobileNumber,
    TResult Function(_PermissionDeniedFailure value)? permissionDenied,
    TResult Function(_ServerErrorFailure value)? serverError,
    TResult Function(_SomethingWentWrong value)? somethingWentWrong,
    TResult Function(_UnexpectedFailure value)? unexpected,
    required TResult orElse(),
  }) {
    if (permissionDenied != null) {
      return permissionDenied(this);
    }
    return orElse();
  }
}

abstract class _PermissionDeniedFailure implements CoreFailure {
  const factory _PermissionDeniedFailure() = _$PermissionDeniedFailureImpl;
}

/// @nodoc
abstract class _$$ServerErrorFailureImplCopyWith<$Res> {
  factory _$$ServerErrorFailureImplCopyWith(_$ServerErrorFailureImpl value,
          $Res Function(_$ServerErrorFailureImpl) then) =
      __$$ServerErrorFailureImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$ServerErrorFailureImplCopyWithImpl<$Res>
    extends _$CoreFailureCopyWithImpl<$Res, _$ServerErrorFailureImpl>
    implements _$$ServerErrorFailureImplCopyWith<$Res> {
  __$$ServerErrorFailureImplCopyWithImpl(_$ServerErrorFailureImpl _value,
      $Res Function(_$ServerErrorFailureImpl) _then)
      : super(_value, _then);

  /// Create a copy of CoreFailure
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$ServerErrorFailureImpl(
      null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ServerErrorFailureImpl implements _ServerErrorFailure {
  const _$ServerErrorFailureImpl(this.message);

  @override
  final String message;

  @override
  String toString() {
    return 'CoreFailure.serverError(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ServerErrorFailureImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  /// Create a copy of CoreFailure
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ServerErrorFailureImplCopyWith<_$ServerErrorFailureImpl> get copyWith =>
      __$$ServerErrorFailureImplCopyWithImpl<_$ServerErrorFailureImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() cannotLaunchURL,
    required TResult Function() ignoreWarning,
    required TResult Function() invalidMobileNumber,
    required TResult Function() permissionDenied,
    required TResult Function(String message) serverError,
    required TResult Function(Object e) somethingWentWrong,
    required TResult Function() unexpected,
  }) {
    return serverError(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? cannotLaunchURL,
    TResult? Function()? ignoreWarning,
    TResult? Function()? invalidMobileNumber,
    TResult? Function()? permissionDenied,
    TResult? Function(String message)? serverError,
    TResult? Function(Object e)? somethingWentWrong,
    TResult? Function()? unexpected,
  }) {
    return serverError?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? cannotLaunchURL,
    TResult Function()? ignoreWarning,
    TResult Function()? invalidMobileNumber,
    TResult Function()? permissionDenied,
    TResult Function(String message)? serverError,
    TResult Function(Object e)? somethingWentWrong,
    TResult Function()? unexpected,
    required TResult orElse(),
  }) {
    if (serverError != null) {
      return serverError(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CannotLaunchURL value) cannotLaunchURL,
    required TResult Function(_IgnoreWarning value) ignoreWarning,
    required TResult Function(_InvalidMobileNumber value) invalidMobileNumber,
    required TResult Function(_PermissionDeniedFailure value) permissionDenied,
    required TResult Function(_ServerErrorFailure value) serverError,
    required TResult Function(_SomethingWentWrong value) somethingWentWrong,
    required TResult Function(_UnexpectedFailure value) unexpected,
  }) {
    return serverError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_CannotLaunchURL value)? cannotLaunchURL,
    TResult? Function(_IgnoreWarning value)? ignoreWarning,
    TResult? Function(_InvalidMobileNumber value)? invalidMobileNumber,
    TResult? Function(_PermissionDeniedFailure value)? permissionDenied,
    TResult? Function(_ServerErrorFailure value)? serverError,
    TResult? Function(_SomethingWentWrong value)? somethingWentWrong,
    TResult? Function(_UnexpectedFailure value)? unexpected,
  }) {
    return serverError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CannotLaunchURL value)? cannotLaunchURL,
    TResult Function(_IgnoreWarning value)? ignoreWarning,
    TResult Function(_InvalidMobileNumber value)? invalidMobileNumber,
    TResult Function(_PermissionDeniedFailure value)? permissionDenied,
    TResult Function(_ServerErrorFailure value)? serverError,
    TResult Function(_SomethingWentWrong value)? somethingWentWrong,
    TResult Function(_UnexpectedFailure value)? unexpected,
    required TResult orElse(),
  }) {
    if (serverError != null) {
      return serverError(this);
    }
    return orElse();
  }
}

abstract class _ServerErrorFailure implements CoreFailure {
  const factory _ServerErrorFailure(final String message) =
      _$ServerErrorFailureImpl;

  String get message;

  /// Create a copy of CoreFailure
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ServerErrorFailureImplCopyWith<_$ServerErrorFailureImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SomethingWentWrongImplCopyWith<$Res> {
  factory _$$SomethingWentWrongImplCopyWith(_$SomethingWentWrongImpl value,
          $Res Function(_$SomethingWentWrongImpl) then) =
      __$$SomethingWentWrongImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Object e});
}

/// @nodoc
class __$$SomethingWentWrongImplCopyWithImpl<$Res>
    extends _$CoreFailureCopyWithImpl<$Res, _$SomethingWentWrongImpl>
    implements _$$SomethingWentWrongImplCopyWith<$Res> {
  __$$SomethingWentWrongImplCopyWithImpl(_$SomethingWentWrongImpl _value,
      $Res Function(_$SomethingWentWrongImpl) _then)
      : super(_value, _then);

  /// Create a copy of CoreFailure
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? e = null,
  }) {
    return _then(_$SomethingWentWrongImpl(
      null == e ? _value.e : e,
    ));
  }
}

/// @nodoc

class _$SomethingWentWrongImpl implements _SomethingWentWrong {
  const _$SomethingWentWrongImpl(this.e);

  @override
  final Object e;

  @override
  String toString() {
    return 'CoreFailure.somethingWentWrong(e: $e)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SomethingWentWrongImpl &&
            const DeepCollectionEquality().equals(other.e, e));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(e));

  /// Create a copy of CoreFailure
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SomethingWentWrongImplCopyWith<_$SomethingWentWrongImpl> get copyWith =>
      __$$SomethingWentWrongImplCopyWithImpl<_$SomethingWentWrongImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() cannotLaunchURL,
    required TResult Function() ignoreWarning,
    required TResult Function() invalidMobileNumber,
    required TResult Function() permissionDenied,
    required TResult Function(String message) serverError,
    required TResult Function(Object e) somethingWentWrong,
    required TResult Function() unexpected,
  }) {
    return somethingWentWrong(e);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? cannotLaunchURL,
    TResult? Function()? ignoreWarning,
    TResult? Function()? invalidMobileNumber,
    TResult? Function()? permissionDenied,
    TResult? Function(String message)? serverError,
    TResult? Function(Object e)? somethingWentWrong,
    TResult? Function()? unexpected,
  }) {
    return somethingWentWrong?.call(e);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? cannotLaunchURL,
    TResult Function()? ignoreWarning,
    TResult Function()? invalidMobileNumber,
    TResult Function()? permissionDenied,
    TResult Function(String message)? serverError,
    TResult Function(Object e)? somethingWentWrong,
    TResult Function()? unexpected,
    required TResult orElse(),
  }) {
    if (somethingWentWrong != null) {
      return somethingWentWrong(e);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CannotLaunchURL value) cannotLaunchURL,
    required TResult Function(_IgnoreWarning value) ignoreWarning,
    required TResult Function(_InvalidMobileNumber value) invalidMobileNumber,
    required TResult Function(_PermissionDeniedFailure value) permissionDenied,
    required TResult Function(_ServerErrorFailure value) serverError,
    required TResult Function(_SomethingWentWrong value) somethingWentWrong,
    required TResult Function(_UnexpectedFailure value) unexpected,
  }) {
    return somethingWentWrong(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_CannotLaunchURL value)? cannotLaunchURL,
    TResult? Function(_IgnoreWarning value)? ignoreWarning,
    TResult? Function(_InvalidMobileNumber value)? invalidMobileNumber,
    TResult? Function(_PermissionDeniedFailure value)? permissionDenied,
    TResult? Function(_ServerErrorFailure value)? serverError,
    TResult? Function(_SomethingWentWrong value)? somethingWentWrong,
    TResult? Function(_UnexpectedFailure value)? unexpected,
  }) {
    return somethingWentWrong?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CannotLaunchURL value)? cannotLaunchURL,
    TResult Function(_IgnoreWarning value)? ignoreWarning,
    TResult Function(_InvalidMobileNumber value)? invalidMobileNumber,
    TResult Function(_PermissionDeniedFailure value)? permissionDenied,
    TResult Function(_ServerErrorFailure value)? serverError,
    TResult Function(_SomethingWentWrong value)? somethingWentWrong,
    TResult Function(_UnexpectedFailure value)? unexpected,
    required TResult orElse(),
  }) {
    if (somethingWentWrong != null) {
      return somethingWentWrong(this);
    }
    return orElse();
  }
}

abstract class _SomethingWentWrong implements CoreFailure {
  const factory _SomethingWentWrong(final Object e) = _$SomethingWentWrongImpl;

  Object get e;

  /// Create a copy of CoreFailure
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SomethingWentWrongImplCopyWith<_$SomethingWentWrongImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UnexpectedFailureImplCopyWith<$Res> {
  factory _$$UnexpectedFailureImplCopyWith(_$UnexpectedFailureImpl value,
          $Res Function(_$UnexpectedFailureImpl) then) =
      __$$UnexpectedFailureImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$UnexpectedFailureImplCopyWithImpl<$Res>
    extends _$CoreFailureCopyWithImpl<$Res, _$UnexpectedFailureImpl>
    implements _$$UnexpectedFailureImplCopyWith<$Res> {
  __$$UnexpectedFailureImplCopyWithImpl(_$UnexpectedFailureImpl _value,
      $Res Function(_$UnexpectedFailureImpl) _then)
      : super(_value, _then);

  /// Create a copy of CoreFailure
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$UnexpectedFailureImpl implements _UnexpectedFailure {
  const _$UnexpectedFailureImpl();

  @override
  String toString() {
    return 'CoreFailure.unexpected()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$UnexpectedFailureImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() cannotLaunchURL,
    required TResult Function() ignoreWarning,
    required TResult Function() invalidMobileNumber,
    required TResult Function() permissionDenied,
    required TResult Function(String message) serverError,
    required TResult Function(Object e) somethingWentWrong,
    required TResult Function() unexpected,
  }) {
    return unexpected();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? cannotLaunchURL,
    TResult? Function()? ignoreWarning,
    TResult? Function()? invalidMobileNumber,
    TResult? Function()? permissionDenied,
    TResult? Function(String message)? serverError,
    TResult? Function(Object e)? somethingWentWrong,
    TResult? Function()? unexpected,
  }) {
    return unexpected?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? cannotLaunchURL,
    TResult Function()? ignoreWarning,
    TResult Function()? invalidMobileNumber,
    TResult Function()? permissionDenied,
    TResult Function(String message)? serverError,
    TResult Function(Object e)? somethingWentWrong,
    TResult Function()? unexpected,
    required TResult orElse(),
  }) {
    if (unexpected != null) {
      return unexpected();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CannotLaunchURL value) cannotLaunchURL,
    required TResult Function(_IgnoreWarning value) ignoreWarning,
    required TResult Function(_InvalidMobileNumber value) invalidMobileNumber,
    required TResult Function(_PermissionDeniedFailure value) permissionDenied,
    required TResult Function(_ServerErrorFailure value) serverError,
    required TResult Function(_SomethingWentWrong value) somethingWentWrong,
    required TResult Function(_UnexpectedFailure value) unexpected,
  }) {
    return unexpected(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_CannotLaunchURL value)? cannotLaunchURL,
    TResult? Function(_IgnoreWarning value)? ignoreWarning,
    TResult? Function(_InvalidMobileNumber value)? invalidMobileNumber,
    TResult? Function(_PermissionDeniedFailure value)? permissionDenied,
    TResult? Function(_ServerErrorFailure value)? serverError,
    TResult? Function(_SomethingWentWrong value)? somethingWentWrong,
    TResult? Function(_UnexpectedFailure value)? unexpected,
  }) {
    return unexpected?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CannotLaunchURL value)? cannotLaunchURL,
    TResult Function(_IgnoreWarning value)? ignoreWarning,
    TResult Function(_InvalidMobileNumber value)? invalidMobileNumber,
    TResult Function(_PermissionDeniedFailure value)? permissionDenied,
    TResult Function(_ServerErrorFailure value)? serverError,
    TResult Function(_SomethingWentWrong value)? somethingWentWrong,
    TResult Function(_UnexpectedFailure value)? unexpected,
    required TResult orElse(),
  }) {
    if (unexpected != null) {
      return unexpected(this);
    }
    return orElse();
  }
}

abstract class _UnexpectedFailure implements CoreFailure {
  const factory _UnexpectedFailure() = _$UnexpectedFailureImpl;
}

/// @nodoc
mixin _$NetworkFailure {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() timeout,
    required TResult Function() noInternet,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? timeout,
    TResult? Function()? noInternet,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? timeout,
    TResult Function()? noInternet,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_NetworkTimeoutFailure value) timeout,
    required TResult Function(_NetworkNoInternetFailure value) noInternet,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_NetworkTimeoutFailure value)? timeout,
    TResult? Function(_NetworkNoInternetFailure value)? noInternet,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_NetworkTimeoutFailure value)? timeout,
    TResult Function(_NetworkNoInternetFailure value)? noInternet,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NetworkFailureCopyWith<$Res> {
  factory $NetworkFailureCopyWith(
          NetworkFailure value, $Res Function(NetworkFailure) then) =
      _$NetworkFailureCopyWithImpl<$Res, NetworkFailure>;
}

/// @nodoc
class _$NetworkFailureCopyWithImpl<$Res, $Val extends NetworkFailure>
    implements $NetworkFailureCopyWith<$Res> {
  _$NetworkFailureCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of NetworkFailure
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$NetworkTimeoutFailureImplCopyWith<$Res> {
  factory _$$NetworkTimeoutFailureImplCopyWith(
          _$NetworkTimeoutFailureImpl value,
          $Res Function(_$NetworkTimeoutFailureImpl) then) =
      __$$NetworkTimeoutFailureImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$NetworkTimeoutFailureImplCopyWithImpl<$Res>
    extends _$NetworkFailureCopyWithImpl<$Res, _$NetworkTimeoutFailureImpl>
    implements _$$NetworkTimeoutFailureImplCopyWith<$Res> {
  __$$NetworkTimeoutFailureImplCopyWithImpl(_$NetworkTimeoutFailureImpl _value,
      $Res Function(_$NetworkTimeoutFailureImpl) _then)
      : super(_value, _then);

  /// Create a copy of NetworkFailure
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$NetworkTimeoutFailureImpl implements _NetworkTimeoutFailure {
  const _$NetworkTimeoutFailureImpl();

  @override
  String toString() {
    return 'NetworkFailure.timeout()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NetworkTimeoutFailureImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() timeout,
    required TResult Function() noInternet,
  }) {
    return timeout();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? timeout,
    TResult? Function()? noInternet,
  }) {
    return timeout?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? timeout,
    TResult Function()? noInternet,
    required TResult orElse(),
  }) {
    if (timeout != null) {
      return timeout();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_NetworkTimeoutFailure value) timeout,
    required TResult Function(_NetworkNoInternetFailure value) noInternet,
  }) {
    return timeout(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_NetworkTimeoutFailure value)? timeout,
    TResult? Function(_NetworkNoInternetFailure value)? noInternet,
  }) {
    return timeout?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_NetworkTimeoutFailure value)? timeout,
    TResult Function(_NetworkNoInternetFailure value)? noInternet,
    required TResult orElse(),
  }) {
    if (timeout != null) {
      return timeout(this);
    }
    return orElse();
  }
}

abstract class _NetworkTimeoutFailure implements NetworkFailure {
  const factory _NetworkTimeoutFailure() = _$NetworkTimeoutFailureImpl;
}

/// @nodoc
abstract class _$$NetworkNoInternetFailureImplCopyWith<$Res> {
  factory _$$NetworkNoInternetFailureImplCopyWith(
          _$NetworkNoInternetFailureImpl value,
          $Res Function(_$NetworkNoInternetFailureImpl) then) =
      __$$NetworkNoInternetFailureImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$NetworkNoInternetFailureImplCopyWithImpl<$Res>
    extends _$NetworkFailureCopyWithImpl<$Res, _$NetworkNoInternetFailureImpl>
    implements _$$NetworkNoInternetFailureImplCopyWith<$Res> {
  __$$NetworkNoInternetFailureImplCopyWithImpl(
      _$NetworkNoInternetFailureImpl _value,
      $Res Function(_$NetworkNoInternetFailureImpl) _then)
      : super(_value, _then);

  /// Create a copy of NetworkFailure
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$NetworkNoInternetFailureImpl implements _NetworkNoInternetFailure {
  const _$NetworkNoInternetFailureImpl();

  @override
  String toString() {
    return 'NetworkFailure.noInternet()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NetworkNoInternetFailureImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() timeout,
    required TResult Function() noInternet,
  }) {
    return noInternet();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? timeout,
    TResult? Function()? noInternet,
  }) {
    return noInternet?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? timeout,
    TResult Function()? noInternet,
    required TResult orElse(),
  }) {
    if (noInternet != null) {
      return noInternet();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_NetworkTimeoutFailure value) timeout,
    required TResult Function(_NetworkNoInternetFailure value) noInternet,
  }) {
    return noInternet(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_NetworkTimeoutFailure value)? timeout,
    TResult? Function(_NetworkNoInternetFailure value)? noInternet,
  }) {
    return noInternet?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_NetworkTimeoutFailure value)? timeout,
    TResult Function(_NetworkNoInternetFailure value)? noInternet,
    required TResult orElse(),
  }) {
    if (noInternet != null) {
      return noInternet(this);
    }
    return orElse();
  }
}

abstract class _NetworkNoInternetFailure implements NetworkFailure {
  const factory _NetworkNoInternetFailure() = _$NetworkNoInternetFailureImpl;
}

/// @nodoc
mixin _$StorageFailure {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() notFound,
    required TResult Function() unableToUpdate,
    required TResult Function() unableToCreate,
    required TResult Function() unableToDelete,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? notFound,
    TResult? Function()? unableToUpdate,
    TResult? Function()? unableToCreate,
    TResult? Function()? unableToDelete,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? notFound,
    TResult Function()? unableToUpdate,
    TResult Function()? unableToCreate,
    TResult Function()? unableToDelete,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_NotFound value) notFound,
    required TResult Function(_UnableToUpdate value) unableToUpdate,
    required TResult Function(_UnableToCreate value) unableToCreate,
    required TResult Function(_UnableToDelete value) unableToDelete,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_NotFound value)? notFound,
    TResult? Function(_UnableToUpdate value)? unableToUpdate,
    TResult? Function(_UnableToCreate value)? unableToCreate,
    TResult? Function(_UnableToDelete value)? unableToDelete,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_NotFound value)? notFound,
    TResult Function(_UnableToUpdate value)? unableToUpdate,
    TResult Function(_UnableToCreate value)? unableToCreate,
    TResult Function(_UnableToDelete value)? unableToDelete,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StorageFailureCopyWith<$Res> {
  factory $StorageFailureCopyWith(
          StorageFailure value, $Res Function(StorageFailure) then) =
      _$StorageFailureCopyWithImpl<$Res, StorageFailure>;
}

/// @nodoc
class _$StorageFailureCopyWithImpl<$Res, $Val extends StorageFailure>
    implements $StorageFailureCopyWith<$Res> {
  _$StorageFailureCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of StorageFailure
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$NotFoundImplCopyWith<$Res> {
  factory _$$NotFoundImplCopyWith(
          _$NotFoundImpl value, $Res Function(_$NotFoundImpl) then) =
      __$$NotFoundImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$NotFoundImplCopyWithImpl<$Res>
    extends _$StorageFailureCopyWithImpl<$Res, _$NotFoundImpl>
    implements _$$NotFoundImplCopyWith<$Res> {
  __$$NotFoundImplCopyWithImpl(
      _$NotFoundImpl _value, $Res Function(_$NotFoundImpl) _then)
      : super(_value, _then);

  /// Create a copy of StorageFailure
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$NotFoundImpl implements _NotFound {
  const _$NotFoundImpl();

  @override
  String toString() {
    return 'StorageFailure.notFound()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$NotFoundImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() notFound,
    required TResult Function() unableToUpdate,
    required TResult Function() unableToCreate,
    required TResult Function() unableToDelete,
  }) {
    return notFound();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? notFound,
    TResult? Function()? unableToUpdate,
    TResult? Function()? unableToCreate,
    TResult? Function()? unableToDelete,
  }) {
    return notFound?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? notFound,
    TResult Function()? unableToUpdate,
    TResult Function()? unableToCreate,
    TResult Function()? unableToDelete,
    required TResult orElse(),
  }) {
    if (notFound != null) {
      return notFound();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_NotFound value) notFound,
    required TResult Function(_UnableToUpdate value) unableToUpdate,
    required TResult Function(_UnableToCreate value) unableToCreate,
    required TResult Function(_UnableToDelete value) unableToDelete,
  }) {
    return notFound(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_NotFound value)? notFound,
    TResult? Function(_UnableToUpdate value)? unableToUpdate,
    TResult? Function(_UnableToCreate value)? unableToCreate,
    TResult? Function(_UnableToDelete value)? unableToDelete,
  }) {
    return notFound?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_NotFound value)? notFound,
    TResult Function(_UnableToUpdate value)? unableToUpdate,
    TResult Function(_UnableToCreate value)? unableToCreate,
    TResult Function(_UnableToDelete value)? unableToDelete,
    required TResult orElse(),
  }) {
    if (notFound != null) {
      return notFound(this);
    }
    return orElse();
  }
}

abstract class _NotFound implements StorageFailure {
  const factory _NotFound() = _$NotFoundImpl;
}

/// @nodoc
abstract class _$$UnableToUpdateImplCopyWith<$Res> {
  factory _$$UnableToUpdateImplCopyWith(_$UnableToUpdateImpl value,
          $Res Function(_$UnableToUpdateImpl) then) =
      __$$UnableToUpdateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$UnableToUpdateImplCopyWithImpl<$Res>
    extends _$StorageFailureCopyWithImpl<$Res, _$UnableToUpdateImpl>
    implements _$$UnableToUpdateImplCopyWith<$Res> {
  __$$UnableToUpdateImplCopyWithImpl(
      _$UnableToUpdateImpl _value, $Res Function(_$UnableToUpdateImpl) _then)
      : super(_value, _then);

  /// Create a copy of StorageFailure
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$UnableToUpdateImpl implements _UnableToUpdate {
  const _$UnableToUpdateImpl();

  @override
  String toString() {
    return 'StorageFailure.unableToUpdate()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$UnableToUpdateImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() notFound,
    required TResult Function() unableToUpdate,
    required TResult Function() unableToCreate,
    required TResult Function() unableToDelete,
  }) {
    return unableToUpdate();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? notFound,
    TResult? Function()? unableToUpdate,
    TResult? Function()? unableToCreate,
    TResult? Function()? unableToDelete,
  }) {
    return unableToUpdate?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? notFound,
    TResult Function()? unableToUpdate,
    TResult Function()? unableToCreate,
    TResult Function()? unableToDelete,
    required TResult orElse(),
  }) {
    if (unableToUpdate != null) {
      return unableToUpdate();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_NotFound value) notFound,
    required TResult Function(_UnableToUpdate value) unableToUpdate,
    required TResult Function(_UnableToCreate value) unableToCreate,
    required TResult Function(_UnableToDelete value) unableToDelete,
  }) {
    return unableToUpdate(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_NotFound value)? notFound,
    TResult? Function(_UnableToUpdate value)? unableToUpdate,
    TResult? Function(_UnableToCreate value)? unableToCreate,
    TResult? Function(_UnableToDelete value)? unableToDelete,
  }) {
    return unableToUpdate?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_NotFound value)? notFound,
    TResult Function(_UnableToUpdate value)? unableToUpdate,
    TResult Function(_UnableToCreate value)? unableToCreate,
    TResult Function(_UnableToDelete value)? unableToDelete,
    required TResult orElse(),
  }) {
    if (unableToUpdate != null) {
      return unableToUpdate(this);
    }
    return orElse();
  }
}

abstract class _UnableToUpdate implements StorageFailure {
  const factory _UnableToUpdate() = _$UnableToUpdateImpl;
}

/// @nodoc
abstract class _$$UnableToCreateImplCopyWith<$Res> {
  factory _$$UnableToCreateImplCopyWith(_$UnableToCreateImpl value,
          $Res Function(_$UnableToCreateImpl) then) =
      __$$UnableToCreateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$UnableToCreateImplCopyWithImpl<$Res>
    extends _$StorageFailureCopyWithImpl<$Res, _$UnableToCreateImpl>
    implements _$$UnableToCreateImplCopyWith<$Res> {
  __$$UnableToCreateImplCopyWithImpl(
      _$UnableToCreateImpl _value, $Res Function(_$UnableToCreateImpl) _then)
      : super(_value, _then);

  /// Create a copy of StorageFailure
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$UnableToCreateImpl implements _UnableToCreate {
  const _$UnableToCreateImpl();

  @override
  String toString() {
    return 'StorageFailure.unableToCreate()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$UnableToCreateImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() notFound,
    required TResult Function() unableToUpdate,
    required TResult Function() unableToCreate,
    required TResult Function() unableToDelete,
  }) {
    return unableToCreate();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? notFound,
    TResult? Function()? unableToUpdate,
    TResult? Function()? unableToCreate,
    TResult? Function()? unableToDelete,
  }) {
    return unableToCreate?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? notFound,
    TResult Function()? unableToUpdate,
    TResult Function()? unableToCreate,
    TResult Function()? unableToDelete,
    required TResult orElse(),
  }) {
    if (unableToCreate != null) {
      return unableToCreate();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_NotFound value) notFound,
    required TResult Function(_UnableToUpdate value) unableToUpdate,
    required TResult Function(_UnableToCreate value) unableToCreate,
    required TResult Function(_UnableToDelete value) unableToDelete,
  }) {
    return unableToCreate(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_NotFound value)? notFound,
    TResult? Function(_UnableToUpdate value)? unableToUpdate,
    TResult? Function(_UnableToCreate value)? unableToCreate,
    TResult? Function(_UnableToDelete value)? unableToDelete,
  }) {
    return unableToCreate?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_NotFound value)? notFound,
    TResult Function(_UnableToUpdate value)? unableToUpdate,
    TResult Function(_UnableToCreate value)? unableToCreate,
    TResult Function(_UnableToDelete value)? unableToDelete,
    required TResult orElse(),
  }) {
    if (unableToCreate != null) {
      return unableToCreate(this);
    }
    return orElse();
  }
}

abstract class _UnableToCreate implements StorageFailure {
  const factory _UnableToCreate() = _$UnableToCreateImpl;
}

/// @nodoc
abstract class _$$UnableToDeleteImplCopyWith<$Res> {
  factory _$$UnableToDeleteImplCopyWith(_$UnableToDeleteImpl value,
          $Res Function(_$UnableToDeleteImpl) then) =
      __$$UnableToDeleteImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$UnableToDeleteImplCopyWithImpl<$Res>
    extends _$StorageFailureCopyWithImpl<$Res, _$UnableToDeleteImpl>
    implements _$$UnableToDeleteImplCopyWith<$Res> {
  __$$UnableToDeleteImplCopyWithImpl(
      _$UnableToDeleteImpl _value, $Res Function(_$UnableToDeleteImpl) _then)
      : super(_value, _then);

  /// Create a copy of StorageFailure
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$UnableToDeleteImpl implements _UnableToDelete {
  const _$UnableToDeleteImpl();

  @override
  String toString() {
    return 'StorageFailure.unableToDelete()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$UnableToDeleteImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() notFound,
    required TResult Function() unableToUpdate,
    required TResult Function() unableToCreate,
    required TResult Function() unableToDelete,
  }) {
    return unableToDelete();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? notFound,
    TResult? Function()? unableToUpdate,
    TResult? Function()? unableToCreate,
    TResult? Function()? unableToDelete,
  }) {
    return unableToDelete?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? notFound,
    TResult Function()? unableToUpdate,
    TResult Function()? unableToCreate,
    TResult Function()? unableToDelete,
    required TResult orElse(),
  }) {
    if (unableToDelete != null) {
      return unableToDelete();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_NotFound value) notFound,
    required TResult Function(_UnableToUpdate value) unableToUpdate,
    required TResult Function(_UnableToCreate value) unableToCreate,
    required TResult Function(_UnableToDelete value) unableToDelete,
  }) {
    return unableToDelete(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_NotFound value)? notFound,
    TResult? Function(_UnableToUpdate value)? unableToUpdate,
    TResult? Function(_UnableToCreate value)? unableToCreate,
    TResult? Function(_UnableToDelete value)? unableToDelete,
  }) {
    return unableToDelete?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_NotFound value)? notFound,
    TResult Function(_UnableToUpdate value)? unableToUpdate,
    TResult Function(_UnableToCreate value)? unableToCreate,
    TResult Function(_UnableToDelete value)? unableToDelete,
    required TResult orElse(),
  }) {
    if (unableToDelete != null) {
      return unableToDelete(this);
    }
    return orElse();
  }
}

abstract class _UnableToDelete implements StorageFailure {
  const factory _UnableToDelete() = _$UnableToDeleteImpl;
}

/// @nodoc
mixin _$AuthenticationFailure {
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function() $default, {
    required TResult Function() tokenExpired,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function()? $default, {
    TResult? Function()? tokenExpired,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function()? $default, {
    TResult Function()? tokenExpired,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_AuthenticationFailure value) $default, {
    required TResult Function(_TokenExpired value) tokenExpired,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_AuthenticationFailure value)? $default, {
    TResult? Function(_TokenExpired value)? tokenExpired,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_AuthenticationFailure value)? $default, {
    TResult Function(_TokenExpired value)? tokenExpired,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthenticationFailureCopyWith<$Res> {
  factory $AuthenticationFailureCopyWith(AuthenticationFailure value,
          $Res Function(AuthenticationFailure) then) =
      _$AuthenticationFailureCopyWithImpl<$Res, AuthenticationFailure>;
}

/// @nodoc
class _$AuthenticationFailureCopyWithImpl<$Res,
        $Val extends AuthenticationFailure>
    implements $AuthenticationFailureCopyWith<$Res> {
  _$AuthenticationFailureCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AuthenticationFailure
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$AuthenticationFailureImplCopyWith<$Res> {
  factory _$$AuthenticationFailureImplCopyWith(
          _$AuthenticationFailureImpl value,
          $Res Function(_$AuthenticationFailureImpl) then) =
      __$$AuthenticationFailureImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$AuthenticationFailureImplCopyWithImpl<$Res>
    extends _$AuthenticationFailureCopyWithImpl<$Res,
        _$AuthenticationFailureImpl>
    implements _$$AuthenticationFailureImplCopyWith<$Res> {
  __$$AuthenticationFailureImplCopyWithImpl(_$AuthenticationFailureImpl _value,
      $Res Function(_$AuthenticationFailureImpl) _then)
      : super(_value, _then);

  /// Create a copy of AuthenticationFailure
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$AuthenticationFailureImpl implements _AuthenticationFailure {
  const _$AuthenticationFailureImpl();

  @override
  String toString() {
    return 'AuthenticationFailure()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AuthenticationFailureImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function() $default, {
    required TResult Function() tokenExpired,
  }) {
    return $default();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function()? $default, {
    TResult? Function()? tokenExpired,
  }) {
    return $default?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function()? $default, {
    TResult Function()? tokenExpired,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_AuthenticationFailure value) $default, {
    required TResult Function(_TokenExpired value) tokenExpired,
  }) {
    return $default(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_AuthenticationFailure value)? $default, {
    TResult? Function(_TokenExpired value)? tokenExpired,
  }) {
    return $default?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_AuthenticationFailure value)? $default, {
    TResult Function(_TokenExpired value)? tokenExpired,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(this);
    }
    return orElse();
  }
}

abstract class _AuthenticationFailure implements AuthenticationFailure {
  const factory _AuthenticationFailure() = _$AuthenticationFailureImpl;
}

/// @nodoc
abstract class _$$TokenExpiredImplCopyWith<$Res> {
  factory _$$TokenExpiredImplCopyWith(
          _$TokenExpiredImpl value, $Res Function(_$TokenExpiredImpl) then) =
      __$$TokenExpiredImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$TokenExpiredImplCopyWithImpl<$Res>
    extends _$AuthenticationFailureCopyWithImpl<$Res, _$TokenExpiredImpl>
    implements _$$TokenExpiredImplCopyWith<$Res> {
  __$$TokenExpiredImplCopyWithImpl(
      _$TokenExpiredImpl _value, $Res Function(_$TokenExpiredImpl) _then)
      : super(_value, _then);

  /// Create a copy of AuthenticationFailure
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$TokenExpiredImpl implements _TokenExpired {
  const _$TokenExpiredImpl();

  @override
  String toString() {
    return 'AuthenticationFailure.tokenExpired()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$TokenExpiredImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function() $default, {
    required TResult Function() tokenExpired,
  }) {
    return tokenExpired();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function()? $default, {
    TResult? Function()? tokenExpired,
  }) {
    return tokenExpired?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function()? $default, {
    TResult Function()? tokenExpired,
    required TResult orElse(),
  }) {
    if (tokenExpired != null) {
      return tokenExpired();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_AuthenticationFailure value) $default, {
    required TResult Function(_TokenExpired value) tokenExpired,
  }) {
    return tokenExpired(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_AuthenticationFailure value)? $default, {
    TResult? Function(_TokenExpired value)? tokenExpired,
  }) {
    return tokenExpired?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_AuthenticationFailure value)? $default, {
    TResult Function(_TokenExpired value)? tokenExpired,
    required TResult orElse(),
  }) {
    if (tokenExpired != null) {
      return tokenExpired(this);
    }
    return orElse();
  }
}

abstract class _TokenExpired implements AuthenticationFailure {
  const factory _TokenExpired() = _$TokenExpiredImpl;
}
