import 'package:flutter/material.dart';
import 'package:personal_web/src/sections/home/home_widgets.dart';

class HomeSectionMobile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: SingleChildScrollView(
        padding: const EdgeInsets.fromLTRB(30, 4, 30, 12),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            HeroImage(backgroundColor: Colors.teal),
            SizedBox(height: 32),
            Introduction(),
          ],
        ),
      ),
    );
  }
}
