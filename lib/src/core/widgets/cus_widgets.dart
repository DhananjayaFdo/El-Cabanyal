import 'package:el_cabanyal/src/core/constants/constants.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import '../../config/theme/app_theme.dart';

flutterToast(String msg) => Fluttertoast.showToast(
  msg: msg,
  toastLength: Toast.LENGTH_SHORT,
  gravity: ToastGravity.BOTTOM,
  timeInSecForIosWeb: 1,
  backgroundColor: Colors.black,
  textColor: Colors.white,
  fontSize: 13.0,
);

class CusScrollBehavior extends ScrollBehavior {
  @override
  Widget buildOverscrollIndicator(BuildContext context, Widget child, ScrollableDetails details) {
    return child;
  }
}

String setStringText(dynamic text) {
  if (text == null || text == 'null') return '---------';
  return text.toString().capitalize();
}

class LoadingIndicator extends StatelessWidget {
  final Color color;

  const LoadingIndicator({super.key, this.color = AppTheme.white});

  @override
  Widget build(BuildContext context) {
    return CircularProgressIndicator(color: color);
  }
}

class CenterLoading extends StatelessWidget {
  final Color color;

  const CenterLoading({super.key, this.color = AppTheme.white});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: LoadingIndicator(color: color),
    );
  }
}

class CenterMsg extends StatelessWidget {
  final String msg;
  final Color textColor;

  const CenterMsg({super.key, required this.msg, this.textColor = AppTheme.white});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        msg,
        style: Theme.of(context).textTheme.bodyMedium!.copyWith(
          color: textColor,
        ),
      ),
    );
  }
}
