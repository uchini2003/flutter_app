import 'package:flutter/material.dart';
import '../widgets/app_button.dart';
import 'login_screen.dart';

//defines app to user and button to navigate.
class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {

    throw UnimplementedError();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        // Using SafeArea
        body: SafeArea(
        child: Padding(
        //padding for edges of screen
        padding: const EdgeInsets.all(20.0),
    child: Column(
    //content center vertically
    mainAxisAlignment: MainAxisAlignment.center,
    //children horizontally placed
    crossAxisAlignment: CrossAxisAlignment.stretch,
    children: [
    const Icon(
    Icons.shopping_cart,
    size: 100,
    color: Colors.blue,
    ),
    // Spacing
    const SizedBox(height: 40),
    //welcome
    const Text(
    'Welcome to My Shop',
    style: TextStyle(
    fontSize: 28,
    fontWeight: FontWeight.bold,
    ),
    textAlign: TextAlign.center,
    ),




