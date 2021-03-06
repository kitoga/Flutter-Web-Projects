import 'package:barafiri_admin/constants/styles.dart';
import 'package:barafiri_admin/helpers/responsiveness.dart';
import 'package:barafiri_admin/widgets/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';
import 'package:fl_chart/fl_chart.dart';

class ChartData extends StatelessWidget {
  const ChartData({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final padding = EdgeInsets.fromLTRB(30, 0, 30, 10);
    var width = MediaQuery.of(context).size.width;
    return Padding(
      padding: padding,
      child: Container(
        height: 500,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Container(
                height: 480,
                width: MediaQuery.of(context).size.width,
                color: leftBar,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Container(
                        height: 440,
                        width: Responsive.isMobile(context)
                            ? width / 1.2
                            : width / 1.4,
                        color: Colors.white,
                        child: Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(10.0),
                                child: Center(
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Icon(Icons.shopping_bag_outlined,
                                          size: 35, color: Colors.green),
                                      SizedBox(width: 5),
                                      normal('???10,500', 30,
                                          darkMain.withOpacity(0.8)),
                                      SizedBox(width: 15),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Icon(
                                            FeatherIcons.arrowUp,
                                            color: Colors.green,
                                            size: 14,
                                          ),
                                          normal('8.30', 12, Colors.green)
                                        ],
                                      ),
                                      Spacer(),
                                      Padding(
                                        padding:
                                            const EdgeInsets.only(right: 0),
                                        child: Container(
                                          height: 50,
                                          width: 130,
                                          decoration: BoxDecoration(
                                            border: Border.all(
                                                color: leftBar, width: 2),
                                          ),
                                          child: Padding(
                                            padding: const EdgeInsets.all(10.0),
                                            child: Row(
                                              children: [
                                                normal('May', 16, darkMain),
                                                Spacer(),
                                                Icon(Icons
                                                    .arrow_drop_down_outlined),
                                              ],
                                            ),
                                          ),
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                              Expanded(
                                child: Container(
                                  height: MediaQuery.of(context).size.height,
                                  width: MediaQuery.of(context).size.width,
                                  child: LineChartSample1(),
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
