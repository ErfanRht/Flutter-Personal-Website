import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:personal_web/constants/types.dart';
import 'package:personal_web/controllers/main-controller.dart';
import 'package:personal_web/models/models/change-page.dart';
import 'package:personal_web/models/models/url_helper.dart';

class MobileNavbar extends StatelessWidget implements PreferredSizeWidget {
  final textStyle = TextStyle(
    color: Colors.white,
    fontSize: 17,
    fontWeight: FontWeight.w700,
  );

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      elevation: 0,
      actions: [
        IconButton(
          color: Colors.teal,
          highlightColor: Colors.transparent,
          hoverColor: Colors.transparent,
          splashColor: Colors.transparent,
          icon: Icon(Icons.menu),
          onPressed: () {
            Scaffold.of(context).openEndDrawer();
          },
        )
      ],
      title: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        children: [
          CircleAvatar(
              backgroundColor: Colors.teal,
              radius: 15,
              child: Image.asset(
                'assets/images/logo/logo.png',
                height: 20,
                //'web/icons/favicon-32x32',
                color: Colors.white,
              )),
          SizedBox(width: 10),
          RichText(
            textAlign: TextAlign.center,
            text: TextSpan(
              text: 'Erfan',
              style: textStyle.copyWith(
                color: Colors.black.withOpacity(0.75),
                fontSize: 18,
                fontFamily: 'Ubuntu',
              ),
              children: [
                TextSpan(
                  text: 'Rahmati',
                  style: textStyle.copyWith(
                    color: Colors.teal,
                    fontSize: 18,
                    fontFamily: 'Ubuntu',
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(56.0);
}

class Navbar extends StatefulWidget {
  @override
  _NavbarState createState() => _NavbarState();
}

class _NavbarState extends State<Navbar> {
  final MainController mainController = Get.find();
  int selectedIndex;
  final textStyle = TextStyle(
    color: Colors.white,
    fontSize: 17,
    fontWeight: FontWeight.w700,
  );

  final items = [
    'Home',
    'About',
    'Skills',
    'Portfolio',
    'Projects',
    'Resume',
  ];

  @override
  void initState() { 
    super.initState();
      if (mainController.selectedPage == SelectedPage.HOME) {
            selectedIndex=0;
  } else if (mainController.selectedPage == SelectedPage.ABOUT) {
    selectedIndex=1;
  } else if (mainController.selectedPage == SelectedPage.SKILLS) {
    selectedIndex=2;
  } else if (mainController.selectedPage == SelectedPage.PORTFOLIO) {
    selectedIndex=3;
  }
  }

  @override
  Widget build(BuildContext context) {
    return GetBuilder<MainController>(builder: (_) {
      return Container(
        height: 72,
        width: double.infinity,
        child: Row(
          children: [
            Expanded(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                mainAxisSize: MainAxisSize.min,
                children: [
                  CircleAvatar(
                      backgroundColor: Colors.teal,
                      radius: 15,
                      child: Image.asset(
                        'assets/images/logo/logo.png',
                        height: 20,
                        color: Colors.white,
                      )),
                  SizedBox(width: 8),
                  RichText(
                    textAlign: TextAlign.center,
                    text: TextSpan(
                      text: 'Erfan',
                      style: textStyle.copyWith(
                        color: Colors.black.withOpacity(0.75),
                        fontSize: 18,
                        fontFamily: 'Ubuntu',
                      ),
                      children: [
                        TextSpan(
                          text: 'Rahmati',
                          style: textStyle.copyWith(
                            color: Colors.teal,
                            fontSize: 18,
                            fontFamily: 'Ubuntu',
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: items.map((item) {
                  return InkWell(
                    onTap: () {
                      switch (item) {
                        case 'Home':
                          if (mounted) {
                            changePage(context, SelectedPage.HOME);
                          }
                          setState(() {
                            selectedIndex = items.indexOf(item);
                          });
                          break;
                        case 'About':
                          if (mounted) {
                            changePage(context, SelectedPage.ABOUT);
                          }
                          setState(() {
                            selectedIndex = items.indexOf(item);
                          });
                          break;
                        case 'Skills':
                          if (mounted) {
                            changePage(context, SelectedPage.SKILLS);
                          }
                          setState(() {
                            selectedIndex = items.indexOf(item);
                          });
                          break;
                        case 'Portfolio':
                          if (mounted) {
                            changePage(context, SelectedPage.PORTFOLIO);
                          }
                          setState(() {
                            selectedIndex = items.indexOf(item);
                          });
                          break;
                        case 'Resume':
                          break;
                        case 'Skills':
                          // UrlHelper.launchUrl(
                          //   'https://medium.com/@debrahkwesibuabeng2',
                          // );
                          break;
                        default:
                        setState(() {
                          selectedIndex = items.indexOf(item);
                        });

                        // if (widget.onItemSelected != null) {
                        //   widget.onItemSelected(selectedIndex);
                        // }
                      }
                    },
                    child: item == 'Resume'
                        ? ResumeButton()
                        : Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                item,
                                style: textStyle.copyWith(
                                  fontWeight: FontWeight.w500,
                                  color: textStyle.color.withOpacity(
                                    _.selectedPageNum ==  items.indexOf(item)
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
                                  color: _.selectedPageNum ==  items.indexOf(item)
                                      ? Colors.white
                                      : Colors.transparent,
                                ),
                            ],
                          ),
                  );
                }).toList(),
              ),
            ),
          ],
        ),
      );
    });
  }
}

class ResumeButton extends StatefulWidget {
  @override
  _ResumeButtonState createState() => _ResumeButtonState();
}

class _ResumeButtonState extends State<ResumeButton> {
  bool hovered = false;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      hoverColor: Colors.transparent,
      splashColor: Colors.transparent,
      onTap: () {
        UrlHelper.downloadResume();
      },
      onHover: (value) {
        if (mounted) {
          setState(() {
            hovered = value;
          });
        }
      },
      child: AnimatedContainer(
        height: 40,
        duration: kThemeAnimationDuration,
        alignment: Alignment.center,
        padding: const EdgeInsets.symmetric(
          vertical: 6,
          horizontal: 10,
        ),
        decoration: BoxDecoration(
          border: Border.all(color: Colors.white, width: 2),
          borderRadius: BorderRadius.all(Radius.circular(30)),
          color: hovered ? Colors.white.withOpacity(0.92) : Colors.teal,
        ),
        child: AnimatedDefaultTextStyle(
          duration: kThemeAnimationDuration,
          style: TextStyle(
            color: hovered ? Colors.teal : Colors.white,
            fontSize: 17,
            fontWeight: FontWeight.w500,
            fontFamily: 'Ubuntu',
          ),
          child: Text(
            'Resume',
          ),
        ),
      ),
    );
  }
}
