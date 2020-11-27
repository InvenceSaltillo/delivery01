import 'package:flutter/material.dart';

class DetailAppbarProvider extends ChangeNotifier {
  int _pageIndex = 0;

  int get pageIndex => this._pageIndex;

  set pageIndex(int idx) {
    this._pageIndex = idx;
    notifyListeners();
  }
}
