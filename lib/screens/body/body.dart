import 'package:flutter/material.dart';
import 'package:personal_web/screens/body/sections/portfolio/portfolio.dart';
import 'package:personal_web/shared/nav_bar.dart';
import 'package:personal_web/screens/body/sections/about/about.dart';
import 'package:personal_web/screens/body/sections/home/home.dart';
import 'package:personal_web/screens/body/sections/skills/skills.dart';

class PageBody extends StatefulWidget {
  final int pageIndex;
  final void Function(int index) onItemSelected;

  const PageBody({@required this.pageIndex, this.onItemSelected});

  @override
  _PageBodyState createState() => _PageBodyState();
}

class _PageBodyState extends State<PageBody> {
  final pages = [
    HomeSection(),
    AboutSection(),
    SkillsSection(),
    PortfolioSection(),
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Navbar(
          selectedIndex: widget.pageIndex,
          onItemSelected: widget.onItemSelected,
        ),
        Expanded(
          child: AnimatedSwitcher(
            duration: Duration(milliseconds: 350),
            child: pages[widget.pageIndex],
          ),
        ),
      ],
    );
  }
}
