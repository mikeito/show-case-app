import 'package:flutter/material.dart';

class ItemBoxWidget extends StatelessWidget {
  final String image;
  final String title;
  final String subtitle;
  final String price;
  final Size size;

  const ItemBoxWidget({
    super.key,
    required this.image,
    required this.title,
    required this.subtitle,
    required this.price,
    required this.size,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: size.height * 0.4,
      width: size.width * 0.44,
      padding: EdgeInsets.symmetric(
        vertical: size.height * 0.02,
        horizontal: size.width * 0.04,
      ),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20.0),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Image.asset(
            image,
            // width: 50,
            // height: 50,
          ),
          Text(
            title,
            style: const TextStyle(
              color: Color(0xFF1F222B),
              fontSize: 20,
              fontWeight: FontWeight.w600,
            ),
          ),
          Text(
            subtitle,
            style: const TextStyle(
              color: Color.fromARGB(255, 71, 71, 69),
              fontSize: 14,
              fontWeight: FontWeight.normal,
            ),
          ),
          Row(
            children: [
              const Icon(
                Icons.attach_money_outlined,
                // size: 30,
              ),
              Text(
                price,
                style: const TextStyle(
                  color: Color(0xFF1F222B),
                  fontSize: 22,
                  fontWeight: FontWeight.w500,
                ),
              ),
              const Spacer(),
              const CircleAvatar(
                backgroundColor: Colors.black,
                // radius: 40,
                child: Icon(
                  Icons.favorite,
                  color: Colors.white,
                ),
              ),
              // Container(
              //   padding: const EdgeInsets.all(7),
              //   decoration: BoxDecoration(
              //     color: Colors.black,
              //     borderRadius: BorderRadius.circular(30.0),
              //   ),
              //   child: const Icon(
              //     Icons.favorite,
              //     color: Colors.white,
              //   ),
              // ),
            ],
          )
        ],
      ),
    );
  }
}
