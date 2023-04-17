import 'package:flutter/material.dart';
import 'package:show_case_app/furnitureshop/components/glimse.dart';
import 'package:show_case_app/furnitureshop/components/product.dart';

import '../widgets/bordered_icon.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    final List<IconData> icons = [
      Icons.chair_alt_outlined,
      Icons.soap_outlined,
      Icons.chair_outlined,
      Icons.bike_scooter_outlined,
      Icons.crib_outlined,
      Icons.account_tree_outlined,
    ];

    return Scaffold(
      backgroundColor: Colors.white,
      // extendBodyBehindAppBar: true,
      body: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: size.height * 0.02,
        ),
        child: Column(
          children: [
            Container(
              height: size.height * 0.1,
              color: Colors.orange,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  const Icon(
                    Icons.search_outlined,
                    color: Colors.black,
                  ),
                  SizedBox(width: size.width * 0.03),
                  Stack(
                    children: [
                      BorderedIcon(
                        padding: size.width * .03,
                        backgroundColor: const Color(0xFFEFE48B),
                        child: const Icon(
                          Icons.shopping_cart_outlined,
                          color: Colors.black,
                        ),
                      ),
                      Positioned(
                        bottom: -4,
                        right: 0,
                        child: BorderedIcon(
                          padding: size.width * .012,
                          backgroundColor: Colors.black,
                          child: const Text(
                            '2',
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Container(
              height: size.height * 0.15,
              color: Colors.red,
              width: size.width,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  const Text(
                    'Catalog',
                    style: TextStyle(
                      fontSize: 34.0,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  // SizedBox(height: size.height * 0.02),
                  Expanded(
                    child: ListView.separated(
                      scrollDirection: Axis.horizontal,
                      shrinkWrap: true,
                      itemCount: 5,
                      separatorBuilder: (context, index) =>
                          SizedBox(width: size.width * 0.03),
                      itemBuilder: (context, index) {
                        return BorderedIcon(
                          padding: size.width * .05,
                          backgroundColor: Colors.limeAccent,
                          child: Icon(icons[index]),
                        );
                      },
                    ),
                  ),
                ],
              ),
            ),
            Container(
              height: size.height * 0.25,
              padding: EdgeInsets.only(
                top: size.height * 0.02,
              ),
              color: Colors.amberAccent,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Product(
                    size: size,
                    img: 'assets/images/sofa1.jpg',
                  ),
                  Product(
                    size: size,
                    img: 'assets/images/sofa1.jpg',
                  ),
                ],
              ),
            ),
            Expanded(
              // flex: 4,
              child: Stack(
                children: [
                  Column(
                    children: [
                      // Glimse(size: size),
                      SizedBox(height: size.height * 0.02),

                      Container(
                        decoration: BoxDecoration(
                          color: const Color(0xFF8E9BBB),
                          borderRadius: BorderRadius.circular(30.0),
                        ),
                        width: size.width,
                        height: size.height * 0.2,
                        child: Container(
                          margin: const EdgeInsets.all(7.0),
                          decoration: BoxDecoration(
                            color: const Color(0xFFA0AFD3),
                            borderRadius: BorderRadius.circular(30.0),
                          ),
                          // width: size.width,
                          // height: size.height * 0.2,
                        ),
                      ),
                      SizedBox(height: size.height * 0.02),
                      Container(
                        decoration: BoxDecoration(
                          color: Colors.red,
                          borderRadius: BorderRadius.circular(30.0),
                        ),
                        width: size.width,
                        height: size.height * 0.2,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Glimse(size: size),
                          ],
                        ),
                      ),
                    ],
                  ),
                  Positioned(
                    top: size.height * 0.05,
                    left: size.width * 0.2,
                    child: const Text(
                      'Get table - \n    + for free',
                      style: TextStyle(
                        fontSize: 28,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                  // Positioned(
                  //   top: size.height * 0.15,
                  //   left: size.width * 0.1,
                  //   child: Image.asset('assets/images/hanging_chair.jpg'),
                  // ),

                  // Positioned(
                  //   bottom: size.height * 0.03,
                  //   child: Glimse(size: size),
                  // ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
