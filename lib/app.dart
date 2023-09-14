import 'package:color_generating/home_screen.dart';
import 'package:flutter/material.dart';

/// Root class of app
class App extends StatelessWidget {
  /// Constant constructor
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Color generation',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const HomeScreen(),
    );
  }
}
