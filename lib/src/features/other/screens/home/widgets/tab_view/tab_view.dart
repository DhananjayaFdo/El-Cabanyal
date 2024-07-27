import 'package:flutter/material.dart';

import '../../tab_view_widgets.dart';

class TabViewShower extends StatefulWidget {
  const TabViewShower({super.key});

  @override
  State<TabViewShower> createState() => _TabViewShowerState();
}

class _TabViewShowerState extends State<TabViewShower> {
  List<String> options = ['Ingredients', 'Nutritional', 'Instructions', 'Allergies'];

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: options.length,
      initialIndex: 0,
      child: Scaffold(
        appBar: AppBar(
          title: Text('Tab View Shower'),
          bottom: TabBar(
            tabs: options
                .map(
                  (e) => Tab(
                    text: e,
                  ),
                )
                .toList(),
          ),
        ),
        body: TabBarView(
          children: options
              .map(
                (e) => Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Center(
                    child: Text(
                      e,
                      style: TextStyle(fontSize: 24),
                    ),
                  ),
                ),
              )
              .toList(),
        ),
      ),
    );
  }
}
