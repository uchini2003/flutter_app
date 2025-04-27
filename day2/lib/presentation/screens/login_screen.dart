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

  //state variable for password visibility toggle
  bool _obscurePassword = true;

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
        await Future.delayed(const Duration(milliseconds: 1500));
        
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
          //failed login
          setState(() {
            _errorMessage = 'Login failed. Please check your credentials.';
          });
        }
      } catch (e) {
        //handle errors
        setState(() {
          _errorMessage = 'Connection error. Please try again.';
        });
      } finally {
        //if component mounted reset loading state 
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
                
                                TextFormField(
                  controller: _emailController,
                  decoration: const InputDecoration(
                    labelText: 'Email',
                    border: OutlineInputBorder(),
                    prefixIcon: Icon(Icons.email),
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
                
                //password input box with eye icon 
                TextFormField(
                  controller: _passwordController,
                  decoration: InputDecoration(
                    labelText: 'Password',
                    border: const OutlineInputBorder(),
                    prefixIcon: const Icon(Icons.lock),
                    suffixIcon: IconButton(
                      icon: Icon(
                        _obscurePassword ? Icons.visibility_off : Icons.visibility,
                        color: Colors.grey,
                      ),
                      onPressed: () {
                        setState(() {
                          _obscurePassword = !_obscurePassword;
                        });
                      },
                    ),
                  ),
                  obscureText: _obscurePassword, 
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter your password';
                    }
                    return null;
                  },
                ),
                const SizedBox(height: 24),
                
                //error message if login fails
                if (_errorMessage != null)
                  Padding(
                    padding: const EdgeInsets.only(bottom: 16.0),
                    child: Text(
                      _errorMessage!,
                      style: const TextStyle(
                        color: Colors.red,
                        fontWeight: FontWeight.w500,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),

                //login button with loading state
                _isLoading
                    ? const Center(child: CircularProgressIndicator())
                    : AppButton(
                        text: 'Login',
                        onPressed: _login,
                      ),


                //test credentials hint
                const SizedBox(height: 16),
                const Text(
                  'Use test credentials: testaccount123 / pasword123',
                  style: TextStyle(
                    fontSize: 12,
                    color: Colors.grey,
                  ),
                  textAlign: TextAlign.center,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
