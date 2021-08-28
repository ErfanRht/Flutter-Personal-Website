// ignore: avoid_web_libraries_in_flutter
import 'dart:html' as html;
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:personal_web/constants/types.dart';
import 'package:personal_web/screens/body/body.dart';
import 'package:personal_web/screens/shared/nav_bar.dart';
import 'package:personal_web/screens/shared/social_media_bar.dart';

class MobilePage extends StatelessWidget {
  final Widget page;
  const MobilePage({@required this.page});

  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations(
        [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]);
    final Brightness brightnessValue =
        MediaQuery.of(context).platformBrightness;

    return Scaffold(
      appBar: MobileNavbar(),
      // endDrawer: AppDrawer(
      //   selectedIndex: widget.pageIndex,
      //   onItemSelected: widget.onItemSelected,
      // ),
      // body: AnimatedSwitcher(
      //   duration: kThemeAnimationDuration,
      //   child: pages[widget.pageIndex],
      // ),
    );
  }
}

class MainPage extends StatelessWidget {
  final Widget page;
  final Pages selectedPage;
  const MainPage({@required this.page, @required this.selectedPage});

  @override
  Widget build(BuildContext context) {
    bool isDark;
    SystemChrome.setPreferredOrientations(
        [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]);
    final Brightness brightnessValue =
        MediaQuery.of(context).platformBrightness;

    isDark = brightnessValue == Brightness.dark;
    // Add the File Saver js script
    final script = html.document.createElement('script') as html.ScriptElement;
    script.src = "https://cdn.jsdelivr.net/g/filesaver.js";
    html.document.body.nodes.add(script);

    return Scaffold(
      //backgroundColor: Color(0xfffafafa),
      body: Stack(
        children: [
          CustomPaint(painter: _BackgroundPainter(), size: Size.infinite),
          PageBody(
            page: page,
            selectedPage: selectedPage,
          ),
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
