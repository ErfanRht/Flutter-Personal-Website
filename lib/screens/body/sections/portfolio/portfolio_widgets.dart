import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:personal_web/models/models/typewriter.dart';
import 'package:personal_web/screens/body/sections/portfolio/portfolio_box.dart';

class PortfolioManImage extends StatelessWidget {
  final bool isMobile;
  const PortfolioManImage(this.isMobile);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(right: isMobile ? 0 : 150),
      child: Image.asset(
        'assets/images/illustration/Portfolios.png',
        height: 450,
      ),
    );
  }
}

class PortfolioContent extends StatefulWidget {
  final Color color;
  final bool isMobile;

  const PortfolioContent({this.color = Colors.white, this.isMobile = false});
  @override
  _PortfolioContentState createState() => _PortfolioContentState();
}

class _PortfolioContentState extends State<PortfolioContent>
    with TickerProviderStateMixin {
  static bool showPortfolio = false;
  static bool portfolioSeen = false;
  static bool whatSeen = false;
  static double space, widthSpace;

  List portfolio;
  List scores;
  int showSpeed, portfolioNumber;

  @override
  void initState() {
    super.initState();
    space = 30;
    widthSpace = 50;
    showSpeed = 750;
    portfolioNumber = -2;
    portfolio = [
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
        children: [],
      ),
    );
  }

  endPage() async {
    await Future.delayed(
        Duration(milliseconds: (portfolio.length + 1) * 3 * showSpeed));
    setState(() {
      portfolioSeen = true;
    });
  }

  Widget sizedBox(double height, double width) {
    return SizedBox(
      height: height,
      width: width,
    );
  }
}
