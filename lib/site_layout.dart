import 'package:barafiri_admin/helpers/responsiveness.dart';
import 'package:barafiri_admin/pages/site%20content/Content_Tablet_web.dart';
import 'package:barafiri_admin/pages/site%20content/content_mobile.dart';
import 'package:barafiri_admin/pages/top_navigation/navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

class SiteAdminLayout extends StatelessWidget {
  const SiteAdminLayout({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          NavigationBar(),
          Expanded(
              child: Responsive(
            mobile: ContentMobile(),
            desktop: ContentTabletWeb(),
          ))
        ],
      ),
    );
  }
}
