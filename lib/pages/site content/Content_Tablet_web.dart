import 'package:barafiri_admin/constants/styles.dart';
import 'package:barafiri_admin/pages/right_screen_UI/dashboard.dart';
import 'package:barafiri_admin/widgets/left_navbar.dart';
import 'package:flutter/material.dart';

class ContentTabletWeb extends StatelessWidget {
  const ContentTabletWeb({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Container(
            color: leftBar,
            height: MediaQuery.of(context).size.height,
            child: LeftNavbar(),
          ),
        ),
        Expanded(
          flex: 4,
          child: Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            // color: Colors.green,
            child: Dashboard(),
          ),
        )
      ],
    );
  }
}
