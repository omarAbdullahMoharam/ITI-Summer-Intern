import 'dart:developer';
import 'dart:core';

import 'package:flutter/material.dart';

void main() {
  runApp(const HomePage());
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var x = true;
  var chosenRadio = 1;
  var _sliderValue = 0.0;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Home'),
        ),
        body: SingleChildScrollView(
          child: SizedBox(
            width: double.infinity,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                ClipOval(
                  child: Image.network(
                    'https://scontent.fcai20-4.fna.fbcdn.net/v/t39.30808-6/452759132_1894918377623640_5878708627228865314_n.jpg?_nc_cat=107&ccb=1-7&_nc_sid=6ee11a&_nc_ohc=NEX3dYC2sDAQ7kNvgEHorNF&_nc_ht=scontent.fcai20-4.fna&oh=00_AYCJYLoArGH-gDVEhMxQ38w7zvX74YT2McC2kHjXhO-xVA&oe=66A991CD',
                    width: 230.0,
                    height: 230.0,
                    // fit: BoxFit.cover,
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                SizedBox(
                  width: 200,
                  child: TextField(
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: "Email",
                      hintText: 'write your Email ...',
                      prefixIcon: Icon(Icons.email),
                    ),
                    onChanged: (value) {
                      log(value);
                    },
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                SizedBox(
                  width: 200,
                  child: TextField(
                    decoration: InputDecoration(
                      border: const OutlineInputBorder(),
                      labelText: "Password",
                      hintText: 'write your Password ...',
                      prefixIcon: const Icon(Icons.key),
                      suffixIcon: IconButton(
                        onPressed: () {
                          setState(() {
                            x = !x;
                          });
                        },
                        icon: Icon(
                            x ? Icons.visibility_off : Icons.remove_red_eye),
                      ),
                    ),
                    onChanged: (value) {
                      log(value);
                    },
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Checkbox(
                    value: x,
                    onChanged: (n) {
                      setState(() {
                        x = !x;
                      });
                    }),
                Radio(
                  value: 1,
                  groupValue: chosenRadio,
                  onChanged: (n) {
                    setState(() {
                      chosenRadio = 1;
                    });
                  },
                ),
                Radio(
                  value: 2,
                  groupValue: chosenRadio,
                  onChanged: (n) {
                    setState(() {
                      chosenRadio = 2;
                    });
                  },
                ),
                Radio(
                  value: 3,
                  groupValue: chosenRadio,
                  onChanged: (n) {
                    setState(() {
                      chosenRadio = 3;
                    });
                  },
                ),
                Radio(
                  value: 4,
                  groupValue: chosenRadio,
                  onChanged: (n) {
                    setState(() {
                      chosenRadio = 4;
                    });
                  },
                ),
                Switch(
                  value: x,
                  onChanged: (n) {
                    setState(() {
                      x = !x;
                    });
                  },
                ),
                Slider(
                  value: _sliderValue,
                  min: 0,
                  max: 100,
                  autofocus: true,
                  label: _sliderValue.round().toString(),
                  divisions: 100,
                  onChanged: (n) {
                    setState(() {
                      _sliderValue = n;
                      log('$_sliderValue');
                    });
                  },
                ),
                ElevatedButton(
                  onPressed: () {},
                  style:
                      ElevatedButton.styleFrom(backgroundColor: Colors.amber),
                  child: const Text(' Click Me'),
                ),
                const SizedBox(
                  height: 10,
                ),
                OutlinedButton(
                  onPressed: () {},
                  child: const Text(' Click Me '),
                ),
                const SizedBox(
                  height: 10,
                ),
                IconButton(
                  onPressed: () {
                    setState(() {
                      x = !x;
                    });
                  },
                  icon: Icon(Icons.thumb_up,
                      color: x ? Colors.grey : Colors.blue),
                ),
                TextButton(
                  onPressed: () {},
                  child: const Text(' Click Me'),
                ),
                MaterialButton(
                  onPressed: () {},
                  child: const Text('Click Me'),
                ),
              ],
            ),
          ),
        ),
        floatingActionButton: FloatingActionButton(
          tooltip: 'Chat with  me',
          onPressed: () {},
          child: const Icon(Icons.message),
        ),
      ),
    );
  }
}

// class layoutWidgets extends StatelessWidget {
//   const layoutWidgets({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return const MaterialApp(
//         home: Scaffold(
//             body:
//                 //  Center(
// //           child:
//                 // //  Container(
//                 // //   color: const Color.fromARGB(255, 141, 180, 200),
//                 // //   height: double.infinity,
//                 // //   // width: double.infinity,
//                 // //   child: Row(
//                 // //     children: [
//                 // //       Column(
//                 // //         mainAxisSize: MainAxisSize.min,
//                 // //         children: [
//                 // //           ListView(
//                 // //             children: const [
//                 // //               Text("asd"),
//                 // //               Text("asd"),
//                 // //               Text("asd"),
//                 // //               Text("asd"),
//                 // //               Text("asd"),
//                 // //               Text("asd"),
//                 // //             ],
//                 // //           ),
//                 //           const Text("asd"),
//                 // Stack(children: [
//                 //   Container(
//                 //     width: 100,
//                 //     height: 100,
//                 //     color: Colors.red,
//                 //   ),
//                 //   Positioned(
//                 //     top: 50,
//                 //     child: Container(
//                 //       width: 50,
//                 //       height: 50,
//                 //       color: Colors.blue,
//                 //     ),
//                 //   ),
//                 //   Positioned(
//                 //     top: 50,
//                 //     left: 80,
//                 //     child: Container(
//                 //       width: 30,
//                 //       height: 90,
//                 //       color: Colors.black,
//                 //     ),
//                 //   ),
//                 //   const Positioned(top: 10, right: 40, child: Text("asd"))
//                 // ]),
//                 // Container(
//                 //   color: Colors.yellow,
//                 //   child: Padding(
//                 //     padding: const EdgeInsets.all(22.0),
//                 //     child: Container(
//                 //       width: 100,
//                 //       height: 100,
//                 //       color: Colors.green,
//                 //     ),
//                 //   ),
//                 // ),
//                 // Expanded(
//                 //     child: Container(
//                 //   color: Colors.teal,
//                 //   child: const Align(
//                 //     alignment: Alignment.center,
//                 //     child: Text(
//                 //       "asd",
//                 //       style: TextStyle(color: Colors.white, fontSize: 42),
//                 //     ),
//                 //   ),
//                 // // )),
//                 // Container(
//                 //   width: 100,
//                 //   height: 100,
//                 //   color: Colors.blue,
//                 // ),

//                 SingleChildScrollView(
//       scrollDirection: Axis.horizontal,
//       child: Row(
//         // mainAxisAlignment: MainAxisAlignment.spaceAround,
//         // mainAxisSize: MainAxisSize.min,
//         children: [
//           Text(
//             "Hell0000000000021121210000o",
//             style: TextStyle(color: Colors.white, fontSize: 28),
//           ),
//           // Expanded(
//           //     child: Container(
//           //   color: Colors.red,
//           // )),
//           Text(
//             "Hell0000000000000012121212o",
//             style: TextStyle(color: Colors.white, fontSize: 28),
//           ),
//           Text(
//             "Hell0000000001212120o",
//             style: TextStyle(color: Colors.white, fontSize: 28),
//           ),
//         ],
//       ),
//     )));
//   }
// }
