import 'package:el_cabanyal/src/features/other/screens/home/widgets.dart';
import 'package:flutter/material.dart';

class HomeBody extends StatelessWidget {
  const HomeBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          HomeTop(),
          TopMenu(),
          HorizontalMenu(),
          ItemsShower(),
          BtnColumn(),
        ],
      ),
    );
  }
}
