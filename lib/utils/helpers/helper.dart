import 'dart:io';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:intl/intl.dart';
import 'package:shooting_range/utils/consts/sizes.dart';
import 'package:url_launcher/url_launcher_string.dart';

class AppHelper {
  AppHelper._();

  static void hideKeyboard(BuildContext context) =>
      FocusScope.of(context).requestFocus(FocusNode());

  static Future<void> setStatusBarColor(Color color) async =>
      SystemChrome.setSystemUIOverlayStyle(
          SystemUiOverlayStyle(statusBarColor: color));

  static bool isLandscapeOrientation(BuildContext context) =>
      View.of(context).viewInsets.bottom == 0;

  static bool isPortraitOrientation(BuildContext context) =>
      View.of(context).viewInsets.bottom != 0;

  static void setFullScreen(bool enable) => SystemChrome.setEnabledSystemUIMode(
      enable ? SystemUiMode.immersiveSticky : SystemUiMode.edgeToEdge);

  static double getScreenHeight(BuildContext context) =>
      MediaQuery.of(context).size.height;

  static double getScreenWidth(BuildContext context) =>
      MediaQuery.of(context).size.width;

  static double getPixelRatio(BuildContext context) =>
      MediaQuery.of(context).devicePixelRatio;

  static bool isSmallScreen(BuildContext context) =>
      MediaQuery.of(context).size.width < AppSizes.mediumScreenSize;

  static bool isMediumScreen(BuildContext context) =>
      MediaQuery.of(context).size.width >= AppSizes.mediumScreenSize &&
      MediaQuery.of(context).size.width < AppSizes.largeScreenSize;

  static bool isLargeScreen(BuildContext context) =>
      MediaQuery.of(context).size.width >= AppSizes.largeScreenSize;

  static bool isCustomScreen(BuildContext context, int minSize, int maxSize) =>
      MediaQuery.of(context).size.width >= minSize &&
      MediaQuery.of(context).size.width < maxSize;

  static double getStatusBarHeight(BuildContext context) =>
      MediaQuery.of(context).padding.top;

  static double getBottomNavigationBarHeight() => kBottomNavigationBarHeight;

  static double getAppBarHeight() => kToolbarHeight;

  static double getKeyboardHeight(BuildContext context) =>
      MediaQuery.of(context).viewInsets.bottom;

  static bool isKeyboardVisible(BuildContext context) =>
      MediaQuery.of(context).viewInsets.bottom > 0;

  static Future<bool> isPhysicalDevice() async =>
      defaultTargetPlatform == TargetPlatform.android ||
      defaultTargetPlatform == TargetPlatform.iOS;

  static void vibrate(Duration duration) {
    HapticFeedback.vibrate();
    Future.delayed(duration, () => HapticFeedback.vibrate);
  }

  static Future<void> setPreferredOrientations(
      List<DeviceOrientation> orientations) async {
    await SystemChrome.setPreferredOrientations(orientations);
  }

  static void hideStatusBar() =>
      SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual, overlays: []);

  static void showStatusBar() =>
      SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual,
          overlays: SystemUiOverlay.values);

  static Future<bool> hasInternetConnection() async {
    try {
      final result = await InternetAddress.lookup("google.com");
      return result.isNotEmpty && result[0].rawAddress.isNotEmpty;
    } on SocketException catch (_) {
      return false;
    }
  }

  static bool isIOS() => Platform.isIOS;

  static bool isAndroid() => Platform.isAndroid;

  static void launchUrl(String url) async {
    if (await canLaunchUrlString(url)) {
      await launchUrlString(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  static Color? getColor(String color) {
    switch (color) {
      case 'Green' || 'green' || 'GREEN':
        return Colors.green;
      case 'Red' || 'red' || 'RED':
        return Colors.red;
      case 'Blue' || 'blue' || 'BLUE':
        return Colors.blue;
      case 'Pink' || 'pink' || 'PINK':
        return Colors.pink;
      case 'Grey' || 'grey' || 'GREY':
        return Colors.grey;
      case 'Purple' || 'purple' || 'PURPLE':
        return Colors.purple;
      case 'Black' || 'black' || 'BLACK':
        return Colors.black;
      case 'White' || 'white' || 'WHITE':
        return Colors.white;
      case 'Yellow' || 'yellow' || 'YELLOW':
        return Colors.yellow;
      case 'Orange' || 'orange' || 'ORANGE':
        return Colors.orange;
      case 'Brown' || 'brown' || 'BROWN':
        return Colors.brown;
      case 'Indigo' || 'indigo' || 'INDIGO':
        return Colors.indigo;
      default:
        return null;
    }
  }

  static void showSnackBar(BuildContext context, String message) =>
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text(message),
        ),
      );

  static void showAlert(BuildContext context, String title, String message) =>
      showDialog(
        context: context,
        builder: (BuildContext context) =>
            AlertDialog(title: Text(title), content: Text(message), actions: [
          TextButton(
            onPressed: () => Navigator.of(context).pop(),
            child: const Text("OK"),
          ),
        ]),
      );

  static void navigateToScreen(BuildContext context, Widget screen) =>
      Navigator.push(context, MaterialPageRoute(builder: (_) => screen));

  static String truncateText(String text, int maxLength) {
    if (text.length <= maxLength) {
      return text;
    } else {
      return '${text.substring(0, maxLength)}...';
    }
  }

  static bool isDarkMode(BuildContext context) =>
      Theme.of(context).brightness == Brightness.dark;

  static Size screenSize(BuildContext context) => MediaQuery.of(context).size;

  static String getFormattedDate(DateTime date,
          {String format = 'dd MMM yyyy'}) =>
      DateFormat(format).format(date);

  static List<T> removeDuplicates<T>(List<T> list) => list.toSet().toList();

  static List<Widget> wrapWidgets(List<Widget> widgets, int rowSize) {
    final wrappedList = <Widget>[];
    for (int i = 0; i < widgets.length; i += rowSize) {
      final rowChildren = widgets.sublist(
          i, i + rowSize > widgets.length ? widgets.length : i + rowSize);
      wrappedList.add(Row(children: rowChildren));
    }
    return wrappedList;
  }
}
