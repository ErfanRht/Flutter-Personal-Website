import 'package:flutter/material.dart';
import 'package:personal_web/src/components/responsive/screen_type_layout.dart';
import 'package:personal_web/src/main_page.dart';

class LayoutWrapper extends StatefulWidget {
  @override
  _LayoutWrapperState createState() => _LayoutWrapperState();
}

class _LayoutWrapperState extends State<LayoutWrapper> {
  int currentPage = 0;

  void onItemSelected(int index) {
    if (mounted) {
      setState(() {
        currentPage = index;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
      mobile: MobilePage(
        pageIndex: currentPage,
        onItemSelected: onItemSelected,
      ),
      tablet: MainPage(
        pageIndex: currentPage,
        onItemSelected: onItemSelected,
      ),
    );
  }
}
