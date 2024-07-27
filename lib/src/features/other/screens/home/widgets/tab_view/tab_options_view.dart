import 'package:flutter/material.dart';

class TabOptionView extends StatefulWidget {
  const TabOptionView({super.key});

  @override
  State<TabOptionView> createState() => _TabOptionViewState();
}

class _TabOptionViewState extends State<TabOptionView> {
  List options = ['Ingredients', 'Nutritional', 'Instructions', 'Allergies'];

  @override
  Widget build(BuildContext context) {
    return TabBar(
      tabs: options
          .map(
            (e) => Tab(
              text: e,
            ),
          )
          .toList(),
    );
  }
}
