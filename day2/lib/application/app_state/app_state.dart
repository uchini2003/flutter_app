import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'app_state.freezed.dart';

@freezed
class AppState with _$AppState {
  const factory AppState({
    // main stated of the app
    required bool loggedIn,
    required String accessToken,
    required Option<bool> isAppStarted,
    required bool isLoading,
  }) = _AppState;