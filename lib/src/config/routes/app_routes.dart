import 'package:flutter/material.dart';

import '../../features/other/screens/screens.dart';

class AppRoutes {
  static const String splash = "/";


  static Route<dynamic> generatedRoute(RouteSettings settings) {
    switch (settings.name) {
      case splash:
    return NavStyles.nav1(Scaffold());
      default:
        return NavStyles.nav1(const RouteNotFoundScreen());
    }
  }
}

class NavStyles {
  static nav1(Widget scree) {
    return PageRouteBuilder(
      pageBuilder: (context, animation, secondaryAnimation) => scree,
    );
  }
}