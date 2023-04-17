import 'package:flutter/material.dart';

class ShoppingDetailsAmountWidget extends StatelessWidget {
  final String text;
  final String amount;
  final Size size;

  const ShoppingDetailsAmountWidget({
    super.key,
    required this.text,
    required this.amount,
    required this.size,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              text,
              style: const TextStyle(
                color: Colors.black,
                fontSize: 18,
                // fontWeight: FontWeight.w500,
              ),
            ),
            Text(
              amount,
              style: const TextStyle(
                color: Colors.black,
                fontSize: 24,
                // fontWeight: FontWeight.w500,
              ),
            ),
            // RichText(text: InlineSpan.)
          ],
        ),
        SizedBox(height: size.height * 0.012),
        const Divider(
          height: 2,
          color: Colors.white,
        ),
        SizedBox(height: size.height * 0.012),
      ],
    );
  }
}
