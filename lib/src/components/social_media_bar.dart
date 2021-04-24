import 'package:flutter/material.dart';
import 'package:personal_web/src/utils/social_icons.dart';
import 'package:personal_web/src/utils/url_helper.dart';

class SocialMediaBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 24, horizontal: 12),
      margin: const EdgeInsets.only(left: 32),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.teal.withOpacity(0.3), width: 1.4),
        borderRadius: BorderRadius.all(Radius.circular(35)),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          InkWell(
            hoverColor: Colors.transparent,
            splashColor: Colors.transparent,
            onTap: () {
              UrlHelper.launchUrl('https://github.com/ErfanRht');
            },
            child: Icon(
              SocialIcons.github,
              color: Colors.teal.withOpacity(0.75),
            ),
          ),
          SizedBox(height: 30),
          InkWell(
            hoverColor: Colors.transparent,
            splashColor: Colors.transparent,
            onTap: () {
              UrlHelper.launchUrl(
                'https://www.linkedin.com/in/ErfanRahmati/',
              );
            },
            child: Icon(
              SocialIcons.linkedin,
              color: Colors.teal.withOpacity(0.75),
            ),
          ),
          SizedBox(height: 30),
          InkWell(
            hoverColor: Colors.transparent,
            splashColor: Colors.transparent,
            onTap: () {
              UrlHelper.launchUrl(
                "mailto:ErfanRht1384.com@gmail.com?subject=Hello%20DKB",
              );
            },
            child: Icon(
              SocialIcons.envelope,
              color: Colors.teal.withOpacity(0.75),
            ),
          ),
          SizedBox(height: 30),
          InkWell(
            hoverColor: Colors.transparent,
            splashColor: Colors.transparent,
            onTap: () {
              UrlHelper.launchUrl('https://twitter.com/ErfanRht');
            },
            child: Icon(
              SocialIcons.twitter,
              color: Colors.teal.withOpacity(0.75),
            ),
          ),
          SizedBox(height: 30),
          InkWell(
            hoverColor: Colors.transparent,
            splashColor: Colors.transparent,
            onTap: () {
              UrlHelper.launchUrl('https://www.instagram.com/ErfanRahmatei/');
            },
            child: Icon(
              SocialIcons.instagram,
              color: Colors.teal.withOpacity(0.75),
            ),
          ),
          SizedBox(height: 30),
          InkWell(
            hoverColor: Colors.transparent,
            splashColor: Colors.transparent,
            onTap: () {
              UrlHelper.launchUrl(
                  'https://api.whatsapp.com/send?phone=0989397288246');
            },
            child: Icon(
              SocialIcons.whatsapp,
              color: Colors.teal.withOpacity(0.75),
            ),
          ),
        ],
      ),
    );
  }
}
