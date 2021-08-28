import 'package:flutter/material.dart';
import 'package:personal_web/constants/colors.dart';
import 'package:personal_web/screens/pages/home/home_widgets.dart';

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
            HeroImage(
              backgroundColor: kPrimaryColor,
              widgetColor: kPrimaryColor
            ),
            SizedBox(height: 32),
            Introduction(),
          ],
        ),
      ),
    );
  }
}
