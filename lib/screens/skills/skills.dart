import 'package:flutter/material.dart';
import 'package:personal_web/screens/skills/skills_widgets.dart';

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
          SizedBox(width: 10),
          Expanded(
            flex: 10,
            child: SkillsManImage(),
          ),
          //SizedBox(width: 36),
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
