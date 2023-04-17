import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:show_case_app/furnitureshop/widgets/image_container.dart';

import '../widgets/bordered_icon.dart';

class SingleProductScreen extends StatelessWidget {
  const SingleProductScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;

    return Scaffold(
      // backgroundColor: Colors.transparent,
      // extendBodyBehindAppBar: true,
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/chair2.jpg'),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: size.width * 0.04,
                vertical: size.height * 0.02,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  BorderedIcon(
                    padding: size.width * .03,
                    backgroundColor: const Color(0xFFBAB8B4),
                    child: const Icon(
                      Icons.shopping_cart_outlined,
                      color: Colors.black,
                    ),
                  ),
                  Row(
                    children: [
                      CircleAvatar(
                        radius: size.width * .07,
                        backgroundImage: const AssetImage(
                          'assets/images/chair2.jpg',
                        ),
                      ),
                      SizedBox(width: size.width * 0.02),
                      Row(
                        children: const [
                          Icon(Icons.euro_outlined),
                          Text(
                            '950',
                            style: TextStyle(fontSize: 24),
                          ),
                        ],
                      ),
                    ],
                  ),
                  BorderedIcon(
                    padding: size.width * .03,
                    backgroundColor: const Color(0xFFEFE48B),
                    child: const Icon(
                      Icons.shopping_cart_outlined,
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.fromLTRB(
                size.width * 0.04,
                size.height * 0.017,
                0,
                size.height * 0.017,
              ),
              height: size.height * 0.15,
              color: Colors.red,
              child: Row(
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      Icon(
                        Icons.ac_unit_rounded,
                        size: 40,
                      ),
                      Icon(
                        Icons.view_module_rounded,
                        size: 40,
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(75.0),
                        child: Image.asset(
                          'assets/images/sofa1.jpg',
                          width: size.width * 0.47,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
