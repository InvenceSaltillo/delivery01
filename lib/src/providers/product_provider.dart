import 'package:flutter/material.dart';

class ProductProvider extends ChangeNotifier {
  String _productSize = 'md';
  String _selectedOption = 'opcion1';
  int _qty = 1;

  int get qty => this._qty;

  set qty(int qty) {
    this._qty = qty;
    notifyListeners();
  }

  String get productSize => this._productSize;

  set productSize(String size) {
    this._productSize = size;
    notifyListeners();
  }

  String get selectedOption => this._selectedOption;

  set selectedOption(String option) {
    this._selectedOption = option;
    notifyListeners();
  }
}
