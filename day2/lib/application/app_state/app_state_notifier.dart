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
