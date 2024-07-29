import 'package:flutter/material.dart';

class FooterNavigator {
  static Widget footerNavigation({
    required String promptText,
    required String buttonText,
    required Widget destination,
  }) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          promptText,
          style: const TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.w600,
            color: Color(0xff050522),
          ),
        ),
        Builder(
          builder: (BuildContext context) {
            return TextButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => destination,
                  ),
                );
              },
              child: Text(
                buttonText,
                style: const TextStyle(
                  color: Color(0xffEF5858),
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
            );
          },
        ),
      ],
    );
  }
}





// import 'package:flutter/material.dart';
// import 'package:task/Screens/welcome.dart';

// class CustomWidget extends StatelessWidget {
//   final String mainTitle;
//   final String subTitle;
//   final int height;
//   final String buttonText;
//   // final Widget destination;
//   // final String promptText;
//   // final String textButtonLabel;

//   const CustomWidget({
//     super.key,
//     required this.subTitle,
//     required this.mainTitle,
//     required this.height,
//     required this.buttonText,
//     // required this.destination,
//     // required this.promptText,
//     // required this.textButtonLabel,
//   });

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       bottomSheet: Container(
//         height: height.toDouble(),
//         width: double.infinity,
//         padding: const EdgeInsets.all(16),
//         decoration: const BoxDecoration(
//           color: Color(0xffFFECAA),
//           borderRadius: BorderRadius.only(
//             topLeft: Radius.circular(32),
//             topRight: Radius.circular(32),
//             bottomLeft: Radius.circular(2),
//             bottomRight: Radius.circular(2),
//           ),
//         ),
//         child: Column(
//           mainAxisSize: MainAxisSize.min,
//           children: [
//             Row(
//               children: [
//                 Text(
//                   subTitle,
//                   style: const TextStyle(
//                     fontSize: 25,
//                     fontWeight: FontWeight.w400,
//                     color: Color(0xff050522),
//                   ),
//                 ),
//                 const Spacer(),
//                 IconButton(
//                   icon: const Icon(
//                     Icons.cancel_outlined,
//                     color: Color(0xffEF5858),
//                     size: 30,
//                   ),
//                   onPressed: () {
//                     Navigator.push(
//                       context,
//                       MaterialPageRoute(
//                         builder: (context) => const WelcomePage(),
//                       ),
//                     );
//                   },
//                 ),
//               ],
//             ),
//             const SizedBox(height: 10),
//             Row(
//               mainAxisAlignment: MainAxisAlignment.start,
//               children: [
//                 Text(
//                   mainTitle,
//                   style: const TextStyle(
//                     fontSize: 30,
//                     fontWeight: FontWeight.w700,
//                     color: Color(0xff050522),
//                   ),
//                   textAlign: TextAlign.start,
//                 ),
//               ],
//             ),
//             const SizedBox(height: 10),
//             // Column(
//             //   children: [
//             //     const CustomInputField(
//             //       labelText: 'username/email',
//             //       hintText: 'info@example.com',
//             //       icon: Icon(Icons.remove_red_eye_outlined),
//             //       obscureText: true,
//             //     ),
//             //     const SizedBox(height: 5),
//             //     const CustomInputField(
//             //       icon: Icon(Icons.lock_outline),
//             //       hintText: '********',
//             //       labelText: 'password',
//             //       obscureText: true,
//             //     ),
//             //     const SizedBox(height: 6),
//             //     CustomButton(
//             //       label: buttonText,
//             //       backgroundColor: const Color(0xff050522),
//             //       fontColor: const Color(0xffFFDE69),
//             //       onPressed: () {
//             //         Navigator.push(
//             //           context,
//             //           MaterialPageRoute(
//             //             builder: (context) => const WelcomePage(),
//             //           ),
//             //         );
//             //       },
//             //     ),
//             //     const SizedBox(height: 5),
//             //     TextButton(
//             //       onPressed: () {
//             //         Navigator.push(
//             //           context,
//             //           MaterialPageRoute(
//             //             builder: (context) => const RegisterPage(),
//             //           ),
//             //         );
//             //       },
//             //       child: Row(
//             //         mainAxisAlignment: MainAxisAlignment.center,
//             //         children: [
//             //           Text(
//             //             promptText,
//             //             style: const TextStyle(
//             //               fontSize: 18,
//             //               fontWeight: FontWeight.w600,
//             //               color: Color(0xff050522),
//             //             ),
//             //           ),
//             //           TextButton(
//             //             onPressed: () {
//             //               Navigator.push(
//             //                 context,
//             //                 MaterialPageRoute(
//             //                   builder: (context) => destination,
//             //                 ),
//             //               );
//             //             },
//             //             child: Text(
//             //               textButtonLabel,
//             //               style: const TextStyle(
//             //                 color: Color(0xffEF5858),
//             //                 fontSize: 18,
//             //                 fontWeight: FontWeight.bold,
//             //               ),
//             //             ),
//             //           ),
//             //         ],
//             //       ),
//             //     ),
//             //   ],
//             // ),
//           ],
//         ),
//       ),
//     );
//   }
// }

