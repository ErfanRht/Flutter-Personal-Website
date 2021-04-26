import 'package:flutter/material.dart';
import 'package:personal_web/models/typewriter.dart';
import 'package:personal_web/screens/skills/skill_box.dart';

class SkillsManImage extends StatelessWidget {
  final bool isMobile;
  const SkillsManImage(this.isMobile);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(right: isMobile ? 0 : 150),
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

  static double space;

  List skills;
  List scores;

  @override
  void initState() {
    super.initState();
    space = 30;
    if (!widget.isMobile) {
      skills = [
        'Flutter',
        'Python ',
        'Dart    ',
        'PHP      ',
        'Git      ',
        'Linux  ',
        'HTML  ',
        'MySQL ',
      ];
    } else {
      skills = [
        'Flutter',
        'Python',
        'Dart    ',
        'PHP     ',
        'Git      ',
        'Linux  ',
        'HTML  ',
        'MySQL',
      ];
    }
    scores = [90.0, 85.0, 85.0, 60.0, 90.0, 85.0, 75.0, 80.0];
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
          if (!widget.isMobile) ...[
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
                    seen: skillsSeen,
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
                    seen: skillsSeen,
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
                    seen: skillsSeen,
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
                    seen: skillsSeen,
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
                    seen: skillsSeen,
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
                    seen: skillsSeen,
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
                    seen: skillsSeen,
                    waitTime: 18,
                  ),
                  SizedBox(
                    width: 50,
                  ),
                  SkillBox(
                    name: skills[7],
                    color: widget.color,
                    isMobile: widget.isMobile,
                    score: scores[7],
                    seen: skillsSeen,
                    waitTime: 21,
                  ),
                ],
              ),
            ]
          ] else ...[
            Column(
              children: [
                SizedBox(
                  height: 15,
                ),
                SkillBox(
                  name: skills[0],
                  color: widget.color,
                  isMobile: widget.isMobile,
                  score: scores[0],
                  seen: skillsSeen,
                  waitTime: 0 * 3,
                ),
                SizedBox(
                  height: 15,
                ),
                SkillBox(
                  name: skills[1],
                  color: widget.color,
                  isMobile: widget.isMobile,
                  score: scores[1],
                  seen: skillsSeen,
                  waitTime: 1 * 3,
                ),
                SizedBox(
                  height: 15,
                ),
                SkillBox(
                  name: skills[2],
                  color: widget.color,
                  isMobile: widget.isMobile,
                  score: scores[2],
                  seen: skillsSeen,
                  waitTime: 2 * 3,
                ),
                SizedBox(
                  height: 15,
                ),
                SkillBox(
                  name: skills[3],
                  color: widget.color,
                  isMobile: widget.isMobile,
                  score: scores[3],
                  seen: skillsSeen,
                  waitTime: 3 * 3,
                ),
                SizedBox(
                  height: 15,
                ),
                SkillBox(
                  name: skills[4],
                  color: widget.color,
                  isMobile: widget.isMobile,
                  score: scores[4],
                  seen: skillsSeen,
                  waitTime: 4 * 3,
                ),
                SizedBox(
                  height: 15,
                ),
                SkillBox(
                  name: skills[5],
                  color: widget.color,
                  isMobile: widget.isMobile,
                  score: scores[5],
                  seen: skillsSeen,
                  waitTime: 5 * 3,
                ),
                SizedBox(
                  height: 15,
                ),
                SkillBox(
                  name: skills[6],
                  color: widget.color,
                  isMobile: widget.isMobile,
                  score: scores[6],
                  seen: skillsSeen,
                  waitTime: 6 * 3,
                ),
                SizedBox(
                  height: 15,
                ),
                SkillBox(
                  name: skills[7],
                  color: widget.color,
                  isMobile: widget.isMobile,
                  score: scores[7],
                  seen: skillsSeen,
                  waitTime: 7 * 3,
                ),
                SizedBox(
                  height: 15,
                ),
              ],
            )
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
