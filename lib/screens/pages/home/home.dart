import 'package:flutter/material.dart';
import 'package:personal_web/screens/pages/home/home_widgets.dart';

class HomeSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: [
          Spacer(flex: 2),
          SizedBox(width: 32),
          Expanded(
            flex: 6,
            child: Introduction(),
          ),
          SizedBox(width: 36),
          Expanded(
            flex: 8,
            child: Padding(
              padding: EdgeInsets.only(left: 150),
              child: HeroImage(
                widgetColor: Color(0xfffafafa),
              ),
            ),
          ),
          Spacer(flex: 2),
        ],
      ),
    );
  }
}
