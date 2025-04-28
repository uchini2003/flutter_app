import 'package:freezed_annotation/freezed_annotation.dart';

part 'failure.freezed.dart';

@freezed
class Failure with _$Failure {
  const factory Failure.core(CoreFailure failure) = _CoreFailure;
  const factory Failure.network(NetworkFailure failure) = _NetworkFailure;
  const factory Failure.storage(StorageFailure failure) = _StorageFailure;
  const factory Failure.authentication(AuthenticationFailure failure) = _AuthenticationFailure;
}

@freezed
class CoreFailure with _$CoreFailure {
  const factory CoreFailure.cannotLaunchURL() = _CannotLaunchURL;
  const factory CoreFailure.ignoreWarning() = _IgnoreWarning;
  const factory CoreFailure.invalidMobileNumber() = _InvalidMobileNumber;
  const factory CoreFailure.permissionDenied() = _PermissionDeniedFailure;
  const factory CoreFailure.serverError(String message) = _ServerErrorFailure;
  const factory CoreFailure.somethingWentWrong(Object e) = _SomethingWentWrong;
  const factory CoreFailure.unexpected() = _UnexpectedFailure;
}

@freezed
class NetworkFailure with _$NetworkFailure {
  const factory NetworkFailure.timeout() = _NetworkTimeoutFailure;
  const factory NetworkFailure.noInternet() = _NetworkNoInternetFailure;
}

@freezed
class StorageFailure with _$StorageFailure {
  const factory StorageFailure.notFound() = _NotFound;
  const factory StorageFailure.unableToUpdate() = _UnableToUpdate;
  const factory StorageFailure.unableToCreate() = _UnableToCreate;
  const factory StorageFailure.unableToDelete() = _UnableToDelete;
}

@freezed
class AuthenticationFailure with _$AuthenticationFailure {
  const factory AuthenticationFailure() = _AuthenticationFailure;
  const factory AuthenticationFailure.tokenExpired() = _TokenExpired;
}

//organizes different kinds of errors nicely so your app can know exactly what went wrong and handle it easily.