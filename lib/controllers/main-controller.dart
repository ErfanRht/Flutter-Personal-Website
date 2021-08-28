import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:personal_web/constants/types.dart';

class MainController extends GetxController {
  SelectedPage selectedPage = SelectedPage.HOME;
  int selectedPageNum = 0;

  updatePage({SelectedPage page, int pageNum}) {
    selectedPage = page!=null?page:selectedPage;
    selectedPageNum = pageNum!=null?pageNum:selectedPageNum;
    update();
  }
}
