import 'package:flutter/material.dart';
import 'welcome_screen.dart';

//splash screen nav for 2 sec
class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    _navigateToWelcome();
  }


   //remove screen from nav
  _navigateToWelcome() async {
    await Future.delayed(const Duration(seconds: 2));


