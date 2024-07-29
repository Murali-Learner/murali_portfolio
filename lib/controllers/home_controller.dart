import 'package:flutter/material.dart';

class HomeController extends ChangeNotifier {
  bool isExpanded = false;
  List<GlobalKey> globalKeys = [
    GlobalKey(),
    GlobalKey(),
    GlobalKey(),
    GlobalKey(),
  ];
  void goto(int index) {
    if (globalKeys[index].currentContext != null) {
      Scrollable.ensureVisible(globalKeys[index].currentContext!);
    }
  }
}
