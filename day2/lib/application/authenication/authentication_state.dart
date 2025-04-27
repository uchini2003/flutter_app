import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import '../../domain/core/failure.dart';

part 'authentication_state.freezed.dart';

@freezed
class AuthenticationState with _$AuthenticationState {
  const factory AuthenticationState({
    required bool isLoading,
    required String email,
    required String password,
    required Option<bool> responseData,
    required Option<Failure> responseFailure,
  }) = _AuthenticationState;
