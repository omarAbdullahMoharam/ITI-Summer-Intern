import 'dart:developer';

import 'package:flutter/material.dart'; // Importing Flutter's material design package
import '../components/custom_text_field.dart'; // Importing custom text field widget
import '../components/custom_button.dart'; // Importing custom button widget

// RegisterScreen is a StatefulWidget that creates the registration screen
class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key}); // Constructor with optional key parameter

  @override
  // ignore: library_private_types_in_public_api
  _RegisterScreenState createState() =>
      _RegisterScreenState(); // Creating the state for this widget
}

// _RegisterScreenState manages the state for RegisterScreen
class _RegisterScreenState extends State<RegisterScreen> {
  // Creating global keys for form validation
  final _formKey = GlobalKey<FormState>();

  // Controllers for managing text input
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  final _confirmPasswordController = TextEditingController();
  final _phoneController = TextEditingController();
  final _addressController = TextEditingController();

  // Validation logic for email
  String? _validateEmail(String? value) {
    if (value == null || value.isEmpty) {
      return 'Please enter an email'; // Return error if email is empty
    }
    final emailRegex =
        RegExp(r'^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$');
// Regex to validate email format
    if (!emailRegex.hasMatch(value)) {
      return 'Please enter a valid email'; // Return error if email format is invalid
    }
    return null; // Return null if validation passes
  }

  // Validation logic for password
  String? _validatePassword(String? value) {
    if (value == null || value.isEmpty) {
      return 'Please enter a password'; // Return error if password is empty
    }
    if (value.length < 6) {
      return 'Password must be at least 6 characters long'; // Return error if password is too short
    }
    return null; // Return null if validation passes
  }

  // Validation logic for confirming password
  String? _validateConfirmPassword(String? value) {
    if (value != _passwordController.text) {
      return 'Passwords do not match'; // Return error if passwords do not match
    }
    return null; // Return null if validation passes
  }

  // Validation logic for phone number
  String? _validatePhone(String? value) {
    if (value == null || value.isEmpty) {
      return 'Please enter a phone number'; // Return error if phone number is empty
    }
    final phoneRegex =
        RegExp(r'^\d{10}$'); // Regex to validate 10-digit phone number
    if (!phoneRegex.hasMatch(value)) {
      return 'Please enter a valid 10-digit phone number'; // Return error if phone number format is invalid
    }
    return null; // Return null if validation passes
  }

  // Validation logic for address
  String? _validateAddress(String? value) {
    if (value == null || value.isEmpty) {
      return 'Please enter an address'; // Return error if address is empty
    }
    return null; // Return null if validation passes
  }

  @override
  void initState() {
    log("Hello from initState ");
    super.initState();
  }

  @override
  void dispose() {
    // Dispose controllers when the widget is removed from the widget tree
    _emailController.dispose();
    _passwordController.dispose();
    _confirmPasswordController.dispose();
    _phoneController.dispose();
    _addressController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Register'), // Title of the AppBar
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0), // Padding around the form
        child: Form(
          key: _formKey, // Key for form validation
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center, // Center the column
            children: [
              CustomTextField(
                hintText: 'Email', // Hint text for the email field
                controller: _emailController, // Controller for email input
                validator: _validateEmail, // Validation function for email
              ),
              CustomTextField(
                hintText: 'Password', // Hint text for the password field
                controller:
                    _passwordController, // Controller for password input
                obscureText: true, // Hide the password input
                validator:
                    _validatePassword, // Validation function for password
              ),
              CustomTextField(
                hintText:
                    'Confirm Password', // Hint text for confirming password
                controller:
                    _confirmPasswordController, // Controller for confirm password input
                obscureText: true, // Hide the confirm password input
                validator:
                    _validateConfirmPassword, // Validation function for confirm password
              ),
              CustomTextField(
                hintText: 'Phone', // Hint text for the phone number field
                controller:
                    _phoneController, // Controller for phone number input
                validator:
                    _validatePhone, // Validation function for phone number
              ),
              CustomTextField(
                hintText: 'Address', // Hint text for the address field
                controller: _addressController, // Controller for address input
                validator: _validateAddress, // Validation function for address
              ),
              CustomButton(
                text: 'Register', // Text for the button
                onPressed: () {
                  // Register button pressed
                  if (_formKey.currentState?.validate() ?? false) {
                    // Validate the form
                    // Perform registration logic here
                  }
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
