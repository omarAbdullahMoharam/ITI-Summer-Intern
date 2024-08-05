import 'package:fickle_flight/components/custom_button.dart';
import 'package:fickle_flight/components/custom_switch.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Search extends StatefulWidget {
  const Search({super.key});

  @override
  State<Search> createState() => _SearchState();
}

class _SearchState extends State<Search> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: const Color.fromARGB(255, 217, 217, 225),
        appBar: AppBar(
          backgroundColor: Colors.white,
          centerTitle: true,
          title: const Text(
            'Search Flight',
            style: TextStyle(color: Colors.black),
          ),
          leading: IconButton(
            icon: const Center(
              child: Icon(
                Icons.arrow_back_sharp,
                color: Colors.black,
                size: 35,
              ),
            ),
            onPressed: () {},
          ),
          actions: [
            IconButton(
              icon: const Icon(
                Icons.more_vert,
                color: Colors.black,
                size: 33,
              ),
              onPressed: () {},
            ),
          ],
        ),
        body: Card(
          child: Column(
            children: [
              const SizedBox(
                height: 40,
              ),
              Center(
                child: Card(
                  color: Colors.white,
                  margin: const EdgeInsets.all(10),
                  child: SizedBox(
                    height: 450,
                    width: 390,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        const SizedBox(
                          height: 50,
                        ),
                        Container(
                          height: 65,
                          width: 350,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(35),
                            color: const Color.fromARGB(255, 232, 231, 231),
                          ),
                          child: const Row(
                            children: [
                              SizedBox(
                                width: 6,
                              ),
                              CustomSwitch(
                                title: 'One Way',
                                fontColor: Colors.white,
                                backgroundColor: Color(0xFF2D60A8),
                              ),
                              CustomSwitch(title: 'Round Trip'),
                            ],
                          ),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        SizedBox(
                          width: 350,
                          child: TextFormField(
                            decoration: InputDecoration(
                              prefixIcon: const Icon(
                                Icons.airplanemode_on_sharp,
                                color: Color(0xFF2D60A8),
                              ),
                              hintText: 'From',
                              alignLabelWithHint: true,
                              labelText: 'From',
                              filled: true,
                              fillColor: const Color(0xFFF3F5F9),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(15),
                                borderSide: const BorderSide(
                                  color: Color(0xFF2D60A8),
                                ),
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 15,
                        ),
                        SizedBox(
                          width: 350,
                          child: TextFormField(
                            decoration: InputDecoration(
                              prefixIcon: const Icon(
                                CupertinoIcons.airplane,
                                color: Color(0xFF2D60A8),
                              ),
                              hintText: 'To',
                              alignLabelWithHint: true,
                              labelText: 'To',
                              filled: true,
                              fillColor: const Color(0xFFF3F5F9),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(15),
                                borderSide: const BorderSide(
                                  color: Color(0xFF2D60A8),
                                ),
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 40,
                        ),
                        const Text(
                          'No Results Found',
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(
                          height: 15,
                        ),
                        const CustomButton(title: 'Search'),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}




//  Container(
//                 height: 70,
//                 width: 260,
//                 decoration: BoxDecoration(
//                   borderRadius: BorderRadius.circular(35),
//                   color: const Color(0xFFF3F5F9),
//                 ),
//                 child: const Row( 
//                   children: [
//                     SizedBox(
//                       width: 20,
//                     ),
//                     Icon(CupertinoIcons.search),
//                     SizedBox(
//                       width: 10,
//                     ),
//                     SizedBox(
//                       width: 150,
//                       height: 50,
//                       child: TextField(
//                         decoration: InputDecoration(
//                           hintText: 'Search',
//                           hintStyle: TextStyle(color: Colors.grey),
//                         ),
//                       ),
//                     ),
//                   ],
//                 ),
//               ),
//               const SizedBox(
//                 height: 20,
//               ),