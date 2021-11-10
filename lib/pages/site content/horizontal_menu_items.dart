import 'package:barafiri_admin/constants/styles.dart';
import 'package:barafiri_admin/helpers/responsiveness.dart';
import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

class HorizontalMainMenuItem extends StatefulWidget {
  const HorizontalMainMenuItem(
      {Key? key,
      required this.itemName,
      required this.iconName,
      required this.touched,
      required this.active})
      : super(key: key);
  final String itemName;
  final IconData iconName;
  final Function touched;
  final bool active;

  @override
  _HorizontalMainMenuItemState createState() => _HorizontalMainMenuItemState();
}

class _HorizontalMainMenuItemState extends State<HorizontalMainMenuItem> {
  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    return Material(
      color: Colors.transparent,
      child: InkWell(
        onTap: () {
          print(widget.iconName);
          widget.touched();
        },
        //splashColor: Colors.transparent,
        hoverColor: hoverColor.withOpacity(.4),
        child: Container(
          padding: EdgeInsets.symmetric(vertical: 3.0),
          child: Row(
            children: [
              AnimatedContainer(
                duration: Duration(milliseconds: 475),
                height: 30.0,
                width: 5.0,
                decoration: BoxDecoration(
                  color: widget.active ? active : Colors.transparent,
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(10.0),
                    bottomRight: Radius.circular(10.0),
                  ),
                ),
              ),
              Container(
                height: 30,
                width: Responsive.isDesktop(context) ? width / 6.2 : width / 4,
                color: widget.active
                    ? hoverColor.withOpacity(.4)
                    : Colors.transparent,
                child: Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(left: 15),
                      child: Icon(
                        widget.iconName,
                        color: widget.active ? active : notActive,
                        size: 22,
                      ),
                    ),
                    SizedBox(width: 10),
                    normal(
                      widget.itemName,
                      13,
                      widget.active ? active : notActive,
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

// class DropDownMenuItem extends StatefulWidget {
//   DropDownMenuItem(
//       {Key? key,
//       required this.itemName,
//       required this.iconName,
//       required this.dropDownName})
//       : super(key: key);
//   final String itemName;
//   final IconData iconName;
//   final IconData dropDownName;

//   @override
//   _DropDownMenuItemState createState() => _DropDownMenuItemState();
// }

// class _DropDownMenuItemState extends State<DropDownMenuItem> {
//   @override
//   Widget build(BuildContext context) {
//     return ResponsiveBuilder(builder: (context, sizingInformation) {
//       return Row(
//         children: [
//           Icon(
//             widget.iconName,
//             color: notActive,
//             size: sizingInformation.isTablet ? 18 : 22,
//           ),
//           SizedBox(width: 10),
//           normal(
//             widget.itemName,
//             sizingInformation.isTablet ? 14 : 16,
//             notActive,
//           ),
//           SizedBox(width: 20),
//           Icon(
//             widget.dropDownName,
//             color: notActive,
//             size: sizingInformation.isTablet ? 18 : 22,
//           ),
//         ],
//       );
//     });
//   }
// }

// class SubDropDownMenuItem extends StatefulWidget {
//   SubDropDownMenuItem({
//     Key? key,
//     required this.itemName,
//     required this.touched,
//     required this.active,
//     required this.iconName,
//   }) : super(key: key);
//   final String itemName;
//   final Function touched;
//   final bool active;
//   final IconData iconName;

//   @override
//   _SubDropDownMenuItemState createState() => _SubDropDownMenuItemState();
// }

// class _SubDropDownMenuItemState extends State<SubDropDownMenuItem> {
//   @override
//   Widget build(BuildContext context) {
//     return ResponsiveBuilder(builder: (context, sizingInformation) {
//       return Material(
//         color: Colors.transparent,
//         child: InkWell(
//           onTap: () {
//             print(widget.itemName);
//             widget.touched();
//           },
//           splashColor: Colors.transparent,
//           hoverColor: hoverColor.withOpacity(.4),
//           child: Container(
//             padding: EdgeInsets.symmetric(vertical: 3.0),
//             child: Row(
//               children: [
//                 AnimatedContainer(
//                   duration: Duration(milliseconds: 475),
//                   height: 29.0,
//                   width: 5.0,
//                   decoration: BoxDecoration(
//                     color: widget.active ? active : Colors.transparent,
//                     borderRadius: BorderRadius.only(
//                       topRight: Radius.circular(10.0),
//                       bottomRight: Radius.circular(10.0),
//                     ),
//                   ),
//                 ),
//                 Container(
//                   height: 29,
//                   width: 230.0,
//                   color: widget.active
//                       ? hoverColor.withOpacity(.4)
//                       : Colors.transparent,
//                   child: Row(
//                     children: [
//                       Icon(
//                         widget.iconName,
//                         color: notActive,
//                         size: sizingInformation.isTablet ? 18 : 22,
//                       ),
//                       SizedBox(width: 10),
//                       normal(
//                         widget.itemName,
//                         sizingInformation.isTablet ? 14 : 16,
//                         notActive,
//                       ),
//                     ],
//                   ),
//                 ),
//               ],
//             ),
//           ),
//         ),
//       );
//     });
//   }
// }
