import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  final Color? color;
  final void Function()? onTap;
  const Button({super.key, required this.color, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(8),
        ),
        padding: EdgeInsets.all(24),
        child: Center(child: Text("TAP")),
      ),
    );
  }
}
