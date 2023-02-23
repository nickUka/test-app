import 'package:flutter/material.dart';
import 'package:test_app/widgets/home_page.dart';

/// Widget which contains the main app
class App extends StatelessWidget {
  ///Creates a App instance
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Test App',
      home: HomePage(),
    );
  }
}
