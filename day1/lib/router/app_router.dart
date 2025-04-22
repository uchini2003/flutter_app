import 'package:auto_route/auto route.dart';

//route code generated automatically
@MaterialAutoRouter(
  replaceInRouteName: 'Screen,Route',
  routes: <AutoRoute>[
    //all app routes defined
    AutoRoute(
      path: '/',
      page: SplashScreen,
      initial: true,
    ),
    AutoRoute(
      path: '/welcome',
      page: WelcomeScreen,
    ),
    AutoRoute(
      path: '/login',
      page: LoginScreen,
    ),
    AutoRoute(
      path: '/home',
      page: HomeScreen,
    ),
  ],
)

