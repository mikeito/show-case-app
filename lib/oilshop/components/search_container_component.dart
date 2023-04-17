import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class SearchContainerComponent extends StatelessWidget {
  final Size size;

  const SearchContainerComponent({super.key, required this.size});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: size.height * 0.1,
      // color: Colors.amber,
      margin: EdgeInsets.symmetric(
        vertical: size.height * 0.02,
      ),
      child: Row(
        children: [
          Expanded(
            child: TextFormField(
              decoration: InputDecoration(
                hintText: 'Search',
                fillColor: Colors.white70,
                filled: true,
                hintStyle: const TextStyle(
                  color: Color(0xFF1F222B),
                  fontSize: 20,
                  fontWeight: FontWeight.w500,
                ),
                prefixIcon: const Icon(
                  Icons.search,
                  color: Colors.grey,
                ),
                // suffixIcon: const RotatedBox(
                //   quarterTurns: 1,
                //   child: Icon(
                //     Icons.tune,
                //     color: Colors.grey,
                //   ),
                // ),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15.0),
                  borderSide: BorderSide.none,
                ),
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.all(17),
            margin: EdgeInsets.only(
              left: size.width * 0.04,
            ),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(15.0),
            ),
            child: const Icon(
              Icons.tune,
              color: Colors.black,
            ),
          ),
        ],
      ),
    );
  }
}
