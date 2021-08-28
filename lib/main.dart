import 'package:get/get.dart';
import 'package:personal_web/constants/colors.dart';
import 'package:personal_web/constants/routes.dart';
import 'package:personal_web/constants/types.dart';
import 'package:personal_web/controllers/main-controller.dart';
import 'package:personal_web/models/responsive/layout_wrapper.dart';
import 'package:flutter/material.dart';
import 'package:personal_web/screens/pages/about/about.dart';
import 'package:personal_web/screens/pages/home/home.dart';
import 'package:personal_web/screens/pages/portfolio/portfolio.dart';
import 'package:personal_web/screens/pages/skills/skills.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {  
  // ignore: unused_local_variable
  MainController mainController = Get.put(MainController());
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Erfan Rahmati',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: kPrimaryColor,
        fontFamily: 'Ubuntu',
      ),
      initialRoute: HomeRoute,
      routes: {
        HomeRoute: (context) => LayoutWrapper(
              page: HomeSection(),
                selectedPage: Pages.HOME,
            ),
        AboutRoute: (context) => LayoutWrapper(
              page: AboutSection(),
              selectedPage: Pages.ABOUT,
            ),
        SkillsRoute: (context) => LayoutWrapper(
              page: SkillsSection(),
              selectedPage: Pages.SKILLS,
            ),
        PortfolioRoute: (context) => LayoutWrapper(
              page: PortfolioSection(),
              selectedPage: Pages.PORTFOLIO,
            ),
      },
    );
  }
}
