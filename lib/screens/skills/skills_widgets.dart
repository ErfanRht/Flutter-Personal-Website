import 'package:flutter/material.dart';
import 'package:personal_web/models/typewriter.dart';
import 'package:personal_web/screens/skills/skill_box.dart';

class SkillsManImage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 150),
      child: Image.asset(
        'assets/images/illustration/skills.png',
        height: 450,
      ),
    );
  }
}

class SkillsContent extends StatefulWidget {
  final Color color;
  final bool isMobile;

  const SkillsContent({this.color = Colors.white, this.isMobile = false});
  @override
  _SkillsContentState createState() => _SkillsContentState();
}

class _SkillsContentState extends State<SkillsContent>
    with TickerProviderStateMixin {
  static bool showSkills = false;
  static bool skillsSeen = false;
  static bool whatSeen = false;
  static double space = 30;

  final skills = [
    'Flutter',
    'Python ',
    'Dart    ',
    'Git       ',
    'Linux  ',
    'HTML   ',
    'MySQL',
  ];
  final scores = [90.0, 85.0, 85.0, 90.0, 85.0, 75.0, 80.0];

  @override
  void initState() {
    super.initState();
    endPage();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedSize(
      vsync: this,
      duration: kThemeAnimationDuration,
      alignment: Alignment.topCenter,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        children: [
          Typewriter(
            'What are my skills?',
            animate: !whatSeen,
            duration: const Duration(seconds: 1),
            textStyle: TextStyle(
              color: widget.color,
              fontSize: 24,
              fontWeight: FontWeight.w700,
              letterSpacing: 1.4,
            ),
            onEnd: () {
              if (mounted) {
                setState(() {
                  showSkills = true;
                  whatSeen = true;
                });
              }
            },
          ),
          Container(
            width: 60,
            height: 2,
            margin: const EdgeInsets.only(top: 4, bottom: 16),
            color: widget.color,
          ),
          if (showSkills) ...[
            SizedBox(
              height: space / 2,
            ),
            Row(
              children: [
                SkillBox(
                  name: skills[0],
                  color: widget.color,
                  isMobile: widget.isMobile,
                  score: scores[0],
                  waitTime: 0,
                ),
                SizedBox(
                  width: 50,
                ),
                SkillBox(
                  name: skills[1],
                  color: widget.color,
                  isMobile: widget.isMobile,
                  score: scores[1],
                  waitTime: 3,
                ),
              ],
            ),
            SizedBox(
              height: space,
            ),
            Row(
              children: [
                SkillBox(
                  name: skills[2],
                  color: widget.color,
                  isMobile: widget.isMobile,
                  score: scores[2],
                  waitTime: 6,
                ),
                SizedBox(
                  width: 50,
                ),
                SkillBox(
                  name: skills[3],
                  color: widget.color,
                  isMobile: widget.isMobile,
                  score: scores[3],
                  waitTime: 9,
                ),
              ],
            ),
            SizedBox(
              height: space,
            ),
            Row(
              children: [
                SkillBox(
                  name: skills[4],
                  color: widget.color,
                  isMobile: widget.isMobile,
                  score: scores[4],
                  waitTime: 12,
                ),
                SizedBox(
                  width: 50,
                ),
                SkillBox(
                  name: skills[5],
                  color: widget.color,
                  isMobile: widget.isMobile,
                  score: scores[5],
                  waitTime: 15,
                ),
              ],
            ),
            SizedBox(
              height: space,
            ),
            Row(
              children: [
                SkillBox(
                  name: skills[6],
                  color: widget.color,
                  isMobile: widget.isMobile,
                  score: scores[6],
                  waitTime: 18,
                ),
              ],
            ),
          ]
        ],
      ),
    );
  }

  endPage() async {
    await Future.delayed(Duration(seconds: skills.length * 3));
    setState(() {
      skillsSeen = true;
    });
  }
}
