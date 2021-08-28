import 'package:flutter/material.dart';
import 'package:personal_web/screens/body/sections/skills/skills_widgets.dart';

class SkillsSection extends StatefulWidget {
  @override
  _SkillsSectionState createState() => _SkillsSectionState();
}

class _SkillsSectionState extends State<SkillsSection> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: [
          Spacer(flex: 1),
          Expanded(
            flex: 7,
            child: SkillsManImage(false),
          ),
          Spacer(flex: 2),
          Expanded(
            flex: 8,
            child: SkillsContent(),
          ),
          //Spacer(flex: 2),
        ],
      ),
    );
  }
}
