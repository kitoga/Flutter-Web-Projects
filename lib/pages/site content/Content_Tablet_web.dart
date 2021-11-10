import 'package:barafiri_admin/constants/styles.dart';
import 'package:barafiri_admin/helpers/responsiveness.dart';
import 'package:barafiri_admin/pages/right_screen_UI/dashboard.dart';
import 'package:barafiri_admin/widgets/horizontal_left_navbar.dart';
import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

class ContentTabletWeb extends StatelessWidget {
  const ContentTabletWeb({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(builder: (context, sizingInformation) {
      return Row(
        children: [
          if (Responsive.isDesktop(context))
            Expanded(
              flex: Responsive.isDesktop(context) ? 1.5.toInt() : 1,
              child: Container(
                color: leftBar,
                height: MediaQuery.of(context).size.height,
                child: HorizontalLeftNavbar(),
              ),
            ),
          Expanded(
            flex: 5,
            child: Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
              //color: Colors.green,
              child: Dashboard(),
            ),
          )
        ],
      );
    });
  }
}
