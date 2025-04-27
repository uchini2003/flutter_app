import 'package:flutter/material.dart';
import 'router/app_router.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

//Updated main.dart to use auto_route instead of direct navigation
void main() {
  runApp(
    // added ProviderScope for riverpod state management
    ProviderScope(
      child: MyApp(),
    ),
  );
}


class MyApp extends StatelessWidget {
  MyApp({super.key});
  
  // Created app router instance for auto_route
  final _appRouter = AppRouter();

  @override
  Widget build(BuildContext context) {
    //Changed to MaterialApp.router for auto_route
    return MaterialApp.router(
      title: 'My Shop',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        useMaterial3: true,
      ),
      routerConfig: _appRouter.config(),
    );
  }
}