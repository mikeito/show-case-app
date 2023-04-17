import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Glimse extends StatelessWidget {
  final Size size;
  const Glimse({super.key, required this.size});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: const Color(0xFFE5E3DF),
        borderRadius: BorderRadius.circular(25.0),
      ),
      padding: EdgeInsets.only(
        left: size.width * 0.1,
        right: size.width * 0.03,
      ),
      margin: EdgeInsets.symmetric(
        horizontal: size.width * 0.03,
        vertical: size.height * 0.02,
      ),
      width: size.width,
      height: size.height * 0.09,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              const Text(
                'I want them',
                style: TextStyle(fontSize: 18),
              ),
              // Text(
              //   'I want them',
              //   style: GoogleFonts.lato(
              //     textStyle: Theme.of(context).textTheme.headlineMedium,
              //     fontSize: 18,
              //     fontWeight: FontWeight.w700,
              //     fontStyle: FontStyle.italic,
              //   ),
              // ),
              SizedBox(width: size.width * 0.02),
              const Icon(Icons.add),
            ],
          ),
          Row(
            children: [
              CircleAvatar(
                radius: size.width * .07,
                backgroundImage: const AssetImage(
                  'assets/images/chair1.jpg',
                ),
              ),
              SizedBox(width: size.width * 0.02),
              CircleAvatar(
                radius: size.width * .07,
                backgroundImage: const AssetImage(
                  'assets/images/chair2.jpg',
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
