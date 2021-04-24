// ignore: avoid_web_libraries_in_flutter
import 'dart:html' as html;

import 'package:flutter/material.dart';
import 'package:personal_web/src/body.dart';
import 'package:personal_web/src/components/drawer.dart';
import 'package:personal_web/src/components/nav_bar.dart';
import 'package:personal_web/src/components/social_media_bar.dart';
import 'package:personal_web/src/sections/about/about_mobile.dart';
import 'package:personal_web/src/sections/home/home_mobile.dart';

class MobilePage extends StatefulWidget {
  final int pageIndex;
  final void Function(int index) onItemSelected;

  const MobilePage({@required this.pageIndex, this.onItemSelected});

  @override
  _MobilePageState createState() => _MobilePageState();
}

class _MobilePageState extends State<MobilePage> {
  final pages = [
    HomeSectionMobile(),
    AboutSectionMobile(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MobileNavbar(),
      endDrawer: AppDrawer(
        selectedIndex: widget.pageIndex,
        onItemSelected: widget.onItemSelected,
      ),
      body: AnimatedSwitcher(
        duration: kThemeAnimationDuration,
        child: pages[widget.pageIndex],
      ),
    );
  }
}

class MainPage extends StatelessWidget {
  final int pageIndex;
  final void Function(int index) onItemSelected;

  const MainPage({@required this.pageIndex, this.onItemSelected});

  @override
  Widget build(BuildContext context) {
    // Add the File Saver js script
    final script = html.document.createElement('script') as html.ScriptElement;
    script.src = "https://cdn.jsdelivr.net/g/filesaver.js";
    html.document.body.nodes.add(script);

    return Scaffold(
      body: Stack(
        children: [
          CustomPaint(painter: _BackgroundPainter(), size: Size.infinite),
          PageBody(pageIndex: pageIndex, onItemSelected: onItemSelected),
          Align(alignment: Alignment.centerLeft, child: SocialMediaBar()),
        ],
      ),
    );
  }
}

class _BackgroundPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final path = Path();

    path.moveTo(size.width * 0.4, 0);
    path.lineTo(size.width, 0);
    path.lineTo(size.width, size.height);
    path.lineTo(size.width * 0.6, size.height);
    path.close();

    final paint = Paint()
      ..color = Colors.teal
      ..style = PaintingStyle.fill;

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
}
