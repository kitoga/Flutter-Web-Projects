import 'package:barafiri_admin/constants/styles.dart';
import 'package:barafiri_admin/pages/right_screen_UI/dashboard.dart';
import 'package:barafiri_admin/pages/site%20content/horizontal_menu_items.dart';
import 'package:barafiri_admin/routing/route_names.dart';
import 'package:flutter/material.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';

class HorizontalLeftNavbar extends StatefulWidget {
  const HorizontalLeftNavbar({Key? key}) : super(key: key);

  @override
  _HorizontalLeftNavbarState createState() => _HorizontalLeftNavbarState();
}

class _HorizontalLeftNavbarState extends State<HorizontalLeftNavbar> {
  List<bool> selected = [true, false, false, false, false, false, false, false];

  void select(int n) {
    for (int i = 0; i < 8; i++) {
      if (i != n) {
        selected[i] = false;
      } else {
        selected[i] = true;
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 350.0,
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(37, 30, 0, 15),
              child: normal('APPLICATION', 16, notActive),
            ),
            HorizontalMainMenuItem(
              navigationPath: DashBoard,
              itemName: 'Dashboard',
              iconName: Icons.poll_rounded,
              touched: () {
                setState(() {
                  select(0);
                });
              },
              active: selected[0],
            ),
            HorizontalMainMenuItem(
              navigationPath: Productcategories,
              itemName: 'Product Categories',
              iconName: FeatherIcons.database,
              touched: () {
                setState(() {
                  select(1);
                });
              },
              active: selected[1],
            ),
            //
            // Padding(
            //   padding: EdgeInsets.fromLTRB(37, 30, 0, 15),
            //   child: normal('USERS', 16, notActive),
            // ),
            // Padding(
            //   padding: const EdgeInsets.only(left: 35.0),
            //   child: DropDownMenuItem(
            //     itemName: 'Service Providers',
            //     iconName: FeatherIcons.userCheck,
            //     dropDownName: FeatherIcons.chevronDown,
            //   ),
            // ),
            // Padding(
            //   padding: const EdgeInsets.only(left: 35.0),
            //   child: SubDropDownMenuItem(
            //     itemName: 'Freelances',
            //     touched: () {
            //       setState(() {
            //         select(5);
            //       });
            //     },
            //     active: selected[5],
            //     iconName: Icons.person,
            //   ),
            // ),
            // Padding(
            //   padding: const EdgeInsets.only(left: 35.0),
            //   child: SubDropDownMenuItem(
            //     itemName: 'SMEs',
            //     touched: () {
            //       setState(() {
            //         select(6);
            //       });
            //     },
            //     active: selected[6],
            //     iconName: Icons.person,
            //   ),
            // ),
            // HorizontalMainMenuItem(
            //   itemName: 'Customers',
            //   iconName: FeatherIcons.smile,
            //   touched: () {
            //     setState(() {
            //       select(7);
            //     });
            //   },
            //   active: selected[7],
            // ),

            // ///
            // ///Users Section
            // Padding(
            //   padding: EdgeInsets.fromLTRB(37, 30, 0, 15),
            //   child: normal('OTHERS', 16, notActive),
            // ),
            // Padding(
            //   padding: const EdgeInsets.only(left: 35.0),
            //   child: DropDownMenuItem(
            //     itemName: 'Marketing',
            //     iconName: FeatherIcons.monitor,
            //     dropDownName: FeatherIcons.chevronDown,
            //   ),
            // ),
            // Padding(
            //   padding: const EdgeInsets.only(left: 54.0),
            //   child: SubDropDownMenuItem(
            //     itemName: 'Google Smart Shopping',
            //     touched: () {
            //       setState(() {
            //         //select(5);
            //       });
            //     },
            //     active: selected[5],
            //     iconName: Icons.person,
            //   ),
            // ),
            // Padding(
            //   padding: const EdgeInsets.only(left: 54.0),
            //   child: SubDropDownMenuItem(
            //     itemName: 'Facebook Marketing',
            //     touched: () {
            //       setState(() {
            //         //select(6);
            //       });
            //     },
            //     active: selected[6],
            //     iconName: Icons.person,
            //   ),
            // ),
            // HorizontalMainMenuItem(
            //   itemName: 'Coupons',
            //   iconName: FeatherIcons.smile,
            //   touched: () {
            //     setState(() {
            //       //select(7);
            //     });
            //   },
            //   active: selected[7],
            // ),
          ],
        ),
      ),
    );
  }
}
