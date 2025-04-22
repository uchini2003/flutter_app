import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';
import 'presentation/screens/splash_screen.dart';

/* void main() {
  // Simpler approach to filter logs
  if (kDebugMode) {
    // Only show important logs
    debugPrint = (String? message, {int? wrapWidth}) {
      if (message != null && 
          !message.contains('I/MESA') && 
          !message.contains('exportSyncFdForQSRILocked') &&
          !message.contains('handle 0x')) {
        print(message);
      }
    };
  }
  
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key}); */

  //Updated main.dart to use auto_route instead of direct navigation
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});
  
  // Created app router instance for auto_route
  final _appRouter = AppRouter();

/*   @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        useMaterial3: true,
      ),
      home: const SplashScreen(),
    );
  }
} */

  @override
  Widget build(BuildContext context) {
    //Changed to MaterialApp.router for auto_route
    return MaterialApp.router(
      title: 'My Shop',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        useMaterial3: true,
      ),
      //Added router configuration
      routerDelegate: _appRouter.delegate(),
      routeInformationParser: _appRouter.defaultRouteParser(),
    );
  }
}