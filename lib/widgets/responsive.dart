import 'package:flutter/material.dart';

class ResponsiveScreen extends StatelessWidget {
  const ResponsiveScreen(
      {super.key, required this.mobile, required this.desktop});
  final Widget mobile;
  final Widget desktop;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: ((context, constraints) {
      if (constraints.maxWidth < 500) {
        return mobile;
      } else {
        return desktop;
      }
    }));
  }
}
