import 'package:flutter/material.dart';

class EmptyCircle extends StatelessWidget {
  final double padding;
  final Widget? child;
  final Color? backgroundColor;
  final Color? borderColor;

  const EmptyCircle({
    super.key,
    required this.padding,
    this.child,
    this.backgroundColor,
    this.borderColor = Colors.black26,
  });

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      onPressed: null,
      style: ElevatedButton.styleFrom(
        side: BorderSide(color: borderColor!),
        shape: const CircleBorder(),
        padding: EdgeInsets.all(padding),
        // foregroundColor: Colors.white,
        backgroundColor: backgroundColor,
      ),
      // child: const Icon(Icons.arrow_forward_ios),
      child: child,
    );
  }
}
