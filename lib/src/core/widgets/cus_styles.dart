import 'package:flutter/material.dart';

class CustomStyles {
  static OutlineInputBorder outlineInputBorder1() {
    return OutlineInputBorder(
      borderSide: const BorderSide(color: Colors.transparent),
      borderRadius: BorderRadius.circular(15),
    );
  }

  static OutlineInputBorder outlineInputBorder2() {
    return OutlineInputBorder(
      borderSide: const BorderSide(color: Colors.transparent),
      borderRadius: BorderRadius.circular(15),
    );
  }

  static OutlineInputBorder outlineInputBorder3() {
    return OutlineInputBorder(
      borderSide: const BorderSide(color: Colors.transparent),
      borderRadius: BorderRadius.circular(30),
    );
  }

  static BorderRadius chatBorder({required bool isUser}) {
    Radius radius = const Radius.circular(10);

    return BorderRadius.only(
      topRight: radius,
      topLeft: radius,
      bottomLeft: isUser ? radius : const Radius.circular(0),
      bottomRight: isUser ? const Radius.circular(0) : radius,
    );
  }
}
