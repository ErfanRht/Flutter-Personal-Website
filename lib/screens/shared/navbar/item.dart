import 'package:flutter/material.dart';
import 'package:personal_web/constants/types.dart';

class NavbarItem extends StatelessWidget {
  
  Pages selectedPage, item;
  String itemName;
NavbarItem({@required this.item,@required this.itemName ,@required this.selectedPage});

    final textStyle = TextStyle(
    color: Colors.white,
    fontSize: 17,
    fontWeight: FontWeight.w700,
  );

  @override
  Widget build(BuildContext context) {
    return Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                              itemName,
                                style: textStyle.copyWith(
                                  fontWeight: FontWeight.w500,
                                  color: textStyle.color.withOpacity(
                                    item==selectedPage
                                        ? 1.0
                                        : 0.75,
                                  ),
                                ),
                              ),
                              SizedBox(height: 4),
                          
                                AnimatedContainer(
                                  duration: Duration(milliseconds: 300),
                                  height: 2,
                                  width: 20,
                                  color: item==selectedPage
                                      ? Colors.white
                                      : Colors.transparent,
                                ),
                            ],
                          );
  }
}