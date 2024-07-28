import 'package:flutter/material.dart';
import 'package:task/Screens/login.dart';
import 'package:task/Screens/register.dart';
import 'package:task/component/cutombutton.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: const Color(0xff050522),
        body: Center(
          child: Container(
            padding: const EdgeInsets.all(16),
            decoration: const BoxDecoration(color: Color(0xff050522)),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                const Spacer(
                  flex: 2,
                ),
                Center(
                  child: Image.asset(
                    'assets/images/newWelcome-removebg-preview.png',
                    width: 273.41,
                    height: 301.07,
                  ),
                ),
                const Spacer(
                  flex: 1,
                ),
                const SizedBox(
                  width: 273,
                  height: 138,
                  child: Center(
                    child: Column(
                      children: [
                        Text(
                          'Welcome',
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Color(0xffEF5858),
                              fontSize: 36),
                        ),
                        Spacer(
                          flex: 3,
                        ),
                        SizedBox(
                          child: Center(
                            child: Text(
                              'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                              ),
                              textAlign: TextAlign.center,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                const Spacer(
                  flex: 4,
                ),
                Builder(builder: (context) {
                  return CustomButton(
                    label: 'Create Account',
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const RegisterPage()));
                    },
                  );
                }),
                const SizedBox(
                  height: 10,
                ),
                Builder(builder: (BuildContext context) {
                  return CustomButton(
                    label: 'Login',
                    backgroundColor: const Color(0xff050522),
                    fontColor: const Color(0xffFFDE69),
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const LoginPage()));
                    },
                  );
                }),
                const Spacer(flex: 7),
                const Text(
                  'All Right Reserved @2021',
                  style: TextStyle(color: Color(0xffFFDE69)),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
