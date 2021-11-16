import 'package:barafiri_admin/constants/styles.dart';
import 'package:barafiri_admin/controllers/model.dart/review_model.dart';
import 'package:barafiri_admin/controllers/model.dart/top_category.dart';
import 'package:barafiri_admin/helpers/responsiveness.dart';
import 'package:flutter/material.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';

class TopCategory extends StatelessWidget {
  TopCategory({Key? key}) : super(key: key);

  final List<TopCategories> _post = [
    TopCategories(
        topCatName: 'Women Fashion', topCatImage: 'assets/images/river.jpg'),
    TopCategories(
        topCatName: 'Electronics',
        topCatImage: 'assets/images/electronic.jpeg'),
    TopCategories(
        topCatName: 'Stationeries',
        topCatImage: 'assets/images/stationery.png'),
    TopCategories(
        topCatName: 'Smart Phone', topCatImage: 'assets/images/phone.jpg'),
    TopCategories(
        topCatName: 'Men Fashion', topCatImage: 'assets/images/mens.jpg'),
  ];

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return ClipRRect(
      borderRadius: BorderRadius.circular(10),
      child: Container(
        height: 400,
        color: leftBar,
        child: Padding(
          padding: const EdgeInsets.fromLTRB(15, 20, 15, 10),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  extraNormal(
                    'Your Top Categories',
                    14,
                    darkMain.withOpacity(0.8),
                  ),
                  Icon(FeatherIcons.helpCircle, color: Colors.red),
                ],
              ),
              SizedBox(height: 10),
              ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Container(
                  height:
                      Responsive.isTablet(context) ? height / 2 : height / 2.4,
                  width: Responsive.isTablet(context) ? width : width,
                  color: Colors.white,
                  child: ListView.builder(
                    itemCount: _post.length,
                    itemBuilder: (BuildContext context, int index) {
                      return Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: ListTile(
                          leading: CircleAvatar(
                            maxRadius: 18,
                            backgroundImage:
                                AssetImage('${_post[index].topCatImage}'),
                          ),
                          title: normal(
                              '${_post[index].topCatName}',
                              Responsive.isMobile(context) ? 16 : 12,
                              darkMain.withOpacity(0.8)),
                          trailing: normal(
                              '#1500',
                              Responsive.isMobile(context) ? 16 : 12,
                              darkMain.withOpacity(0.8)),
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
