import 'package:flutter/material.dart';

class CustomImage extends StatelessWidget {
  const CustomImage({
    super.key,
  });
  @override
  Widget build(BuildContext context) {
    return Image.asset('assets/images/avatar.png');
  }
}



// TextField(
//                                     textAlign: TextAlign.center,
//                                     decoration: InputDecoration(
//                                       filled: true,
//                                       fillColor: Colors.white,
//                                       enabledBorder: OutlineInputBorder(
//                                         borderRadius: BorderRadius.all(
//                                             Radius.circular(10.0)),
//                                         borderSide: BorderSide(
//                                           color: Colors.white,
//                                           width: 2,
//                                         ),
//                                       ),
//                                     ),
//                                   ),

