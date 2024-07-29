import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:task/Screens/register.dart';
import 'package:task/Screens/welcome.dart';
import 'package:task/component/cutom_button.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _formKey = GlobalKey<FormState>();
  bool rememberMe = true;
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: const Color(0xff050522),
        body: SafeArea(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                'assets/images/newWelcome-removebg-preview.png',
                width: 273.41,
                height: 301.07,
              ),
            ],
          ),
        ),
        bottomSheet: Container(
          height: 502,
          width: double.infinity,
          padding: const EdgeInsets.all(16),
          decoration: const BoxDecoration(
            color: Color(0xffFFECAA),
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(32),
              topRight: Radius.circular(32),
              bottomLeft: Radius.circular(2),
              bottomRight: Radius.circular(2),
            ),
          ),
          child: Form(
            key: _formKey,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Row(
                  children: [
                    const Text(
                      'Welcome Back!!!',
                      style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.w400,
                        color: Color(0xff050522),
                      ),
                    ),
                    const Spacer(),
                    IconButton(
                      icon: const Icon(
                        Icons.cancel_outlined,
                        color: Color(0xffEF5858),
                        size: 30,
                      ),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const WelcomePage(),
                          ),
                        );
                      },
                    ),
                  ],
                ),
                const SizedBox(height: 10),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      'Login',
                      style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.w700,
                        color: Color(0xff050522),
                      ),
                      textAlign: TextAlign.start,
                    ),
                  ],
                ),
                const SizedBox(height: 10),
                Column(
                  children: [
                    TextFormField(
                      controller: _emailController,
                      decoration: const InputDecoration(
                        labelText: 'username/email',
                        border: OutlineInputBorder(
                          borderSide:
                              BorderSide(width: 2, color: Color(0xff050522)),
                        ),
                        hintText: 'info@example.com',
                        suffixIcon: Icon(Icons.email_outlined),
                      ),
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please enter your email';
                        }
                        final email = value.trim().toLowerCase();
                        final RegExp emailRegExp =
                            RegExp(r'^[^@]+@[^@]+\.[^@]+$');
                        if (!emailRegExp.hasMatch(email)) {
                          return 'Please enter a valid email address';
                        }
                        if (value.contains(RegExp(r'[A-Z]'))) {
                          return 'Email must be in lowercase';
                        }
                        return null;
                      },
                    ),
                    const SizedBox(height: 5),
                    TextFormField(
                      controller: _passwordController,
                      decoration: const InputDecoration(
                        labelText: 'password',
                        suffixIcon: Icon(Icons.lock_outline),
                        border: OutlineInputBorder(),
                      ),
                      obscureText: true,
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please enter your password';
                        }
                        if (value.length < 8) {
                          return 'Password must be at least 8 characters long';
                        }
                        return null;
                      },
                    ),
                    const SizedBox(height: 10),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Checkbox(
                              checkColor: const Color(0xff050522),
                              activeColor: Colors.white,
                              fillColor: WidgetStateProperty.all(Colors.white),
                              splashRadius: 1,
                              focusColor: const Color(0xff050522),
                              value: rememberMe,
                              onChanged: (bool? newValue) {
                                setState(() {
                                  rememberMe = newValue!;
                                  log(rememberMe.toString());
                                });
                              },
                            ),
                            const Text(
                              'Remember me',
                              textAlign: TextAlign.start,
                            ),
                          ],
                        ),
                        const Text(
                          'Forgot Password?',
                          style:
                              TextStyle(color: Color(0xff050522), fontSize: 12),
                        ),
                      ],
                    ),
                    const SizedBox(height: 6),
                    Builder(
                      builder: (BuildContext context) {
                        return CustomButton(
                          label: 'Login',
                          backgroundColor: const Color(0xff050522),
                          fontColor: const Color(0xffFFDE69),
                          onPressed: () {
                            if (_formKey.currentState?.validate() ?? false) {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => const WelcomePage(),
                                ),
                              );
                            }
                          },
                          width: double.infinity,
                        );
                      },
                    ),
                    const SizedBox(height: 5),
                    TextButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const RegisterPage(),
                          ),
                        );
                      },
                      child: Row(
                        children: [
                          const Text(
                            "Don't have an account?",
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w600,
                              color: Color(0xff050522),
                            ),
                          ),
                          TextButton(
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => const RegisterPage(),
                                ),
                              );
                            },
                            child: const Text(
                              'Register',
                              style: TextStyle(
                                color: Color(0xffEF5858),
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
