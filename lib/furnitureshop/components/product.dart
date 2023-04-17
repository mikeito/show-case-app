import 'package:flutter/material.dart';

class Product extends StatelessWidget {
  final Size size;
  final String img;
  const Product({super.key, required this.size, required this.img});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: size.width * 0.42,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        // mainAxisSize: MainAxisSize.min,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(25.0),
            child: Image.asset(
              img,
              width: size.width * 0.47,
            ),
          ),
          SizedBox(height: size.height * 0.01),
          const Text(
            'Beautiful sofa',
            style: TextStyle(fontSize: 18),
          ),
          SizedBox(height: size.height * 0.01),
          Row(
            // mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: const [
                  Icon(Icons.euro_outlined),
                  Text(
                    '1.150',
                    style: TextStyle(fontSize: 24),
                  ),
                ],
              ),
              const Icon(Icons.add),
            ],
          ),
        ],
      ),
    );
  }
}
