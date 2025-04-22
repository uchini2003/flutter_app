
import 'package:flutter/material.dart';
import '../../router/app_router.gr.dart';
import '../widgets/app_button.dart';
import 'login_screen.dart';
import 'package:auto_route/auto_route.dart';

@RoutePage()
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

              //text
              const Text(
                'Welcome to My Shop',
                style: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 16),

              //description
              const Text(
                'Discover amazing products and shop with ease',
                style: TextStyle(
                  fontSize: 16,
                ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 60),

              //login btn
              AppButton(
                text: 'Get Started',
                onPressed: () {
                  //Changed nav to use auto_route
                  context.router.push(const LoginRoute());
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}