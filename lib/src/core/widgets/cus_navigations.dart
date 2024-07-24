import 'package:flutter/material.dart';

Future popNavigator(BuildContext context) async {
  return Navigator.pop(context);
}

Future pushNavigator(BuildContext context, var screen) {
  return Navigator.push(
    context,
    PageRouteBuilder(
      transitionDuration: Duration.zero,
      reverseTransitionDuration: Duration.zero,
      pageBuilder: (context, animation, secondaryAnimation) => screen,
    ),
  );
}

Future animatePushNavigator(BuildContext context, var screen) {
  return Navigator.push(
    context,
    PageRouteBuilder(
      transitionDuration: Duration.zero,
      reverseTransitionDuration: Duration.zero,
      pageBuilder: (context, animation, secondaryAnimation) => screen,
    ),
  );
}

pushRemoveUntilNav(BuildContext context, var screen) {
  return Navigator.pushAndRemoveUntil(
      context,
      PageRouteBuilder(
        transitionDuration: Duration.zero,
        reverseTransitionDuration: Duration.zero,
        pageBuilder: (context, animation, secondaryAnimation) => screen,
      ),
          (route) => false);
}

pushReplacementNav(BuildContext context, var screen) {
  return Navigator.pushReplacement(
    context,
    PageRouteBuilder(
      transitionDuration: Duration.zero,
      reverseTransitionDuration: Duration.zero,
      pageBuilder: (context, animation, secondaryAnimation) => screen,
    ),
  );
}
