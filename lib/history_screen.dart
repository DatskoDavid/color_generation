import 'package:color_generating/constants/constants.dart';
import 'package:flutter/material.dart';

/// Screen for display history of colors
class HistoryScreen extends StatelessWidget {
  /// Constant constructor
  const HistoryScreen({
    required this.colors,
    super.key,
  });

  /// List of colors
  final List<Color> colors;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          const SliverAppBar(
            floating: true,
            title: Text('History'),
            centerTitle: true,
          ),
          SliverList.builder(
            itemCount: colors.length,
            itemBuilder: (context, index) {
              return Container(
                width: double.infinity,
                height: sliverItemHeight,
                color: colors[index],
              );
            },
          )
        ],
      ),
    );
  }
}
