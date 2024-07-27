import 'package:flutter/material.dart';

class ShopRepo {
  static const String delivery = 'delivery';
  static const String table = 'table';
  static const String pickup = 'pickup';
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

  List<String> _selectedMenuItems = [];

  List<String> get selectedMenuItems => _selectedMenuItems;

  void menuSelect(String id) {
    _selectedMenuItems.contains(id) ? _selectedMenuItems.remove(id) : _selectedMenuItems.add(id);
    notifyListeners();
  }
}
