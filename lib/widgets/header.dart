import 'package:flutter/material.dart';

class Header extends StatelessWidget {
  const Header({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color.fromARGB(255, 248, 245, 233),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 10.0),
            child: IconButton(
              onPressed: () {},
              icon: Image.asset(
                'assets/images/menus.png',
                width: 30, // Adjust size
                height: 30,
              ),
            ),
          ),

          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Image.asset(
              'assets/images/starbucks.png',
              width: 90, // Adjust size
              height: 90,
            ),
          ),

          Padding(
            padding: const EdgeInsets.only(right: 10.0),
            child: IconButton(
              onPressed: () {},
              icon: Image.asset(
                'assets/images/shopping-bag.png',
                width: 30, // Adjust size
                height: 30,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
