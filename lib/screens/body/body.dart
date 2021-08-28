import 'package:flutter/material.dart';
import 'package:personal_web/screens/body/sections/portfolio/portfolio.dart';
import 'package:personal_web/screens/shared/nav_bar.dart';
import 'package:personal_web/screens/body/sections/about/about.dart';
import 'package:personal_web/screens/body/sections/home/home.dart';
import 'package:personal_web/screens/body/sections/skills/skills.dart';

class PageBody extends StatelessWidget {
  Widget page;
  PageBody({@required this.page});
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [Navbar(), Expanded(child: page)],
    );
  }
}
