import 'package:flutter/material.dart';
import 'package:task/Screens/register.dart';
import 'package:task/Screens/welcome.dart';
import 'package:task/component/cutom_button.dart';

class CustomWidget extends StatelessWidget {
  const CustomWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                                    builder: (context) => const RegisterPage(),
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
    );
  }
}

Widget footer() {
  return Row(
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
                  builder: (context) => const RegisterPage(),
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
  );
}
