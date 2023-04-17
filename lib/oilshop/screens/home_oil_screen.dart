import 'package:flutter/material.dart';
import 'package:show_case_app/oilshop/components/search_container_component.dart';
import 'package:show_case_app/oilshop/widgets/item_box_widget.dart';

class HomeOilScreen extends StatelessWidget {
  const HomeOilScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: const Color(0xFFE5E3DF),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: GestureDetector(
          // onTap: () => Navigator(),
          child: const Icon(Icons.arrow_back_ios_new_sharp),
        ),
        title: const Text(
          'Search Product',
          style: TextStyle(color: Color(0xFF1F222B)),
        ),
        centerTitle: true,
        iconTheme: const IconThemeData(color: Color(0xFF1F222B)),
        actions: [
          ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: Image.asset(
              'assets/avatars/2.jpg',
              width: 50,
              height: 50,
            ),
          ),
          SizedBox(
            width: size.width * 0.04,
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: size.width * 0.04,
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              SearchContainerComponent(size: size),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Found \n10 Results',
                    style: TextStyle(
                      color: Color(0xFF1F222B),
                      fontSize: 25,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  SizedBox(height: size.height * 0.02),
                  Wrap(
                    spacing: 16,
                    runSpacing: 16,
                    children: [
                      ItemBoxWidget(
                        image: 'assets/images/oil1.jpg',
                        title: 'Facial Cleanser',
                        subtitle: 'Citrus refreshes senses',
                        price: '9.99',
                        size: size,
                      ),
                      ItemBoxWidget(
                        image: 'assets/images/oil1.jpg',
                        title: 'Facial Cleanser',
                        subtitle: 'Citrus refreshes senses',
                        price: '9.99',
                        size: size,
                      ),
                      ItemBoxWidget(
                        image: 'assets/images/oil1.jpg',
                        title: 'Facial Cleanser',
                        subtitle: 'Citrus refreshes senses',
                        price: '9.99',
                        size: size,
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
