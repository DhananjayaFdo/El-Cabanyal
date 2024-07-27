import 'dart:convert';
import 'dart:developer';

import 'package:el_cabanyal/src/features/other/domain/entity/entities.dart';
import 'package:el_cabanyal/src/features/other/domain/entity/modifiers/modifiers.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../../../features/other/domain/entity/entities.dart';
import '../../../features/other/domain/entity/menu/menu.dart';

class DataProvider extends ChangeNotifier {
  List<MenuEntity>? _menus;
  List<CategoryEntity>? _categories;
  List<ItemEntity>? _items;
  List<ModifierEntity>? _modifiers;

  List<MenuEntity>? get menu => _menus;

  List<CategoryEntity>? get categories => _categories;

  List<ItemEntity>? get item => _items;

  List<ModifierEntity>? get modifiers => _modifiers;

  Future<void> loadMenuData() async {
    try {
      String data = await rootBundle.loadString('lib/src/config/json/assignment-dataset.json');
      Map decoded = json.decode(data);
      _menus = List.castFrom(decoded['Result']['Menu']).map((e) => MenuEntity.fromJson(e)).toList();
    } catch (e) {
      _menus = [];
      log('MENU DATA LOAD ERROR $e');
    }
    notifyListeners();
  }

  Future<void> loadCategoryData() async {
    try {
      String data = await rootBundle.loadString('lib/src/config/json/assignment-dataset.json');
      Map decoded = json.decode(data);
      _categories = List.castFrom(decoded['Result']['Categories']).map((e) => CategoryEntity.fromJson(e)).toList();
    } catch (e) {
      _categories = [];
      log('CATEGORY DATA LOAD ERROR $e');
    }
    notifyListeners();
  }

  Future<void> loadItemData() async {
    try {
      String data = await rootBundle.loadString('lib/src/config/json/assignment-dataset.json');
      Map decoded = json.decode(data);
      _items = List.castFrom(decoded['Result']['Items']).map((e) => ItemEntity.fromJson(e)).toList();
    } catch (e) {
      _categories = [];
      log('ITEM DATA LOAD ERROR $e');
    }
    notifyListeners();
  }

  Future<void> loadModifiersData() async {
    try {
      String data = await rootBundle.loadString('lib/src/config/json/assignment-dataset.json');
      Map decoded = json.decode(data);
      _modifiers = List.castFrom(decoded['Result']['ModifierGroups']).map((e) => ModifierEntity.fromJson(e)).toList();
    } catch (e) {
      _modifiers = [];
      log('ITEM MODIFICATIONS LOAD ERROR $e');
    }
    notifyListeners();
  }
}
