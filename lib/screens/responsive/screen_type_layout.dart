import 'package:flutter/material.dart';

import 'responsive_builder.dart';

enum DeviceScreenType { Mobile, Tablet, Desktop }

class ScreenTypeLayout extends StatelessWidget {
  // Mobile will be returned by default
  final Widget mobile;
  final Widget tablet;
  final Widget desktop;

  const ScreenTypeLayout({
    Key key,
    @required this.mobile,
    this.tablet,
    this.desktop,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(
      builder: (context, sizingInformation) {
        switch (sizingInformation.deviceType) {
          case DeviceScreenType.Tablet:
          case DeviceScreenType.Desktop:
            return tablet;
            break;
          default:
            return mobile;
        }
      },
    );
  }
}
