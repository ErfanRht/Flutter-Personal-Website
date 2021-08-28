import 'package:flutter/material.dart';
import 'package:personal_web/constants/colors.dart';
import 'package:personal_web/constants/types.dart';
import 'package:personal_web/models/change-page.dart';
import 'package:personal_web/screens/shared/nav_bar.dart';
import 'package:personal_web/models/url_helper.dart';

class AppDrawer extends StatelessWidget {
  Pages selectedPage;
  AppDrawer({@required this.selectedPage});

  final textStyle = TextStyle(
    color: Colors.white,
    fontSize: 17,
    fontWeight: FontWeight.w700,
  );

  final items = [
    'Home',
    'About',
    'Skills',
    'Experience',
    'Projects',
    'Resume',
  ];

    final page = [
    Pages.HOME,
    Pages.ABOUT,
    Pages.SKILLS,
    Pages.PORTFOLIO,
    Pages.RESUME
  ];

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        color: kPrimaryColor,
        child: Stack(
          alignment: Alignment.center,
          children: [
            Positioned(
              left: 8,
              top: 8,
              child: IconButton(
                color: Colors.white,
                icon: Icon(Icons.close),
                onPressed: () {
                  Navigator.pop(context);
                },
              ),
            ),
            Column(
              children: [
                Container(
                  height: 100,
                  width: 100,
                  margin: EdgeInsets.only(top: 75),
                  child: Image.asset(
                    'assets/images/logo/me.png',
                    color: Color(0xfffafafa),
                  ),
                ),
              ],
            ), 
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              mainAxisSize: MainAxisSize.min,
              children: items.map((item) {
                return InkWell(
                  onTap: () {
                    switch (item) {
                        case 'Home':
                          if (selectedPage != Pages.HOME) {
                            changePage(context, Pages.HOME);
                          }
                          break;
                        case 'About':
                          if (selectedPage != Pages.ABOUT) {
                            changePage(context, Pages.ABOUT);
                          }
                          break;
                        case 'Skills':
                          if (selectedPage != Pages.SKILLS) {
                            changePage(context, Pages.SKILLS);
                          }
                          break;
                        case 'Portfolio':
                          if (selectedPage != Pages.PORTFOLIO) {
                            changePage(context, Pages.PORTFOLIO);
                          }
                          break;
                        case 'Resume':
                          break;
                        case 'Skills':
                          break;
                        default:
                      
                    }

                    Navigator.pop(context);
                  },
                  child: item == 'Resume'
                      ? SizedBox(width: 160, child: ResumeButton())
                      : Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              item,
                              style: textStyle.copyWith(
                                fontWeight: FontWeight.w500,
                                color: textStyle.color.withOpacity(
                                  selectedPage == page[items.indexOf(item)]
                                      ? 1.0
                                      : 0.75,
                                ),
                              ),
                            ),
                            SizedBox(height: 4),
                            if (item != 'Resume')
                              AnimatedContainer(
                                duration: Duration(milliseconds: 300),
                                height: 2,
                                width: 20,
                                color: selectedPage == page[items.indexOf(item)]
                                    ? Colors.white
                                    : Colors.transparent,
                              ),
                            SizedBox(height: 20),
                          ],
                        ),
                );
              }).toList(),
            ),
          ],
        ),
      ),
    );
  }
}
