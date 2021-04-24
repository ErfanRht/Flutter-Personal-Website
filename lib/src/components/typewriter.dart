import 'package:flutter/material.dart';

class Typewriter extends StatefulWidget {
  final String text;
  final Curve curve;
  final TextStyle textStyle;
  final VoidCallback onEnd;
  final Duration duration;
  final bool animate;

  Typewriter(
    this.text, {
    this.curve = Curves.easeInOut,
    this.textStyle,
    this.onEnd,
    this.animate = true,
    this.duration = const Duration(seconds: 2),
  });

  @override
  _TypewriterState createState() => _TypewriterState();
}

class _TypewriterState extends State<Typewriter> with TickerProviderStateMixin {
  Animation<int> _characterCount;
  AnimationController controller;

  int _stringIndex;

  @override
  void initState() {
    super.initState();
    controller = AnimationController(
      duration: widget.duration,
      vsync: this,
    );

    _stringIndex = _stringIndex == null ? 0 : _stringIndex + 1;

    _characterCount = StepTween(begin: 0, end: widget.text.length).animate(
      CurvedAnimation(
        parent: controller,
        curve: widget.curve,
      ),
    )..addListener(() {
        setState(() {});
      });

    if (widget.animate) controller.forward();

    controller.addListener(() {
      if (widget.onEnd != null &&
          controller.status == AnimationStatus.completed) {
        widget.onEnd();
      }
    });
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: _characterCount == null
          ? null
          : AnimatedBuilder(
              animation: _characterCount,
              builder: (BuildContext context, Widget child) {
                String text = !widget.animate
                    ? widget.text
                    : widget.text.substring(0, _characterCount.value);

                return Text(text, style: widget.textStyle);
              },
            ),
    );
  }
}
