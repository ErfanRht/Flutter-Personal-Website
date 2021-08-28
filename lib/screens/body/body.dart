import 'package:flutter/material.dart';
import 'package:personal_web/constants/types.dart';
import 'package:personal_web/screens/shared/navbar/navbar.dart';

class PageBody extends StatelessWidget {
  Widget page;
  Pages selectedPage;
  PageBody({@required this.page, @required this.selectedPage});
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [Navbar(selectedPage: selectedPage), Expanded(child: page)],
    );
  }
}
