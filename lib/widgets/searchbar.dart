import 'package:flutter/material.dart';

class Searchbar1 extends StatelessWidget {
  const Searchbar1({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 355,
      height: 50,
      child: TextField(
        decoration: InputDecoration(
          filled: true,
          fillColor: Colors.grey[100],
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(25)),
          prefixIcon: Icon(Icons.search, color: Colors.grey),

          contentPadding: EdgeInsets.symmetric(vertical: 15),
          suffixIcon: Container(
            decoration: BoxDecoration(
              color: const Color.fromARGB(255, 37, 95, 56),
              shape: BoxShape.circle,
            ),
            child: Icon(color: Colors.white, Icons.tune),
          ),
          hintText: "Search",
        ),
      ),
    );
  }
}
