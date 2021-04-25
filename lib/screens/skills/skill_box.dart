import 'package:flutter/material.dart';
import 'package:personal_web/models/typewriter.dart';

class SkillBox extends StatefulWidget {
  final Color color;
  final bool isMobile;
  final double score;

  const SkillBox(
      {this.color = Colors.white, this.isMobile = false, this.score = 0});
  @override
  _SkillBoxState createState() => _SkillBoxState();
}

class _SkillBoxState extends State<SkillBox> with TickerProviderStateMixin {
  double widgetWidth, insideWidgetWidth;
  @override
  void initState() {
    super.initState();
    widgetWidth = 0;
    insideWidgetWidth = 0;
    //updateValues();
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Typewriter(
          'Flutter',
          animate: !false,
          duration: const Duration(seconds: 1),
          textStyle: TextStyle(
            color: widget.color,
            fontSize: 15,
            fontWeight: FontWeight.w700,
            letterSpacing: 1.4,
          ),
          onEnd: () {
            if (mounted) {
              updateValues();
            }
          },
        ),
        SizedBox(
          width: 5,
        ),
        AnimatedContainer(
          duration: Duration(seconds: 1),
          decoration: BoxDecoration(
              color: Color(0xfffafafa), borderRadius: BorderRadius.circular(8)),
          height: 17.5,
          width: widgetWidth,
          child: Center(
            child: Row(
              children: [
                SizedBox(
                  width: 2.5,
                ),
                AnimatedContainer(
                  duration: Duration(seconds: 1),
                  decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.circular(6)),
                  height: 12.5,
                  width: insideWidgetWidth,
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }

  updateValues() async {
    setState(() {
      widgetWidth = 200;
    });
    await Future.delayed(Duration(seconds: 1));
    setState(() {
      insideWidgetWidth = widget.score * 2;
    });
  }
}
