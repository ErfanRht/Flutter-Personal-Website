import 'package:flutter/material.dart';
import 'package:personal_web/src/sections/skills/skills_widgets.dart';

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
          Spacer(flex: 2),
          SizedBox(width: 32),
          Expanded(
            flex: 8,
            child: SkillsManImage(),
          ),
          SizedBox(width: 36),
          Expanded(
            flex: 6,
            child: SkillsContent(),
          ),
          Spacer(flex: 2),
        ],
      ),
    );
  }
}
