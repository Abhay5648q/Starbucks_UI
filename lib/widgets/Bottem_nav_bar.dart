import 'package:flutter/material.dart';

class BottemNavBar1 extends StatefulWidget {
  const BottemNavBar1({super.key});

  @override
  State<BottemNavBar1> createState() => _BottemNavBar1State();
}

class _BottemNavBar1State extends State<BottemNavBar1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
     bottomNavigationBar: BottomAppBar(
  child: SizedBox(
    height: kBottomNavigationBarHeight,
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        IconButton(
          icon: const Icon(Icons.home),
          onPressed: () {},
        ),
        IconButton(
          icon: const Icon(Icons.search),
          onPressed: () {},
        ),
        IconButton(
          icon: const Icon(Icons.favorite_border_outlined),
          onPressed: () {},
        ),
      ],
    ),
  ),
),

    );
  }
}
