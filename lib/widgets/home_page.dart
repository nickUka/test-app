import 'package:flutter/material.dart';
import 'package:test_app/helpers.dart';
import 'package:test_app/widgets/custom_animated_circle_container.dart';

///Main home page widget
class HomePage extends StatefulWidget {
  ///creates a HomePage instance
  const HomePage();

  @override
  State<HomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<HomePage> {
  Color _backgroundColor = Colors.grey.shade900;
  final double _fontSize = 30.0;

  @override
  Widget build(BuildContext context) {
    final int mediaQueryHeight =   MediaQuery.of(context).size.height.toInt();

    return Scaffold(
      body: GestureDetector(
        behavior: HitTestBehavior.translucent,
        onTap: () => setState(() {
          _backgroundColor = generateRandomColor();
        }),
        child: AnimatedContainer(
          duration: const Duration(milliseconds: 350),
          curve: Curves.easeInOut,
          color: _backgroundColor,
          child: SafeArea(
            child: Stack(
              fit: StackFit.expand,
              children: [
                Positioned(
                  top: -20.0,
                  left: -50.0,
                  child: CustomAnimatedCircleContainer(
                    maxRadius: mediaQueryHeight ~/ 3.0,
                  ),
                ),
                Positioned(
                  right: -20.0,
                  bottom: -100.0,
                  child: CustomAnimatedCircleContainer(
                    maxRadius: mediaQueryHeight ~/ 2.0,
                  ),
                ),
                Positioned(
                  left: -55.0,
                  bottom: 420.0,
                  child: CustomAnimatedCircleContainer(
                    maxRadius: mediaQueryHeight ~/ 4.0,
                  ),
                ),
                Positioned(
                  top: 78.0,
                  right: -25.0,
                  child: CustomAnimatedCircleContainer(
                    maxRadius: mediaQueryHeight ~/ 3.0,
                  ),
                ),
                Positioned.fill(
                  child: Center(
                    child: Text(
                      'Hey there',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: _fontSize,
                        color: getComplementaryColor(_backgroundColor),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
