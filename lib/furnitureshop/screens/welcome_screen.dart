import 'package:flutter/material.dart';
import '../widgets/empty_circle.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: Color(0xFFE5E3DF),
      body: Container(
        padding: const EdgeInsets.symmetric(horizontal: 1.0),
        height: double.infinity,
        width: double.infinity,
        child: Stack(
          children: [
            Positioned(
              top: 0,
              left: size.width * .32,
              child: EmptyCircle(padding: size.width * .12),
            ),
            Positioned(
              top: size.width * .11,
              right: 0,
              child: EmptyCircle(padding: size.width * .27),
            ),
            Positioned(
              top: size.width * .46,
              left: 0,
              child: CircleAvatar(
                radius: size.width * .30,
                backgroundImage: const AssetImage(
                  'assets/images/hanging_chair.jpg',
                ),
              ),
            ),
            Positioned(
              top: size.width * 1.01,
              left: 0,
              child: EmptyCircle(padding: size.width * .103),
            ),
            Positioned(
              top: size.width * .732,
              right: 0,
              child: CircleAvatar(
                radius: size.width * .216,
                backgroundImage: const AssetImage(
                  'assets/images/sofa2.jpg',
                ),
              ),
            ),
            Positioned(
              top: size.width * 1.04,
              left: size.width * .14,
              child: CircleAvatar(
                radius: size.width * .30,
                backgroundImage: const AssetImage(
                  'assets/images/sofa1.jpg',
                ),
              ),
            ),
            Positioned(
              bottom: size.width * 0.134,
              left: size.width * 0.1,
              child: EmptyCircle(padding: size.width * .12),
            ),
            Positioned(
              bottom: 0,
              left: size.width * 0.04,
              child: EmptyCircle(padding: size.width * .08),
            ),
            Positioned(
              bottom: 0,
              right: 0,
              child: Container(
                padding: EdgeInsets.all(size.width * .02),
                decoration: const BoxDecoration(
                  color: Colors.black,
                  shape: BoxShape.circle,
                ),
                child: EmptyCircle(
                  padding: size.width * .14,
                  // borderColor: const Color(0xFF1F2336),
                  backgroundColor: const Color(0xFF1F2336),
                  child: const Icon(
                    Icons.arrow_forward_outlined,
                    color: Colors.white,
                    size: 50.0,
                  ),
                ),
              ),
            ),
            Positioned(
              top: size.width * 0.22,
              // left: size.width * 0.04,
              child: SizedBox(
                width: size.width,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Text(
                      'Designer \nFurniture',
                      style: TextStyle(fontSize: 65.0),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
