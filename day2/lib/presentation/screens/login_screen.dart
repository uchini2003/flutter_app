import 'package:day2/router/app_router.gr.dart';
import 'package:flutter/material.dart';
import '../widgets/app_button.dart';
import 'package:auto_route/auto_route.dart'; 
import 'package:http/http.dart' as http; 
import 'dart:convert'; 

// AutoRoute annotation
@RoutePage()
class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  //input validation check & get user types
  final _formKey = GlobalKey<FormState>();
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();

  //state variables for api laod & errors
  bool _isLoading = false;
  String? _errorMessage;

  //Clean up when screen closes
  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  //api login implementation
  Future<void> _login() async {
        if (_formKey.currentState!.validate()) {
      setState(() {
        _isLoading = true;
        _errorMessage = null;
      });

            try {
        // For demonstration purposes, we'll simulate the API call
        // In a real app, this would be an actual HTTP request
        await Future.delayed(const Duration(milliseconds: 1500));
        
        // The task specifies these test credentials
        const validUsername = 'testaccount123';
        const validPassword = 'pasword123';
        
        // Check if credentials match
        if (_emailController.text == validUsername && 
            _passwordController.text == validPassword) {
          // Successful login
          if (mounted) {
            context.router.replace(const HomeRoute());
          }
        } else {
          // Failed login
          setState(() {
            _errorMessage = 'Login failed. Please check your credentials.';
          });
        }
      } catch (e) {
        // Handle any errors
        setState(() {
          _errorMessage = 'Connection error. Please try again.';
        });
      } finally {
        // Reset loading state if component still mounted
        if (mounted) {
          setState(() {
            _isLoading = false;
          });
        }
      }
    }
  }
