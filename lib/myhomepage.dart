import 'package:coffeego/widgets/body_content.dart';
import 'package:coffeego/widgets/chips_items.dart';
import 'package:coffeego/widgets/header.dart';
import 'package:coffeego/widgets/searchbar.dart';
import 'package:flutter/material.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key, required String title});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 37, 95, 56),
        title: Text("CoffeGo", style: TextStyle(color: Colors.white)),
      ),
      body: Container(
        color: Colors.white,
        child: Column(
          children: [
            Header(),
            Container(color: Colors.white, height: 10),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 20.0),
                  child: Text(
                    "Our way of loving",
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 20.0),
                  child: Text(
                    "You back",
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                  ),
                ),
              ],
            ),
            SizedBox(height: 25),
            Searchbar1(),
            SizedBox(height: 5),
            ChipsItems(),
            Padding(
              padding: const EdgeInsets.only(left: 12.0, right: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  TextButton(
                    onPressed: () {},
                    child: Text(
                      "Popular",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                        color: Colors.black,
                      ),
                    ),
                  ),
                  TextButton(
                    onPressed: () {},
                    child: Text(
                      "See All",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                        color: Color.fromARGB(255, 37, 95, 56),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(child: BodyContent()),
          ],
        ),
      ),
    );
  }
}
