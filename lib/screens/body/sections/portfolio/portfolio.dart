import 'package:flutter/material.dart';
import 'package:personal_web/screens/body/sections/portfolio/portfolio_widgets.dart';

class PortfolioSection extends StatefulWidget {
  @override
  _PortfolioSectionState createState() => _PortfolioSectionState();
}

class _PortfolioSectionState extends State<PortfolioSection> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: [
          Spacer(flex: 1),
          SizedBox(width: 10),
          Expanded(
            flex: 10,
            child: PortfolioManImage(false),
          ),
          //SizedBox(width: 36),
          Expanded(
            flex: 8,
            child: PortfolioContent(),
          ),
          //Spacer(flex: 2),
        ],
      ),
    );
  }
}
