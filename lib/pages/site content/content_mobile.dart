import 'package:barafiri_admin/pages/site%20content/Content_Tablet_web.dart';
import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

class ContentMobile extends StatelessWidget {
  const ContentMobile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var _height = MediaQuery.of(context).size.height;
    var _width = MediaQuery.of(context).size.width;
    return ResponsiveBuilder(builder: (context, sizingInformation) {
      return sizingInformation.isMobile
          ? ContentTabletWeb()
          : ContentTabletWeb();
    });
  }
}
