import 'dart:math';

import 'package:color_generating/constants/constants.dart';
import 'package:flutter/material.dart';

import 'history_screen.dart';

/// Main screen of app
class HomeScreen extends StatefulWidget {
  /// Constant constructor
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  Color? randomColor;
  List<Color> colors = [];

  void generateRandomColor() {
    final red = Random().nextInt(256);
    final green = Random().nextInt(256);
    final blue = Random().nextInt(256);

    setState(() {
      randomColor = Color.fromARGB(alphaChannel, red, green, blue);
      colors.add(randomColor ?? const Color.fromARGB(alphaChannel, 0, 0, 0));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GestureDetector(
        onTap: generateRandomColor,
        child: ColoredBox(
          color: randomColor ?? const Color.fromARGB(alphaChannel, 0, 0, 0),
          child: Center(
            child: Container(
              padding: const EdgeInsets.all(16.0),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(mediumBorderRadius),
                color: Colors.white,
              ),
              child: const Text(
                'Hello there',
                style: TextStyle(
                  fontSize: 18,
                ),
              ),
            ),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.history),
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => HistoryScreen(
                colors: colors,
              ),
            ),
          );
        },
      ),
    );
  }
}
