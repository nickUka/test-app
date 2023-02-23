import 'package:flutter/material.dart';

import 'package:test_app/helpers.dart';

///Customer animated container circle shaped 
class CustomAnimatedCircleContainer extends StatelessWidget {
  ///max radius its widget can expand
  final int maxRadius;

  /// creates a CustomAnimatedCircleContainer instance
  const CustomAnimatedCircleContainer({
    Key? key,
    required this.maxRadius,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final double radius = generateRandomNumber(
      maxRadius ~/ 2,
      maxRadius,
    ).toDouble();

    return AnimatedContainer(
      duration: const Duration(milliseconds: 600),
      curve: Curves.bounceOut,
      height: radius,
      width: radius,
      decoration: BoxDecoration(
        color: generateRandomColor(),
        shape: BoxShape.circle,
      ),
    );
  }

 
}
