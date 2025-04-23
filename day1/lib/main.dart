import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';
import 'presentation/screens/splash_screen.dart';

void main() {
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
  const MyApp({super.key});

  @override
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
}