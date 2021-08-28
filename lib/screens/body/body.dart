import 'package:flutter/material.dart';
import 'package:personal_web/constants/colors.dart';
import 'package:personal_web/constants/types.dart';
import 'package:personal_web/screens/shared/navbar/navbar.dart';
import 'package:personal_web/screens/shared/social_media_bar.dart';

class PageBody extends StatelessWidget {
  Widget page;
  Pages selectedPage;
  PageBody({@required this.page, @required this.selectedPage});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //backgroundColor: Color(0xfffafafa),
      body: Stack(
        children: [
          CustomPaint(painter: _BackgroundPainter(), size: Size.infinite),
          Column(
      children: [Navbar(selectedPage: selectedPage), Expanded(child: page)],
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
      ..color = kPrimaryColor
      ..style = PaintingStyle.fill;

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
}
