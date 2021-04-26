import 'package:flutter/material.dart';
import 'package:personal_web/screens/skills/skills_widgets.dart';

class SkillsSectionMobile extends StatelessWidget {
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
            SkillsManImage(true),
            SizedBox(height: 32),
            SkillsContent(color: Colors.teal, isMobile: true),
          ],
        ),
      ),
    );
  }
}
