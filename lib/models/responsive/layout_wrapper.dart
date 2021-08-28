import 'package:flutter/material.dart';
import 'package:personal_web/constants/types.dart';
import 'package:personal_web/models/responsive/screen_type_layout.dart';
import 'package:personal_web/screens/body/body.dart';
import 'package:personal_web/screens/body/mobile-body.dart';
import 'package:personal_web/screens/main/main_page.dart';

class LayoutWrapper extends StatelessWidget {
  Widget page;
  Pages selectedPage;
  LayoutWrapper({@required this.page, @required this.selectedPage});
  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
      mobile: MobileBody(page: page, selectedPage: selectedPage),
      tablet: PageBody(page: page, selectedPage: selectedPage)
    );
  }
}
