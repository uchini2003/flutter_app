import 'package:dartz/dartz.dart'; // For handling optional values (like maybe having a token or not)
import 'package:hooks_riverpod/hooks_riverpod.dart'; // For state management

import '../../domain/core/i_local_repository.dart'; // Local storage interface
import '../../domain/core/values/constants.dart'; // Keys for storage
import '../../utils/log_utils.dart'; // For printing logs
import '../../utils/string_extensions.dart'; // Helpful string functions
import '../../presentation/routes/app_router.gr.dart'; // App navigation routes
import '../../presentation/core/app.dart'; // App entry point
import 'app_state.dart'; // AppState class

// AppStateNotifier controls the app's main state
class AppStateNotifier extends StateNotifier<AppState> {
  
  // Constructor: Takes local storage and sets initial state
  AppStateNotifier(this._localRepository) : super(AppState.initial()) {
    _logUtils.log("init"); // Print a log when this is created
  }

  // Set up logging
  static final LogUtils _logUtils = LogUtils(
    featureName: "AppStateNotifier",
    printLog: true,
  );

  // Local storage access
  final ILocalRepository _localRepository;

  @override
  void dispose() {
    _logUtils.log("dispose"); // Print a log when this is destroyed
    super.dispose();
  }

    // This function runs when the app starts
  Future<void> appStart() async {
    _logUtils.log("appStart :: before state : $state");

    // First, show loading
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
