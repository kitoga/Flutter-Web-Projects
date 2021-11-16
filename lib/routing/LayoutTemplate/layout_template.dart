import 'package:barafiri_admin/helpers/responsiveness.dart';
import 'package:barafiri_admin/locator.dart';
import 'package:barafiri_admin/pages/right_screen_UI/dashboard.dart';
import 'package:barafiri_admin/pages/site%20content/Content_Tablet_web.dart';
import 'package:barafiri_admin/pages/site%20content/content_mobile.dart';
import 'package:barafiri_admin/pages/top_navigation/navigation_bar.dart';
import 'package:barafiri_admin/routing/route_names.dart';
import 'package:barafiri_admin/routing/router.dart';
import 'package:barafiri_admin/services/navigation_services.dart';
import 'package:barafiri_admin/site_layout.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LayoutTemplate extends StatelessWidget {
  const LayoutTemplate({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Responsive.isMobile(context) ? Drawer() : null,
      body: Column(
        children: [
          NavigationBar(),
          Expanded(
            child: SiteAdminLayout(),
          )
          //   child: Navigator(
          //             key: locator<NavigationServices>().navigatorKey,
          //             onGenerateRoute: generateRoute,
          //             initialRoute: DashBoard,
          //           ),
          // )),
        ],
      ),
    );
    ;
  }
}
