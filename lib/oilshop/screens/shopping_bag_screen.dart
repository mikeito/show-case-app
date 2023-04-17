import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:show_case_app/oilshop/components/shopping_bag_list_component.dart';
import 'package:show_case_app/oilshop/widgets/shopping_detail_amount_widget.dart';
import 'package:show_case_app/oilshop/widgets/shopping_item_widget.dart';

class ShoppingBagScreen extends StatelessWidget {
  const ShoppingBagScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: Colors.grey.shade200,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: const Text(
          'Shopping Bag',
          style: TextStyle(
            color: Color(0xFF1F222B),
            fontSize: 20,
            fontWeight: FontWeight.w500,
          ),
        ),
        centerTitle: true,
        actions: [
          Stack(
            children: [
              Container(
                margin: const EdgeInsets.all(7),
                padding: const EdgeInsets.symmetric(horizontal: 10),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(15.0),
                ),
                child: const Center(
                  child: Icon(
                    Icons.shopping_bag_sharp,
                    color: Colors.black,
                    // size: 32,
                  ),
                ),
              ),
              Positioned(
                top: 2,
                right: 1,
                child: Container(
                  width: 20,
                  height: 20,
                  decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(7.0),
                  ),
                  child: const Center(
                    child: Text(
                      '4',
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: size.width * 0.04,
            vertical: size.height * 0.02,
          ),
          child: Column(
            children: [
              // SizedBox(height: size.height * 0.02),
              Column(
                children: [
                  ShoppingBagListComponent(size: size),
                  Container(
                    height: size.height * 0.08,
                    margin: EdgeInsets.symmetric(vertical: size.height * 0.03),
                    padding: EdgeInsets.all(size.width * 0.04),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(14),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SizedBox(
                          width: size.width * 0.5,
                          child: TextFormField(
                            decoration: InputDecoration(
                              hintText: 'Promo Code',
                              border: InputBorder.none,
                              hintStyle: Theme.of(context)
                                  .textTheme
                                  .bodyLarge
                                  ?.copyWith(color: Colors.grey),
                            ),
                          ),
                        ),
                        ElevatedButton(
                          onPressed: null,
                          style: ButtonStyle(
                            shape: MaterialStateProperty.all<
                                RoundedRectangleBorder>(
                              RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(7),
                              ),
                            ),
                            backgroundColor:
                                MaterialStateProperty.all<Color?>(Colors.black),
                          ),
                          child: const Text(
                            'Apply',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 18,
                              // fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Column(
                    children: [
                      ShoppingDetailsAmountWidget(
                        text: 'Subtotal',
                        amount: '45.99',
                        size: size,
                      ),
                      ShoppingDetailsAmountWidget(
                        text: 'Shipping',
                        amount: '4.99',
                        size: size,
                      ),
                      ShoppingDetailsAmountWidget(
                        text: 'Bag Total',
                        amount: '50.98',
                        size: size,
                      ),
                    ],
                  ),
                  SizedBox(
                    width: size.width,
                    child: ElevatedButton(
                      onPressed: null,
                      style: ButtonStyle(
                        shape:
                            MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30),
                          ),
                        ),
                        backgroundColor:
                            MaterialStateProperty.all<Color?>(Colors.black),
                        padding: MaterialStateProperty.all<EdgeInsetsGeometry?>(
                          EdgeInsets.symmetric(
                            vertical: size.height * 0.02,
                          ),
                        ),
                      ),
                      child: const Text(
                        'Proceed To Checkout',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          // fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
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
