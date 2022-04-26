import 'package:flutter/cupertino.dart';

class TabsModel extends ChangeNotifier {
  var _currentIndexTab = 0;
  int get currentIndexTab => _currentIndexTab;
  void setCurrentIndexTab(int index) {
    _currentIndexTab = index;
    notifyListeners();
  }
}
