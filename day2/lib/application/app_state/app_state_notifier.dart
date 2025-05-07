import 'package:dartz/dartz.dart'; 
import 'package:hooks_riverpod/hooks_riverpod.dart'; 

import '../../domain/core/i_local_repository.dart'; 
import '../../domain/core/values/constants.dart'; 
import '../../utils/log_utils.dart'; 
import '../../utils/string_extensions.dart'; 
import '../../presentation/routes/app_router.gr.dart'; 
import '../../presentation/core/app.dart';
import 'app_state.dart'; 

class AppStateNotifier extends StateNotifier<AppState> {
  
  AppStateNotifier(this._localRepository) : super(AppState.initial()) {
    _logUtils.log("init"); 
  }

  static final LogUtils _logUtils = LogUtils(
    featureName: "AppStateNotifier",
    printLog: true,
  );

  final ILocalRepository _localRepository;

  @override
  void dispose() {
    _logUtils.log("dispose"); 
    super.dispose();
  }

    //runs when the app starts
  Future<void> appStart() async {
    _logUtils.log("appStart :: before state : $state");

    state = state.copyWith(
      isLoading: true,
      isAppStarted: none(),
    );

    // Check if user is logged in (from local storage)
    final isLoggedIn = (await _localRepository.read(StorageKeys.isLoggedIn))
        .getOrElse(() => false.toString())
        .toBool();

    if (!isLoggedIn) {
      // If not logged in, stop loading and update state
      state = state.copyWith(
        isLoading: false,
        loggedIn: false,
        isAppStarted: some(true),
      );
      _logUtils.log("appStart :: after state !isLoggedIn : $state");
      return;
    } else {
      // If logged in, get the saved token
      final token =
          (await _localRepository.read(StorageKeys.token)).getOrElse(() => '');

      // Update state with login info
      state = state.copyWith(
        isLoading: false,
        loggedIn: isLoggedIn,
        accessToken: token,
        isAppStarted: some(true),
      );

      _logUtils.log("appStart :: after state : $state");
    }
  }

    // This function runs when user logs in successfully
  Future<void> loginSuccess() async {
    _logUtils.log("login success");

    // Save login info in local storage
    await _localRepository.createOrUpdate(
        StorageKeys.isLoggedIn, true.toString());

    // Save a mock token (in real app, this would come from server)
    await _localRepository.createOrUpdate(
        StorageKeys.token, "mock_user_token_123");

    // Update app state
    state = state.copyWith(
      loggedIn: true,
      accessToken: "mock_user_token_123",
      isAppStarted: some(true),
    );

    // Navigate to the home screen
    App.appRouter.replaceAll(
      const [
        HomeRoute(),
      ],
    );
  }

  Future<void> logout() async {
    await _localRepository.deleteLogin();
    
    state = state.copyWith(
      loggedIn: false,
      accessToken: '',
      isAppStarted: some(true),
    );
  }
}
