import 'package:flutter/material.dart';
import 'package:personal_web/screens/body/sections/about/about_widgets.dart';

class AboutSection extends StatefulWidget {
  @override
  _AboutSectionState createState() => _AboutSectionState();
}

class _AboutSectionState extends State<AboutSection> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: [
          Spacer(flex: 1),
          //SizedBox(width: 32),
          Expanded(
            flex: 7,
            child: AboutManImage(),
          ),
          Spacer(flex: 2),
          //SizedBox(width: 36),
          Expanded(
            flex: 6,
            child: AboutContent(),
          ),
          Spacer(flex: 2),
        ],
      ),
    );
  }
}
