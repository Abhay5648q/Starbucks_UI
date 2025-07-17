import 'package:flutter/material.dart';

class BodyContent extends StatelessWidget {
  final List<Map<String, dynamic>> products = [
    {
      'image': 'assets/icons/ice-coffee.png',
      'title':'Chocolate\nCappuccino',
      'price': 480.00,
      'discount': 400.00,
    },
    {
      'image': 'assets/icons/iced-drink.png',
      'title':' Iced Coffee with Milk',
      'price': 200.00,
      'discount': 180.00,
    },
    {
      'image': 'assets/icons/seasonal-coconut-drink.png',
      'title': 'Vanilla \nIced Latte',
      'price': 300.00,
      'discount': 270.00,
    },
    {
      'image': 'assets/icons/tea-cup.png',
      'title': 'Cold Brew Coffee',
      'price': 400.00,
      'discount': 380.00,
    },
  ];

  BodyContent({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: GridView.builder(
        itemCount: products.length,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: 0.7,
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
        ),
        itemBuilder: (context, index) {
          final item = products[index];
          return CoffeeCard(
            imagePath: item['image'],
            title: item['title'],
            price: item['price'],
            discountPrice: item['discount'],
          );
        },
      ),
    );
  }
}

class CoffeeCard extends StatelessWidget {
  final String imagePath;
  final String title;
  final double price;
  final double discountPrice;

  const CoffeeCard({
    super.key,
    required this.imagePath,
    required this.price,
    required this.title,
    required this.discountPrice,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Color(0xFFF5EBDD), // creamy and cozy
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Expanded(
            flex: 2,
            child: SizedBox(width: 110, child: Image.asset(imagePath)),
          ),
          Expanded(
            flex: 1,
            child: Container(
              color: const Color(0xFFE7ECF1),
              width: 180,
              child: Padding(
                padding: const EdgeInsets.only(left: 15.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      title,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: const TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 15,
                      ),
                    ),
                    const SizedBox(height: 4),
                    Text(
                      "\$$price",
                      style: TextStyle(
                        decoration:
                            price != discountPrice
                                ? TextDecoration.lineThrough
                                : TextDecoration.none,
                        color: Colors.grey,
                        fontSize: 12,
                      ),
                    ),
                    Text(
                      "\$$discountPrice",
                      style: const TextStyle(
                        color: Colors.green,
                        fontWeight: FontWeight.bold,
                        fontSize: 15,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
