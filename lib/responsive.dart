import 'package:flutter/material.dart';

class Responsive extends StatelessWidget {
  final Widget mobile;
  final Widget tablet;
  final Widget desktop;

  const Responsive({
    Key key,
    @required this.mobile,
    @required this.tablet,
    @required this.desktop,
  }) : super(key: key);

  //This size is depended on screesize

  static bool isMobile(BuildContext context) =>
      MediaQuery.of(context).size.width < 800;

  static bool isTablet(BuildContext context) =>
      MediaQuery.of(context).size.width < 800 &&
      MediaQuery.of(context).size.width >= 1200;

  static bool isDesktop(BuildContext context) =>
      MediaQuery.of(context).size.width >= 1200;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      //If our width is Greater than 900 then We consider it a desktop
      builder: (context, constraints) {
        if (constraints.maxWidth >= 1200) {
          return desktop;
        }
        //If width is less than 900 and more than 650 we consider it as a tablet
        else if (constraints.maxWidth >= 800) {
          return tablet;
        }
        //Or less then that we called it mobile
        else {
          return mobile;
        }
      },
    );
  }
}