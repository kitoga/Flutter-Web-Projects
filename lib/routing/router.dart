import 'dart:math';

import 'package:barafiri_admin/constants/styles.dart';
import 'package:barafiri_admin/pages/right_screen_UI/dashboard.dart';
import 'package:barafiri_admin/pages/right_screen_UI/product_categories.dart';
import 'package:barafiri_admin/routing/route_names.dart';
import 'package:flutter/material.dart';

Route<dynamic> generateRoute(RouteSettings settings) {
  switch (settings.name) {
    case DashBoard:
      return _getPageRoute(Dashboard(), settings.toString());
    case Productcategories:
      return _getPageRoute(productCategories(), settings.toString());
    default:
      throw (e);
  }
}

PageRoute _getPageRoute(Widget child, String routeName) {
  return _FadeRoute(child: child, routeName: routeName);
}

class _FadeRoute extends PageRouteBuilder {
  final Widget child;
  final String routeName;
  _FadeRoute({required this.child, required this.routeName})
      : super(
            pageBuilder: (
              BuildContext context,
              Animation<double> animation,
              Animation<double> secondaryAnimation,
            ) =>
                child,
            settings: RouteSettings(name: routeName),
            transitionsBuilder: (
              BuildContext context,
              Animation<double> animation,
              Animation<double> secondaryAnimation,
              Widget child,
            ) =>
                FadeTransition(
                  opacity: animation,
                  child: child,
                ));
}
