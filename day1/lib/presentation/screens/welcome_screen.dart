import 'package:flutter/material.dart';
import '../widgets/app_button.dart';
import 'login_screen.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              // shop icon
              const Icon(
                Icons.shopping_cart,
                size: 100,
                color: Colors.blue,
              ),
              const SizedBox(height: 40),

            
            ],
          ),
        ),
      ),
    );
  }
}