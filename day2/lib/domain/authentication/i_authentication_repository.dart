import 'package:dartz/dartz.dart';

import '../core/failure.dart';

abstract class IAuthenticationRepository {
  Future<Either<Failure, bool>> login(String email, String password);
}