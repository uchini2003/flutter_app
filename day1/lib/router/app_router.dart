import 'package:auto_route/auto_route.dart';
import 'package:my_shop_app/router/app_router.gr.dart';

@AutoRouterConfig(replaceInRouteName: 'Screen|Page,Route')
class AppRouter extends RootStackRouter {
  AppRouter({super.navigatorKey});

  @override
  RouteType get defaultRouteType => RouteType.material(); //.cupertino, .adaptive ..etc
  
  @override
  List<AutoRoute> get routes => [
    // HomeScreen is generated as HomeRoute because
    // of the replaceInRouteName property
    AutoRoute(page: SplashRoute.page, initial: true),
    AutoRoute(page: WelcomeRoute.page),
    AutoRoute(page: LoginRoute.page),
    AutoRoute(page: HomeRoute.page),
  ];

  @override
  List<AutoRouteGuard> get guards => [
    // optionally add root guards here
    
  ];
}