import 'package:flutter/material.dart';

class CategoriesProvider extends ChangeNotifier {
  String _categoryName = 'Pizzas';

  String get categoryName => this._categoryName;

  set categoryName(String name) {
    this._categoryName = name;
    notifyListeners();
  }
}
