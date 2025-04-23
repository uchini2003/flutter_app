import 'package:flutter/material.dart';
import 'router/app_router.dart';


  //Updated main.dart to use auto_route instead of direct navigation
void main() {
  runApp(MyApp());
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