import 'package:flutter/material.dart';

class ShoppingItemWidget extends StatelessWidget {
  final Size size;

  const ShoppingItemWidget({super.key, required this.size});

  @override
  Widget build(BuildContext context) {
    return Container(
      // color: Colors.red,
      // width: size.width,
      height: size.height * 0.12,
      child: Row(
        children: [
          Flexible(
            flex: 2,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Image.asset(
                'assets/avatars/2.jpg',
                width: 100,
                height: 100,
              ),
            ),
          ),
          SizedBox(width: size.width * 0.04),
          // Spacer(),
          Expanded(
            flex: 6,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Text(
                      'Facial Cleanser',
                      style: TextStyle(
                        color: Color(0xFF1F222B),
                        fontSize: 20,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    Icon(
                      Icons.cancel_outlined,
                      size: 18,
                    ),
                  ],
                ),
                SizedBox(height: size.height * 0.01),
                const Text(
                  'Size: 7.60 ft oz / 225ml',
                  style: TextStyle(
                    color: Color.fromARGB(255, 71, 71, 69),
                    fontSize: 12,
                    fontWeight: FontWeight.normal,
                  ),
                ),
                const Spacer(),
                // SizedBox(height: size.height * 0.03),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      '€19.98',
                      style: TextStyle(
                        color: Color(0xFF1F222B),
                        fontSize: 25,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    Row(
                      children: [
                        const Icon(Icons.remove_circle_outline),
                        SizedBox(width: size.width * 0.02),
                        const Text(
                          '02',
                          style: TextStyle(
                            color: Color(0xFF1F222B),
                            fontSize: 25,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        SizedBox(width: size.width * 0.02),
                        const Icon(Icons.add_circle_rounded),
                      ],
                    )
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
