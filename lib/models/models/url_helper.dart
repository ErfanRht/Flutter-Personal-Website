// ignore: avoid_web_libraries_in_flutter
import 'dart:js' as js;
// ignore: avoid_web_libraries_in_flutter
import 'dart:html' as html;

import 'package:flutter/services.dart';
import 'package:url_launcher/url_launcher.dart';

class UrlHelper {
  static Future<void> launchUrl(String url) async {
    if (await canLaunch(url)) {
      await launch(url, enableJavaScript: true);
    }
  }

  static Future<void> downloadResume() async {
    final readValue = await rootBundle.load('assets/DKB_CV.pdf');

    // Call the "saveAs" method from the FileSaver.js libray
    js.context.callMethod("saveAs", [
      html.Blob([readValue]),
      "DKB Resume.pdf",
    ]);
  }
}
