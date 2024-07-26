import 'dart:developer';

import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(const Home());
}

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  var x = true;
  var chosenRadio = 1;
  double _sliderValue = 0;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Home"),
        ),
        body: SingleChildScrollView(
          child: SizedBox(
            // color: Colors.red,
            width: double.infinity,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  width: 200,
                  // color: Colors.red,
                  child: TextField(
                    decoration: InputDecoration(
                      border: const OutlineInputBorder(),
                      labelText: "Email",
                      hintText: "write your Email ... ",
                      prefixIcon: const Icon(Icons.email),
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
                    onChanged: (v) {
                      log(v);
                    },
                  ),
                ),

                const SizedBox(
                  height: 10,
                ),

                SizedBox(
                  width: 200,
                  // color: Colors.red,
                  child: TextField(
                    obscureText: x,
                    decoration: InputDecoration(
                        border: const OutlineInputBorder(),
                        labelText: "Password",
                        hintText: "write your Password ... ",
                        prefixIcon: const Icon(Icons.email),
                        suffixIcon: IconButton(
                            onPressed: () {
                              setState(() {
                                x = !x;
                                log('Eye for password $x');
                              });
                            },
                            icon: Icon(x
                                ? Icons.visibility_off
                                : Icons.remove_red_eye))),
                    onChanged: (v) {
                      log(v);
                    },
                  ),
                ),
                Checkbox(
                    value: x,
                    onChanged: (hello) {
                      setState(() {
                        x = !x;
                        log('checkBox value : $x');
                      });
                    }),
                Radio(
                    value: 1,
                    groupValue: chosenRadio,
                    onChanged: (n) {
                      setState(() {
                        chosenRadio = 1;
                      });
                    }),
                Radio(
                    value: 2,
                    groupValue: chosenRadio,
                    onChanged: (n) {
                      setState(() {
                        chosenRadio = 2;
                      });
                    }),
                Radio(
                    value: 3,
                    groupValue: chosenRadio,
                    onChanged: (n) {
                      setState(() {
                        chosenRadio = 3;
                      });
                    }),
                Radio(
                    value: 4,
                    groupValue: chosenRadio,
                    onChanged: (n) {
                      setState(() {
                        chosenRadio = 4;
                      });
                    }),
                Switch(
                    value: x,
                    onChanged: (d) {
                      log('$d');
                      setState(() {
                        x = !x;
                      });
                    }),
                Slider(
                    value: _sliderValue,
                    min: 0,
                    max: 100,
                    divisions: 100,
                    label: _sliderValue.round().toString(),
                    onChanged: (n) {
                      setState(() {
                        _sliderValue = n;
                        log('$_sliderValue');
                      });
                    }),
                ElevatedButton(
                  onPressed: () {},
                  style:
                      ElevatedButton.styleFrom(backgroundColor: Colors.amber),
                  child: const Text('asd'),
                ),

                TextButton(onPressed: () {}, child: const Text("asd")),

                OutlinedButton(onPressed: () {}, child: const Text("asda")),
                IconButton(
                  onPressed: () {
                    setState(() {
                      x = !x;
                    });
                  },
                  icon: const Icon(Icons.thumb_up),
                  color: x ? Colors.grey : Colors.blue,
                ),
                MaterialButton(
                  onPressed: () {},
                  child: const Text("Asd"),
                ),

                Image.network(
                    width: 100,
                    height: 100,
                    'https://cdn-icons-png.flaticon.com/256/7039/7039043.png'),

                // Container(
                //   color: Colors.indigoAccent,
                //   child: ListTile(
                //     subtitle: const Text(
                //       "asdfsdfsdfs",
                //       style: TextStyle(color: Colors.white),
                //     ),
                //     title: const Text(
                //       "YOUSSEF",
                //       style: TextStyle(color: Colors.white),
                //     ),
                //     leading: const Icon(
                //       Icons.person,
                //       color: Colors.white,
                //     ),
                //     trailing: IconButton(
                //         onPressed: () {
                //           log("asd");
                //         },
                //         icon: const Icon(Icons.arrow_forward_ios)),
                //   ),
                // )
              ],
            ),
          ),
        )
        // Center(
        //   child: Container(
        //     color: const Color.fromARGB(255, 141, 180, 200),
        //     height: double.infinity,
        //     // width: double.infinity,
        //     child: Row(
        //       children: [
        //         Column(
        //           mainAxisSize: MainAxisSize.min,
        //           children: [
        //             ListView(
        //               children: const [
        //                 Text("asd"),
        //                 Text("asd"),
        //                 Text("asd"),
        //                 Text("asd"),
        //                 Text("asd"),
        //                 Text("asd"),
        //               ],
        //             ),
        //             const Text("asd"),
        //             // Stack(children: [
        //             //   Container(
        //             //     width: 100,
        //             //     height: 100,
        //             //     color: Colors.red,
        //             //   ),
        //             //   Positioned(
        //             //     top: 50,
        //             //     child: Container(
        //             //       width: 50,
        //             //       height: 50,
        //             //       color: Colors.blue,
        //             //     ),
        //             //   ),
        //             //   Positioned(
        //             //     top: 50,
        //             //     left: 80,
        //             //     child: Container(
        //             //       width: 30,
        //             //       height: 90,
        //             //       color: Colors.black,
        //             //     ),
        //             //   ),
        //             //   const Positioned(top: 10, right: 40, child: Text("asd"))
        //             // ]),
        //             // Container(
        //             //   color: Colors.yellow,
        //             //   child: Padding(
        //             //     padding: const EdgeInsets.all(22.0),
        //             //     child: Container(
        //             //       width: 100,
        //             //       height: 100,
        //             //       color: Colors.green,
        //             //     ),
        //             //   ),
        //             // ),
        //             // Expanded(
        //             //     child: Container(
        //             //   color: Colors.teal,
        //             //   child: const Align(
        //             //     alignment: Alignment.center,
        //             //     child: Text(
        //             //       "asd",
        //             //       style: TextStyle(color: Colors.white, fontSize: 42),
        //             //     ),
        //             //   ),
        //             // )),
        //             // Container(
        //             //   width: 100,
        //             //   height: 100,
        //             //   color: Colors.blue,
        //             // )

        //             // Text(
        //             //   "Hello",
        //             //   style: TextStyle(color: Colors.white, fontSize: 28),
        //             // ),
        //             // Text(
        //             //   "Hello",
        //             //   style: TextStyle(color: Colors.white, fontSize: 28),
        //             // ),
        //             // Text(
        //             //   "Hello",
        //             //   style: TextStyle(color: Colors.white, fontSize: 28),
        //             // ),
        //             // SingleChildScrollView(
        //             //   scrollDirection: Axis.horizontal,
        //             //   child: Row(
        //             //     // mainAxisAlignment: MainAxisAlignment.spaceAround,
        //             //     // mainAxisSize: MainAxisSize.min,
        //             //     children: [
        //             //       Text(
        //             //         "Hell0000000000021121210000o",
        //             //         style: TextStyle(color: Colors.white, fontSize: 28),
        //             //       ),
        //             //       // Expanded(
        //             //       //     child: Container(
        //             //       //   color: Colors.red,
        //             //       // )),
        //             //       Text(
        //             //         "Hell0000000000000012121212o",
        //             //         style: TextStyle(color: Colors.white, fontSize: 28),
        //             //       ),
        //             //       Text(
        //             //         "Hell0000000001212120o",
        //             //         style: TextStyle(color: Colors.white, fontSize: 28),
        //             //       ),
        //             //     ],
        //             //   ),
        //             // )
        //           ],
        //         ),
        //       ],
        //     ),
        //   ),
        // )
        ,
        floatingActionButton: FloatingActionButton(
          tooltip: "Asdasd",
          onPressed: () {},
          child: const Icon(Icons.message),
        ),
      ),
    );
  }
}
