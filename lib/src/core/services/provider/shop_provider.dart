import 'package:flutter/material.dart';

class ShopRepo {
  static const String delivery = 'delivery';
  static const String table = 'table';
  static const String pickup = 'pickup';
  static const String lunchTime = 'lunch · 10am - 5pm';
  static const String breakfastTime = 'breakfast · 5am 11pm';
}

class ShopProvider extends ChangeNotifier {
  //? ------------------------------------------------------------------------------------------------------------------------

  String _orderType = ShopRepo.pickup;

  String get orderType => _orderType;

  void setOrderType(String type) {
    _orderType = type;
    notifyListeners();
  }

  //? ------------------------------------------------------------------------------------------------------------------------
  String _dayTime = ShopRepo.lunchTime;

  String get dayTime => _dayTime;

  setTime(String time) {
    _dayTime = time;
    notifyListeners();
  }

  //? ------------------------------------------------------------------------------------------------------------------------

  List<String> _selectedMenuItems = [];

  List<String> get selectedMenuItems => _selectedMenuItems;

  void menuSelect(String id) {
    _selectedMenuItems.contains(id) ? _selectedMenuItems.remove(id) : _selectedMenuItems.add(id);
    notifyListeners();
  }
}
