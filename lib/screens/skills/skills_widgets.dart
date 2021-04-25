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
  static bool showStack1 = false;
  static bool showStack2 = false;

  static bool whatSeen = false;
  static bool skillsSeen = false;
  static bool stack1Seen = false;
  static bool stack2Seen = false;

  final stack = [
    'Dart (Flutter)',
    'Python',
    'Git',
    'MySQL',
    'Linux',
  ];

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
          if (showSkills)
            SkillBox(
              color: widget.color,
              isMobile: widget.isMobile,
              score: 90,
            ),

          //   Typewriter(
          //     "Hello! I'm Erfan Rahmati, A teen software developer.\n\n"
          //     "I love to create performant and interesting stuff that are beneficial to the community\n"
          //     "I enjoy learning and exploring new areas in the technologies I work with and even the ones outside my stack.\n\n",
          //     //"Currently I am working with Dart, Python and Framework languages.",
          //     animate: !skillsSeen,
          //     duration: const Duration(seconds: 10),
          //     textStyle: TextStyle(
          //       color: widget.color,
          //       fontSize: 16,
          //       letterSpacing: 1.2,
          //       height: 1.3,
          //     ),
          //     onEnd: () {
          //       if (mounted) {
          //         setState(() {
          //           showStack1 = true;
          //           skillsSeen = true;
          //         });
          //       }
          //     },
          //   ),
          if (showStack1) ...[
            SizedBox(height: 54),
            // Typewriter(
            //   'What do I work with?',
            //   animate: !stack1Seen,
            //   duration: const Duration(seconds: 1),
            //   textStyle: TextStyle(
            //     color: widget.color,
            //     fontSize: 24,
            //     fontWeight: FontWeight.w700,
            //     letterSpacing: 1.4,
            //   ),
            //   onEnd: () {
            //     if (mounted) {
            //       setState(() {
            //         showStack2 = true;
            //         stack1Seen = true;
            //       });
            //     }
            //   },
            // ),
            Container(
              width: 60,
              height: 2,
              margin: const EdgeInsets.only(top: 4, bottom: 16),
              color: widget.color,
            ),
          ],
          if (showStack2)
            widget.isMobile
                ? Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisSize: MainAxisSize.min,
                    children: stack
                        .map<Widget>(
                          (s) => Padding(
                            padding: const EdgeInsets.symmetric(vertical: 8),
                            child: _buildStackItem(s),
                          ),
                        )
                        .toList(),
                  )
                : Wrap(
                    spacing: 80,
                    runSpacing: 12,
                    children: stack.map<Widget>(_buildStackItem).toList(),
                  ),
        ],
      ),
    );
  }

  Widget _buildStackItem(String item) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        CircleAvatar(
          radius: 3,
          backgroundColor: widget.color,
        ),
        SizedBox(width: 5),
        Typewriter(
          item,
          animate: !stack2Seen,
          duration: const Duration(seconds: 1),
          textStyle: TextStyle(
            color: widget.color,
            fontSize: 16,
            letterSpacing: 1.4,
          ),
          onEnd: () {
            if (mounted) {
              setState(() {
                stack2Seen = true;
              });
            }
          },
        ),
      ],
    );
  }
}
