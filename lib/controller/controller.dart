

import 'package:flutter/material.dart';

class MenuAppController  extends ChangeNotifier {
  final GlobalKey<ScaffoldState> _scaffolfKey = GlobalKey<ScaffoldState>();

  GlobalKey<ScaffoldState> get scaffolfKey => _scaffolfKey;

  void controlMenu() {
    if (!_scaffolfKey.currentState!.isDrawerOpen) {
      _scaffolfKey.currentState?.openDrawer();
    }
  }
}
