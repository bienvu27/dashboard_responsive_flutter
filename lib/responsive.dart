import 'package:flutter/material.dart';

class Responsive extends StatelessWidget {
  const Responsive({Key? key, required this.mobile, this.tablet, required this.desktop}) : super(key: key);

  final Widget mobile;
  final Widget? tablet;
  final Widget desktop;

  static bool isMobile(BuildContext context) {
    return MediaQuery.of(context).size.width < 850;
  }


  static bool isTablet(BuildContext context) {
    return MediaQuery.of(context).size.width < 1100 && MediaQuery.of(context).size.width >= 850;
  }

  static bool isDesktop(BuildContext context) {
    return MediaQuery.of(context).size.width >= 1100;
  }

  @override
  Widget build(BuildContext context) {
    final Size sizeWidth = MediaQuery.of(context).size;
    if (sizeWidth.width >= 1100) {
      return desktop;
    } else if (sizeWidth.width >= 850 && tablet != null) {
      return tablet ?? const SizedBox();
    } else {
      return mobile;
    }
  }
}
