import 'package:flutter/material.dart';
import 'package:shooting_range/common/routing/routes.dart';
import 'package:shooting_range/features/authentication/view/authentication_screen.dart';
import 'package:shooting_range/features/home/view/home_screen.dart';
import 'package:shooting_range/features/profile/view/profile_screen.dart';
import 'package:shooting_range/features/tournaments/view/tournaments_screen.dart';

Route<dynamic> generateRoute(RouteSettings settings) {
  switch (settings.name) {
    case homeScreenRoute:
      return _getPageRoute(const HomeScreen());
    case tournamentsScreenRoute:
      return _getPageRoute(const TournamentsScreen());
    case profileScreenRoute:
      return _getPageRoute(const ProfileScreen());
    case authenticationScreenRoute:
      return _getPageRoute(const AuthenticationScreen());
    default:
      return _getPageRoute(const HomeScreen());
  }
}

PageRoute _getPageRoute(Widget child) =>
    MaterialPageRoute(builder: (context) => child);
