import 'package:flutter/material.dart';

class CustomCard extends StatelessWidget {
  const CustomCard(
      {super.key, this.shape, this.margin, this.color, this.child});

  final ShapeBorder? shape;
  final EdgeInsetsGeometry? margin;
  final Color? color;
  final Widget? child;

  @override
  Widget build(BuildContext context) =>
      Card(shape: shape, margin: margin, color: color, child: child);
}
