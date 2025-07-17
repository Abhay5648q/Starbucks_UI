import 'package:flutter/material.dart';

class ChipsItems extends StatefulWidget {
  const ChipsItems({super.key});

  @override
  State<ChipsItems> createState() => _ChipsItemsState();
}

class _ChipsItemsState extends State<ChipsItems> {
  int selectedIndex = 0;

  final List<String> categories = [
    "All",
    "Coffee",
    "Tea",
    "Drinks",
    "Soda",
    "Juices",
    "Smoothies",
    "Cocktails",
    "Iced Beverages",
    "Mocktails",
    "Seasonal Drinks",
  ];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 8.0, top: 8.0),
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: List.generate(categories.length, (index) {
            return Padding(
              padding: const EdgeInsets.only(left: 8.0),
              child: ChoiceChip(
                label: Row(
                  children: [
                    if (categories[index] == "Coffee")
                      Padding(
                        padding: const EdgeInsets.only(right: 8.0),
                        child: CircleAvatar(
                          radius: 12,
                          backgroundImage: AssetImage(
                            'assets/icons/coffee-cup.png',
                          ),
                          backgroundColor: Colors.transparent,
                        ),
                      ),
                    if (categories[index] == "Tea")
                      Padding(
                        padding: const EdgeInsets.only(right: 8.0),
                        child: CircleAvatar(
                          radius: 12,
                          backgroundImage: AssetImage(
                            'assets/icons/tea-cup.png',
                          ),
                          backgroundColor: Colors.transparent,
                        ),
                      ),
                    if (categories[index] == "Drinks")
                      Padding(
                        padding: const EdgeInsets.only(right: 8.0),
                        child: CircleAvatar(
                          radius: 12,
                          backgroundImage: AssetImage(
                            'assets/icons/cold-drink.png',
                          ),
                          backgroundColor: Colors.transparent,
                        ),
                      ),
                    if (categories[index] == "Soda")
                      Padding(
                        padding: const EdgeInsets.only(right: 8.0),
                        child: CircleAvatar(
                          radius: 12,
                          backgroundImage: AssetImage(
                            'assets/icons/soft-drink.png',
                          ),
                          backgroundColor: Colors.transparent,
                        ),
                      ),
                    if (categories[index] == "Juices")
                      Padding(
                        padding: const EdgeInsets.only(right: 8.0),
                        child: CircleAvatar(
                          radius: 12,
                          backgroundImage: AssetImage('assets/icons/juice.png'),
                          backgroundColor: Colors.transparent,
                        ),
                      ),
                    if (categories[index] == "Smoothies")
                      Padding(
                        padding: const EdgeInsets.only(right: 8.0),
                        child: CircleAvatar(
                          radius: 12,
                          backgroundImage: AssetImage(
                            'assets/icons/smoothie.png',
                          ),
                          backgroundColor: Colors.transparent,
                        ),
                      ),
                    if (categories[index] == "Cocktails")
                      Padding(
                        padding: const EdgeInsets.only(right: 8.0),
                        child: CircleAvatar(
                          radius: 12,
                          backgroundImage: AssetImage(
                            'assets/icons/cocktail.png',
                          ),
                          backgroundColor: Colors.transparent,
                        ),
                      ),
                    if (categories[index] == "Iced Beverages")
                      Padding(
                        padding: const EdgeInsets.only(right: 8.0),
                        child: CircleAvatar(
                          radius: 12,
                          backgroundImage: AssetImage(
                            'assets/icons/iced-drink.png',
                          ),
                          backgroundColor: Colors.transparent,
                        ),
                      ),
                    if (categories[index] == "Mocktails")
                      Padding(
                        padding: const EdgeInsets.only(right: 8.0),
                        child: CircleAvatar(
                          radius: 12,
                          backgroundImage: AssetImage(
                            'assets/icons/mocktail.png',
                          ),
                          backgroundColor: Colors.transparent,
                        ),
                      ),
                    if (categories[index] == "Seasonal Drinks")
                      Padding(
                        padding: const EdgeInsets.only(right: 8.0),
                        child: CircleAvatar(
                          radius: 12,
                          backgroundImage: AssetImage(
                            'assets/icons/seasonal-coconut-drink.png',
                          ),
                          backgroundColor: Colors.transparent,
                        ),
                      ),
                    Text(
                      categories[index],
                      style: TextStyle(
                        color:
                            selectedIndex == index
                                ? Colors.white
                                : Colors.black54,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ],
                ),
                selected: selectedIndex == index,
                showCheckmark: false,
                selectedColor: Color.fromARGB(255, 37, 95, 56),
                backgroundColor: const Color.fromARGB(255, 248, 245, 233),

                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15),
                ),
                onSelected: (bool selected) {
                  setState(() {
                    selectedIndex = index;
                  });
                },
              ),
            );
          }),
        ),
      ),
    );
  }
}
