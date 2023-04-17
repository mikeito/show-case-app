import 'package:flutter/material.dart';

class BorderedIcon extends StatelessWidget {
  final double padding;
  final Widget? child;
  final Color? backgroundColor;
  final Color? borderColor;
  final Color? iconColor;

  const BorderedIcon({
    super.key,
    required this.padding,
    this.child,
    this.backgroundColor = Colors.white,
    this.borderColor = Colors.white,
    this.iconColor = Colors.white,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(padding),
      decoration: BoxDecoration(
        color: backgroundColor,
        shape: BoxShape.circle,
      ),
      child: child,
    );
  }
}
