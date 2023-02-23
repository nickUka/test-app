import 'dart:math';

import 'package:flutter/material.dart';

///generates a random color based on RGB's values
Color generateRandomColor() {
  const int maxValue = 256;

  final int redValue = Random().nextInt(maxValue);
  final int greenValue = Random().nextInt(maxValue);
  final int blueValue = Random().nextInt(maxValue);

  return Color.fromRGBO(redValue, greenValue, blueValue, 1.0);
}

///receives a color as parameter and returns its
///complementary color based on RGB's values
Color getComplementaryColor(Color color) {
  const int subtractValue = 255;

  final int redValue = subtractValue - color.red;
  final int greenValue = subtractValue - color.green;
  final int blueValue = subtractValue - color.blue;

  return Color.fromRGBO(redValue, greenValue, blueValue, 1.0);
}

///generates random int between given min and max values
 int generateRandomNumber(int min, int max) =>
      min + Random().nextInt(max - min);
