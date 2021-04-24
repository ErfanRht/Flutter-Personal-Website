import 'package:flutter/material.dart';
import 'package:personal_web/src/sections/about/about_widgets.dart';

class AboutSectionMobile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: SingleChildScrollView(
        padding: const EdgeInsets.fromLTRB(30, 4, 30, 24),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            AboutManImage(),
            SizedBox(height: 32),
            AboutContent(color: Colors.teal, isMobile: true),
          ],
        ),
      ),
    );
  }
}
