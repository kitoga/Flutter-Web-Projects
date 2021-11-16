import 'package:barafiri_admin/constants/styles.dart';
import 'package:barafiri_admin/helpers/responsiveness.dart';
import 'package:flutter/material.dart';

class Freelancers extends StatelessWidget {
  const Freelancers({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return ClipRRect(
      borderRadius: BorderRadius.circular(10),
      child: Container(
        height: 400,
        color: Color(0xff906ed1),
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [
              extraNormal(
                'Total Freelancers for \nthe week',
                18,
                Colors.white,
              ),
              SizedBox(height: 10),
              Padding(
                padding: const EdgeInsets.only(right: 25.0, left: 25.0),
                child: Container(
                  height: height / 2.4,
                  width: width,
                  child: ListView.builder(
                    itemCount: 7,
                    itemBuilder: (BuildContext context, int index) {
                      return Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          children: [
                            ListTile(
                              leading: CircleAvatar(
                                maxRadius: 25,
                                backgroundImage:
                                    AssetImage('assets/images/admin.jpeg'),
                              ),
                              title: normal(
                                  'Joseph O. Kennedy',
                                  Responsive.isMobile(context) ? 16 : 12,
                                  Colors.white),
                            ),
                            SizedBox(height: 6),
                            ListTile(
                              leading: CircleAvatar(
                                maxRadius: 25,
                                backgroundImage:
                                    AssetImage('assets/images/admin.jpeg'),
                              ),
                              title: normal(
                                  'Ernest Odudu',
                                  Responsive.isMobile(context) ? 16 : 12,
                                  Colors.white),
                            ),
                            SizedBox(height: 6),
                            ListTile(
                              leading: CircleAvatar(
                                maxRadius: 25,
                                backgroundImage:
                                    AssetImage('assets/images/admin.jpeg'),
                              ),
                              title: normal(
                                  'Gift O.',
                                  Responsive.isMobile(context) ? 16 : 12,
                                  Colors.white),
                            ),
                            SizedBox(height: 6),
                            ListTile(
                              leading: CircleAvatar(
                                maxRadius: 25,
                                backgroundImage:
                                    AssetImage('assets/images/admin.jpeg'),
                              ),
                              title: normal(
                                  'Tosin Babytos',
                                  Responsive.isMobile(context) ? 16 : 12,
                                  Colors.white),
                            ),
                            SizedBox(height: 6),
                            ListTile(
                              leading: CircleAvatar(
                                maxRadius: 25,
                                backgroundImage:
                                    AssetImage('assets/images/admin.jpeg'),
                              ),
                              title: normal(
                                  'David Thompson',
                                  Responsive.isMobile(context) ? 16 : 12,
                                  Colors.white),
                            ),
                            SizedBox(height: 6),
                            ListTile(
                              leading: CircleAvatar(
                                maxRadius: 25,
                                backgroundImage:
                                    AssetImage('assets/images/admin.jpeg'),
                              ),
                              title: normal(
                                  'Olatan Aluk',
                                  Responsive.isMobile(context) ? 16 : 12,
                                  Colors.white),
                            ),
                          ],
                        ),
                      );
                    },
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
