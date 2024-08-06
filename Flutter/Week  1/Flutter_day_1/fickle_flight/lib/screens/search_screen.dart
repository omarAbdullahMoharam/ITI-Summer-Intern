import 'package:fickle_flight/components/custom_button.dart';
import 'package:fickle_flight/components/custom_switch.dart';
import 'package:fickle_flight/screens/booking_screen.dart';
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
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const Booking(),
                ),
              );
            },
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
        body: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const SizedBox(
              height: 50,
            ),
            Center(
              child: Card(
                color: Colors.white,
                margin: const EdgeInsets.all(10),
                child: SizedBox(
                  height: 370,
                  width: 390,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      const SizedBox(
                        height: 20,
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
                            // SizedBox(
                            //   width: 10,
                            // ),
                            CustomSwitch(
                              value: true,
                              title: 'One Way',
                              fontColor: Colors.white,
                              backgroundColor: Color(0xFF2D60A8),
                            ),
                            CustomSwitch(
                              title: 'Round Trip',
                              value: false,
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 25,
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
                        height: 25,
                      ),
                      const Divider(
                        thickness: 0.1,
                        color: Color.fromARGB(255, 0, 0, 0),
                        endIndent: 10,
                        indent: 10,
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
    );
  }
}
