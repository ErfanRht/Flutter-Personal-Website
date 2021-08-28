import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:ms_undraw/ms_undraw.dart';
import 'package:personal_web/models/models/typewriter.dart';
import 'package:personal_web/screens/body/sections/skills/skill_box.dart';

class SkillsManImage extends StatelessWidget {
  final bool isMobile;
  const SkillsManImage(this.isMobile);
  @override
  Widget build(BuildContext context) {
    // return Padding(
    //   padding: EdgeInsets.only(right: isMobile ? 0 : 150),
    //   child: Image.asset(
    //     'assets/images/illustration/skills.png',
    //     height: 450,
    //   ),
    // );
    return UnDraw(
      color: Colors.teal,
      illustration: UnDrawIllustration.profile,
      placeholder: Text(
        "Illustration is loading...",
        style: TextStyle(
          color: Colors.teal,
          fontSize: 20,
        ),
      ),
      errorWidget: Icon(Icons.error_outline, color: Colors.teal, size: 50),
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
  static double space, widthSpace;

  List skills;
  List scores;
  int showSpeed, skillNumber;

  @override
  void initState() {
    super.initState();
    space = 30;
    widthSpace = 50;
    showSpeed = 750;
    skillNumber = -2;
    skills = [
      'Flutter',
      'Python',
      'Dart',
      'PHP',
      'Git',
      'Linux',
      'HTML',
      'MySQL',
      'Regex',
      'JSON'
    ];

    scores = [90.0, 80.0, 85.0, 60.0, 90.0, 85.0, 75.0, 80.0, 75.0, 85];
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
            duration: const Duration(milliseconds: 750),
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
              sizedBox(space / 2, 0),
              Row(
                children: [
                  skillBoxShower(0),
                  sizedBox(0, widthSpace),
                  skillBoxShower(1),
                ],
              ),
              sizedBox(space, 0),
              Row(
                children: [
                  skillBoxShower(2),
                  sizedBox(0, widthSpace),
                  skillBoxShower(3),
                ],
              ),
              sizedBox(space, 0),
              Row(
                children: [
                  skillBoxShower(4),
                  sizedBox(0, widthSpace),
                  skillBoxShower(5),
                ],
              ),
              sizedBox(space, 0),
              Row(
                children: [
                  skillBoxShower(6),
                  sizedBox(0, widthSpace),
                  skillBoxShower(7),
                ],
              ),
              sizedBox(space, 0),
              Row(
                children: [
                  skillBoxShower(8),
                  sizedBox(0, widthSpace),
                  skillBoxShower(9),
                ],
              ),
            ]
          ] else ...[
            Column(
              children: [
                sizedBox(15, 0),
                skillBoxShower(0),
                sizedBox(15, 0),
                skillBoxShower(1),
                sizedBox(15, 0),
                skillBoxShower(2),
                sizedBox(15, 0),
                skillBoxShower(3),
                sizedBox(15, 0),
                skillBoxShower(4),
                sizedBox(15, 0),
                skillBoxShower(5),
                sizedBox(15, 0),
                skillBoxShower(6),
                sizedBox(15, 0),
                skillBoxShower(7),
                sizedBox(15, 0),
                skillBoxShower(8),
                sizedBox(15, 0),
                skillBoxShower(9),
                sizedBox(15, 0),
              ],
            )
          ]
        ],
      ),
    );
  }

  endPage() async {
    await Future.delayed(
        Duration(milliseconds: (skills.length + 1) * 3 * showSpeed));
    setState(() {
      skillsSeen = true;
    });
  }

  Widget sizedBox(double height, double width) {
    return SizedBox(
      height: height,
      width: width,
    );
  }

  Widget skillRow() {
    setState(() {
      skillNumber++;
      skillNumber++;
    });
    return Column(
      children: [
        Row(
          children: [
            skillBoxShower(skillNumber - 1),
            sizedBox(0, widthSpace),
            skillBoxShower(skillNumber),
          ],
        ),
        sizedBox(space, 0),
      ],
    );
  }

  Widget skillBoxShower(int index) {
    return SkillBox(
      name: skills[index],
      color: widget.color,
      isMobile: widget.isMobile,
      score: scores[index],
      seen: skillsSeen,
      waitTime: index * 3 * showSpeed,
    );
  }
}
