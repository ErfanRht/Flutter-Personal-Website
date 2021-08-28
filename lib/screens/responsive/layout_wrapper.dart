import 'package:flutter/material.dart';
import 'package:personal_web/screens/responsive/screen_type_layout.dart';
import 'package:personal_web/screens/main/main_page.dart';

class LayoutWrapper extends StatelessWidget {
  Widget page;
  LayoutWrapper({@required this.page});
  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
      mobile: MobilePage(
        page: page,
      ),
      tablet: MainPage(
        page: page,
      ),
    );
  }
}
