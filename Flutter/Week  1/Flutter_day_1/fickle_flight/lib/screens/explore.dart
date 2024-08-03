import 'package:flutter/material.dart';

class Explore extends StatelessWidget {
  const Explore({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 5,
      child: Scaffold(
        bottomNavigationBar: const TabBar(
          tabs: [
            Tab(
              icon: Icon(Icons.home),
            ),
            Tab(
              icon: Icon(Icons.favorite),
            ),
            Tab(
              icon: Icon(Icons.person),
            ),
            Tab(
              icon: Icon(Icons.settings),
            ),
            Tab(
              icon: Icon(Icons.category_outlined),
            ),
          ],
        ),
        appBar: AppBar(
          title: Padding(
            padding: const EdgeInsets.only(top: 15.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const SizedBox(
                  width: 50,
                ),
                Image.asset(
                  'assets/appBar.png',
                  height: 180,
                  width: 230,
                ),
                const SizedBox(
                  width: 35,
                ),
                const CircleAvatar(
                  child: Icon(
                    Icons.person,
                    size: 30,
                  ),
                ),
              ],
            ),
          ),
          // centerTitle: true,
        ),
        body: Stack(
          // mainAxisAlignment: MainAxisAlignment.center,
          // crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            customImage(
              Image.asset(
                'assets/resources/paris.png',
                width: 500,
                height: 300,
              ),
            ),
            // const Positioned(
            //     top: 10,
            //     right: 10,
            //     child: Icon(
            //       Icons.favorite,
            //       color: Colors.red,
            //     )),
          ],
        ),
      ),
    );
  }
}

Widget customImage(Image img) {
  return Stack(
    children: [
      img,
    ],
  );
}
