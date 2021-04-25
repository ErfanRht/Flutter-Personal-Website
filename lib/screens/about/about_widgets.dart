import 'package:flutter/material.dart';
import 'package:personal_web/models/typewriter.dart';

class AboutManImage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Image.asset('assets/images/man.png');
  }
}

class AboutContent extends StatefulWidget {
  final Color color;
  final bool isMobile;

  const AboutContent({this.color = Colors.white, this.isMobile = false});
  @override
  _AboutContentState createState() => _AboutContentState();
}

class _AboutContentState extends State<AboutContent>
    with TickerProviderStateMixin {
  static bool showAbout = false;
  static bool showStack1 = false;
  static bool showStack2 = false;

  static bool whoSeen = false;
  static bool aboutSeen = false;
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
            'Who am I?',
            animate: !whoSeen,
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
                  showAbout = true;
                  whoSeen = true;
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
          if (showAbout)
            Typewriter(
              "Hello! I'm Erfan Rahmati, A teen software developer.\n\n"
              "I love to create performant and interesting stuff that are beneficial to the community\n"
              "I enjoy learning and exploring new areas in the technologies I work with and even the ones outside my stack.\n\n",
              //"Currently I am working with Dart, Python and Framework languages.",
              animate: !aboutSeen,
              duration: const Duration(seconds: 10),
              textStyle: TextStyle(
                color: widget.color,
                fontSize: 16,
                letterSpacing: 1.2,
                height: 1.3,
              ),
              onEnd: () {
                if (mounted) {
                  setState(() {
                    showStack1 = true;
                    aboutSeen = true;
                  });
                }
              },
            ),
          if (showStack1) ...[
            SizedBox(height: 54),
            Typewriter(
              'What do I work with?',
              animate: !stack1Seen,
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
                    showStack2 = true;
                    stack1Seen = true;
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
