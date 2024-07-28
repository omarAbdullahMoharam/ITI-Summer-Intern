import 'package:flutter/material.dart';
import 'package:task/Screens/login.dart';
import 'package:task/Screens/welcome.dart';
import 'package:task/component/custom_field.dart';
import 'package:task/component/custom_footer.dart';
import 'package:task/component/cutom_button.dart';

class RegisterPage extends StatelessWidget {
  const RegisterPage({super.key});

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
          height: 550,
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
              Row(
                children: [
                  const Text(
                    'Hello...',
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
              const SizedBox(height: 6),
              const Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    'Register',
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.w400,
                      color: Color(0xff050522),
                    ),
                    textAlign: TextAlign.start,
                  ),
                ],
              ),
              const SizedBox(height: 20),
              const CustomInputField(
                hintText: 'info@example.com',
                labelText: 'username/email',
                icon: Icon(Icons.remove_red_eye_outlined),
                obscureText: true,
              ),
              const SizedBox(height: 20),
              const CustomInputField(
                hintText: '',
                labelText: 'Course',
                icon: Icon(Icons.remove_red_eye_outlined),
                obscureText: false,
              ),
              const SizedBox(height: 10),
              const CustomInputField(
                  hintText: 'password',
                  labelText: 'Password',
                  icon: Icon(Icons.lock_outlined),
                  obscureText: true),
              const SizedBox(height: 10),
              const CustomInputField(
                  hintText: 'password',
                  labelText: 'Confirm Password',
                  icon: Icon(Icons.lock_outlined),
                  obscureText: true),
              const SizedBox(height: 20),
              CustomButton(
                label: 'Register',
                onPressed: () {},
                backgroundColor: const Color(0xff1B1A40),
                fontColor: const Color(0xffFFDE69),
                width: double.infinity,
              ),
              const SizedBox(height: 8),
              FooterNavigator.footerNavigation(
                  promptText: 'Already have an account?',
                  buttonText: 'Login',
                  destination: const LoginPage()),
            ],
          ),
        ),
      ),
    );
  }
}


// Row(
//                 mainAxisAlignment: MainAxisAlignment.center,
//                 children: [
//                   const Text(
//                     'Already have an account?',
//                     style: TextStyle(
//                       fontSize: 15,
//                       fontWeight: FontWeight.w400,
//                       color: Color(0xff050522),
//                     ),
//                   ),
//                   TextButton(
//                     onPressed: () {
//                       Navigator.push(
//                         context,
//                         MaterialPageRoute(
//                           builder: (context) => const LoginPage(),
//                         ),
//                       );
//                     },
//                     child: const Text('Login'),
//                   ),
//                 ],
//               ),