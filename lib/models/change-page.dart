import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:personal_web/constants/routes.dart';
import 'package:personal_web/constants/types.dart';
import 'package:personal_web/controllers/main-controller.dart';

changePage(BuildContext context, Pages page) {
  String pageRoute;
  int pageNum;
  if (page == Pages.HOME) {
    pageRoute = HomeRoute;
    pageNum = 0;
  } else if (page == Pages.ABOUT) {
    pageRoute = AboutRoute;
    pageNum = 1;
  } else if (page == Pages.SKILLS) {
    pageRoute = SkillsRoute;
    pageNum = 2;
  } else if (page == Pages.PORTFOLIO) {
    pageRoute = PortfolioRoute;
    pageNum = 3;
  }
  Get.find<MainController>().updatePage(page: page, pageNum: pageNum);
  Get.offAndToNamed(
    pageRoute,
  );
}
