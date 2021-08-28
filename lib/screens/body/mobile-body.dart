import 'package:flutter/material.dart';
import 'package:personal_web/constants/types.dart';
import 'package:personal_web/screens/shared/drawer.dart';
import 'package:personal_web/screens/shared/nav_bar.dart';
import 'package:personal_web/screens/shared/navbar/navbar.dart';
import 'package:personal_web/screens/shared/social_media_bar.dart';

class MobileBody extends StatelessWidget {
  Widget page;
  Pages selectedPage;
  MobileBody({@required this.page, @required this.selectedPage});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MobileNavbar(),
      endDrawer: AppDrawer(
        selectedPage: selectedPage
      ),
      body: page
    );
  }
}