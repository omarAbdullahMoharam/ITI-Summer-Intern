import 'package:flutter/material.dart';
import 'package:task/Screens/login.dart';
import 'package:task/Screens/register.dart';
import 'package:task/Screens/welcome.dart';

void main() {
  runApp(const WelcomePage());
}

class Task extends StatelessWidget {
  const Task({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: const WelcomePage(),
      routes: {
        '/Login': (context) => const LoginPage(),
        '/register': (context) => const RegisterPage(),
        '/welcome': (context) => const WelcomePage(),
      },
    );
  }
}
