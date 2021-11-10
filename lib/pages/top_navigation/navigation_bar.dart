import 'package:barafiri_admin/pages/navigation%20bar/navbar_mobile.dart';
import 'package:barafiri_admin/pages/navigation%20bar/navbar_tablet_desktop.dart';
import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

class NavigationBar extends StatelessWidget {
  const NavigationBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
      desktop: NavbarTabletDesktop(),
      mobile: NavbarMobile(),
    );
  }
}
