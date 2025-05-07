import 'package:dartz/dartz.dart';

import '../../domain/authentication/i_authentication_repository.dart';
import '../../domain/authentication/login/login_request.dart';
import '../../domain/authentication/login/login_response.dart';
import '../../domain/core/authentication_failure.dart';
import '../../domain/core/core_failure.dart';
import '../../domain/core/failure.dart';
import '../../utils/log_utils.dart';
import '../core/api_helper.dart';
import 'login/login_response_dto.dart';

class AuthenticationRepository implements IAuthenticationRepository {
  AuthenticationRepository(this._apiHelper);

  final ApiHelper _apiHelper;
  static final _logUtils = LogUtils(
    featureName: 'AuthenticationRepository',
    printLog: true,
  );

  @override
  Future<Either<Failure, LoginResponse>> login(LoginRequest request) async {
    try {
      var res = await _apiHelper.request(
        HttpMethod.post,
        "/login",
        addDefaultParams: false,
        data: {
          "username": request.username,
          "password": request.password,
        },
        headers: {
          "Content-Type": "application/json",
          "Accept": "application/json",
        },
    
      );
      if (res.isSuccess) {
        // final response = LoginResponseDto.fromJson(res.data);

        return right(
          LoginResponse.empty()
        );
      } else {
        _logUtils.log('api  :: ${res.isSuccess}');
        if (res.code == 401) {
          return left(const Failure.authentication(
            AuthenticationFailure.tokenExpired(),
          ));
        } else {
          return left(
            Failure.core(
              CoreFailure.serverError(res.info ?? res.code.toString()),
            ),
          );
        }
      }
    } catch (e) {
      _logUtils.log('left  :: ${e.toString()}');
      return left(
        Failure.core(CoreFailure.somethingWentWrong(e)),
      );
    }
  }
}
