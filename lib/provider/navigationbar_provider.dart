import 'package:flutter/material.dart';

class NavigationBarProvider extends ChangeNotifier {
  int _currentPageIndex = 0;

  int get currentPageIndex => _currentPageIndex;

  void pageIndex(int index) {
    _currentPageIndex = index;
    notifyListeners();
  }
}
