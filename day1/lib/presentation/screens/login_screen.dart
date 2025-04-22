import 'package:flutter/material.dart';
import 'package:my_shop_app/router/app_router.gr.dart';
import '../widgets/app_button.dart';
import 'home_screen.dart';
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
        //Using the API endpoint
        final response = await http.post(
          Uri.parse('/api/v1/testapi'),
          headers: {'Content-Type': 'application/json'},
          body: json.encode({
            'userName': _emailController.text,
            'password': _passwordController.text,
          }),
        );

        //check if login worked
        if (response.statusCode == 200) {
          //go to home screen if successful
          if (mounted) {
            context.router.replace(const HomeRoute());
          }
        } else {
          //how error message from API
          setState(() {
            _errorMessage = 'Login failed. Please check your credentials.';
          });
        }
      } catch (e) {
        //handle connection errors
        setState(() {
          _errorMessage = 'Connection error. Please try again.';
        });
      } finally {
        //reset loading state if componentstill mounted
        if (mounted) {
          setState(() {
            _isLoading = false;
          });
        }
      }
    }
  }

    @override
  Widget build(BuildContext context) {
    return Scaffold(
      //Top bar
      appBar: AppBar(
        title: const Text('Login'),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Form(
            key: _formKey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                // Welcome text
                const Text(
                  'Welcome Back',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 40),
                // Email input box
                TextFormField(
                  controller: _emailController,
                  decoration: const InputDecoration(
                    labelText: 'Email',
                    prefixIcon: Icon(Icons.email),
                    border: OutlineInputBorder(),
                  ),
                  keyboardType: TextInputType.emailAddress,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter your email';
                    }
                    return null;
                  },
                ),
                const SizedBox(height: 16),
                // Password input box
                TextFormField(
                  controller: _passwordController,
                  decoration: const InputDecoration(
                    labelText: 'Password',
                    prefixIcon: Icon(Icons.lock),
                    border: OutlineInputBorder(),
                  ),
                  obscureText: true,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter your password';
                    }
                    return null;
                  },
                ),
                const SizedBox(height: 30),
                // Login button
                AppButton(
                  text: 'Login',
                  onPressed: _login,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
