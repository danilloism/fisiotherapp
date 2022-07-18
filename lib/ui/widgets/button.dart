import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  const Button({
    super.key,
    this.padding = const EdgeInsets.symmetric(horizontal: 50, vertical: 0),
    this.height = 50,
    required this.onPressed,
    required this.child,
  });
  final EdgeInsetsGeometry padding;
  final double height;
  final void Function()? onPressed;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: height,
      padding: padding,
      child: ElevatedButton(
        onPressed: onPressed,
        child: child,
      ),
    );
  }
}
