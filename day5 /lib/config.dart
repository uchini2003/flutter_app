mixin Config {
  static bool get printLog => true;

  static bool get printNetLog => true;

  static bool get isDebugMode => true;

  static bool get disableAppUpdate => false;

  static Duration get apiTimeout => const Duration(milliseconds: 6000);

  static String get serverUrl => "https://5e0555b7-140a-4126-b259-7c0ff282a92f.mock.pstmn.io";
  static String get liveServerUrl => "https://5e0555b7-140a-4126-b259-7c0ff282a92f.mock.pstmn.io";
}
