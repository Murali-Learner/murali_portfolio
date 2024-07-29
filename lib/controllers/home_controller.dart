import 'package:SaiMurali/utils/context_extension.dart';
import 'package:flutter/material.dart';

class HomeController extends ChangeNotifier {
  final ScrollController scrollController = ScrollController();
  bool isExpanded = false;
  List<GlobalKey> globalKeys = [
    GlobalKey(),
    GlobalKey(),
    GlobalKey(),
    GlobalKey(),
  ];
  void goto(int index) {
    if (globalKeys[index].currentContext != null) {
      Scrollable.ensureVisible(
        globalKeys[index].currentContext!,
        duration: Duration(
            milliseconds:
                globalKeys[index].currentContext!.isDesktop ? 400 : 800),
      );
    }
  }
}
