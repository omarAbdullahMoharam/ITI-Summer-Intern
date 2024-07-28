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
  bool rememberMe = true;
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
          height: 460,
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
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Row(children: [
                const Text(
                  'Welcome Back!!!',
                  style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.w400,
                      color: Color(0xff050522)),
                ),
                const Spacer(
                  flex: 1,
                ),
                Builder(builder: (context) {
                  return IconButton(
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
                  );
                }),
              ]),
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
                  const TextField(
                    decoration: InputDecoration(
                        labelText: 'username/email',
                        border: OutlineInputBorder(
                            borderSide:
                                BorderSide(width: 2, color: Color(0xff050522))),
                        hintText: 'info@example.com',
                        suffixIcon: Icon(Icons.remove_red_eye_outlined)),
                  ),
                  const SizedBox(height: 5),
                  const TextField(
                    decoration: InputDecoration(
                      labelText: 'password',
                      suffixIcon: Icon(Icons.lock_outline),
                      border: OutlineInputBorder(),
                    ),
                    obscureText: true,
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
                          const Text('Remember me'),
                        ],
                      ),
                      const Text(
                        'Forgot Password?',
                        style:
                            TextStyle(color: Color(0xff050522), fontSize: 12),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 6,
                  ),
                  Builder(
                    builder: (BuildContext context) {
                      return CustomButton(
                        label: 'Login',
                        backgroundColor: const Color(0xff050522),
                        fontColor: const Color(0xffFFDE69),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const WelcomePage(),
                            ),
                          );
                        },
                      );
                    },
                  ),
                  const SizedBox(height: 5),
                  Builder(builder: (BuildContext newContext) {
                    return TextButton(
                      onPressed: () {
                        Navigator.push(
                          newContext,
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
                                color: Color(0xff050522)),
                          ),
                          Builder(
                            builder: (BuildContext context) {
                              return TextButton(
                                onPressed: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) =>
                                          const RegisterPage(),
                                    ),
                                  );
                                },
                                child: const Text(
                                  'Register',
                                  style: TextStyle(
                                      color: Color(0xffEF5858),
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold),
                                ),
                              );
                            },
                          ),
                        ],
                      ),
                    );
                  }),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}


// MaterialApp(
//       debugShowCheckedModeBanner: false,
//       home: Scaffold(
//         backgroundColor:    Color(0xff050522),
//         body: Center(
//           child: SingleChildScrollView(
//             child: Column(
//               mainAxisAlignment: MainAxisAlignment.center,
//               children: [
//                 // Top image section
//                 Container(
//                   width: double.infinity,
//                   height: 300,
//                   decoration:    BoxDecoration(
//                     borderRadius: BorderRadius.only(
//                       bottomLeft: Radius.circular(40),
//                       bottomRight: Radius.circular(40),
//                     ),
//                     color: Colors.yellow,
//                   ),
//                   child: Center(
//                     child: Image.asset(
//                       'assets/images/welcome.png',
//                       width: 273.41,
//                       height: 301.07,
//                     ),
//                   ),
//                 ),
//                 // Login form section
//                 Container(
//                   padding:
//                          EdgeInsets.symmetric(horizontal: 30, vertical: 20),
//                   margin:
//                          EdgeInsets.symmetric(horizontal: 20, vertical: 20),
//                   decoration: BoxDecoration(
//                     borderRadius: BorderRadius.circular(20),
//                     color: Colors.white,
//                   ),
//                   child: Column(
//                     crossAxisAlignment: CrossAxisAlignment.start,
//                     children: [
//                          Text(
//                         "Welcome Back!!!",
//                         style: TextStyle(
//                           fontSize: 16,
//                           color: Colors.black54,
//                         ),
//                       ),
//                          SizedBox(height: 10),
//                          Text(
//                         "Login",
//                         style: TextStyle(
//                           fontSize: 22,
//                           fontWeight: FontWeight.bold,
//                         ),
//                       ),
//                          SizedBox(height: 20),
//                          TextField(
//                         decoration: InputDecoration(
//                           labelText: "Username/email",
//                           hintText: "info@example.com",
//                           prefixIcon: Icon(Icons.person),
//                           border: OutlineInputBorder(),
//                         ),
//                       ),
//                          SizedBox(height: 20),
//                          TextField(
//                         obscureText: true,
//                         decoration: InputDecoration(
//                           labelText: "Password",
//                           prefixIcon: Icon(Icons.lock),
//                           suffixIcon: Icon(Icons.visibility),
//                           border: OutlineInputBorder(),
//                         ),
//                       ),
//                          SizedBox(height: 20),
//                       Row(
//                         mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                         children: [
//                           Row(
//                             children: [
//                               Checkbox(value: false, onChanged: (value) {}),
//                                  Text("Remember me"),
//                             ],
//                           ),
//                           TextButton(
//                             onPressed: () {},
//                             child:    Text("Forgot Password?"),
//                           ),
//                         ],
//                       ),
//                          SizedBox(height: 20),
//                       Center(
//                         child: ElevatedButton(
//                           style: ElevatedButton.styleFrom(
//                             backgroundColor: Colors.black,
//                             padding:    EdgeInsets.symmetric(
//                                 horizontal: 40, vertical: 15),
//                           ),
//                           onPressed: () {
//                             Fluttertoast.showToast(
//                               msg: "Login Button Pressed",
//                               toastLength: Toast.LENGTH_LONG,
//                               gravity: ToastGravity.BOTTOM,
//                               backgroundColor: Colors.black,
//                               textColor: Colors.white,
//                               fontSize: 16.0,
//                             );
//                           },
//                           child:    Text("Login"),
//                         ),
//                       ),
//                          SizedBox(height: 20),
//                       Center(
//                         child: RichText(
//                           text: TextSpan(
//                             text: "Don’t have an account? ",
//                             style:    TextStyle(color: Colors.black54),
//                             children: <TextSpan>[
//                               TextSpan(
//                                 text: "Register",
//                                 style:    TextStyle(color: Colors.red),
//                                 recognizer: TapGestureRecognizer()
//                                   ..onTap = () {
//                                     Navigator.push(
//                                         context,
//                                         MaterialPageRoute(
//                                             builder: (context) =>
//                                                    RegisterPage()));
//                                   },
//                               ),
//                             ],
//                           ),
//                         ),
//                       ),
//                     ],
//                   ),
//                 ),
//               ],
//             ),
//           ),
//         ),
//       ),

