import 'package:flutter/material.dart';

class ImageContainer extends StatelessWidget {
  final double width;
  final double height;
  final String img;
  final EdgeInsets? padding;
  final EdgeInsets? marging;
  final Widget? child;

  const ImageContainer({
    super.key,
    required this.width,
    required this.height,
    required this.img,
    this.padding,
    this.marging,
    this.child,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      decoration: BoxDecoration(
          // borderRadius: BorderRadius.circular(20)
          image: DecorationImage(
        image: AssetImage(img),
        fit: BoxFit.cover,
      )),
    );
  }
}
