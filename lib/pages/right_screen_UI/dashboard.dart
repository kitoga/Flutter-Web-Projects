import 'package:barafiri_admin/constants/styles.dart';
import 'package:barafiri_admin/controllers/model.dart/orders_model_data.dart';
import 'package:barafiri_admin/widgets/chart_data.dart';
import 'package:barafiri_admin/widgets/freelance.dart';
import 'package:barafiri_admin/widgets/reviews.dart';
import 'package:barafiri_admin/widgets/sme.dart';
import 'package:barafiri_admin/widgets/top_category.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';

class Dashboard extends StatelessWidget {
  const Dashboard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // final height = MediaQuery.of(context).size.height;
    // final width = MediaQuery.of(context).size.width;
    final padding = EdgeInsets.fromLTRB(35, 0, 35, 0);
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.only(top: 55.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: padding,
              child: Row(
                children: [
                  normal('Hi Perry,', 23, notActive),
                  normal(' Good Morning', 23, active),
                ],
              ),
            ),
            SizedBox(height: 1.5),
            Padding(
              padding: padding,
              child: contentNormalLight(
                  'Here is what happening on Barafiri', 16, notActive),
            ),
            SizedBox(height: 30),
            Padding(
              padding: padding,
              child: contentNormalLight('Orders', 20, notActive),
            ),
            SizedBox(height: 10),
            Padding(
              padding: padding,
              child: Row(
                children: [
                  OrderCards(
                      '500k', 'Pending Orders', active, Icons.pending_actions),
                  SizedBox(width: 20),
                  OrderCards('900k', 'Orders Received', Color(0xff906ed1),
                      Icons.shopping_bag),
                  SizedBox(width: 20),
                  OrderCards('500k', 'Shipped Orders', Colors.blue.shade300,
                      Icons.local_shipping),
                  SizedBox(width: 20),
                  OrderCards('400k', 'Shipped Orders', Colors.green,
                      Icons.local_shipping),
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: padding,
              child: contentNormalLight('Products', 20, notActive),
            ),
            SizedBox(height: 10),
            Padding(
              padding: padding,
              child: Row(
                children: [
                  ProductCards(
                      '500k', 'Active Products', active, FeatherIcons.archive),
                  SizedBox(width: 20),
                  ProductCards(
                      '100k', 'Brands', Color(0xff906ed1), FeatherIcons.award),
                  SizedBox(width: 20),
                  ProductCards('45', 'Product \nCategories',
                      Colors.blue.shade300, FeatherIcons.database),
                  SizedBox(width: 20),
                  ProductCards(
                      '400k', 'Sold Products', Colors.green, Icons.receipt),
                ],
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Padding(
              padding: padding,
              child: contentNormalLight('Categories & Users', 20, notActive),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(30, 0, 100, 30),
              child: Row(
                children: [
                  Expanded(child: SMEs()),
                  SizedBox(width: 15),
                  Expanded(child: Freelancers()),
                  SizedBox(width: 15),
                  Expanded(child: TopCategory()),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(30, 0, 100, 30),
              child: Row(
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: EdgeInsets.only(left: 35),
                          child:
                              contentNormalLight('Sales Chart', 20, notActive),
                        ),
                        SizedBox(height: 15),
                        ChartData()
                      ],
                    ),
                  ),
                  SizedBox(width: 15),
                  Expanded(
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Padding(
                              padding: EdgeInsets.only(left: 35),
                              child: contentNormalLight(
                                  'Recent Reviews', 20, notActive),
                            ),
                            Padding(
                              padding: EdgeInsets.only(right: 35),
                              child: contentNormalLight('View All', 14, active),
                            ),
                          ],
                        ),
                        SizedBox(height: 15),
                        Reviews(),
                      ],
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

class OrderCards extends StatelessWidget {
  const OrderCards(
    this.orderNumber,
    this.orderText,
    this.orderColor,
    this.orderIcon,
  );
  final String orderNumber;
  final String orderText;
  final Color orderColor;
  final IconData orderIcon;

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Container(
      height: height / 7,
      width: width / 6,
      decoration: BoxDecoration(
        color: white,
        borderRadius: BorderRadius.circular(10),
        border: Border.all(
          color: orderColor,
          width: .8,
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            child: Icon(
              orderIcon,
              size: 50,
              color: orderColor,
            ),
          ),
          SizedBox(width: 10),
          Container(
            height: height / 10,
            width: 1,
            color: notActive,
          ),
          SizedBox(width: 10),
          Expanded(
            flex: 2,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                extraNormal(orderNumber, 26, darkMain.withOpacity(0.7)),
                normal(orderText, 16, darkMain.withOpacity(0.7)),
              ],
            ),
          )
        ],
      ),
    );
  }
}

class ProductCards extends StatelessWidget {
  const ProductCards(
    this.productNumber,
    this.productText,
    this.productColor,
    this.productIcon,
  );
  final String productNumber;
  final String productText;
  final Color productColor;
  final IconData productIcon;

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Container(
      height: height / 7,
      width: width / 6,
      decoration: BoxDecoration(
        color: white,
        borderRadius: BorderRadius.circular(10),
        border: Border.all(
          color: productColor,
          width: .8,
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            child: Icon(
              productIcon,
              size: 50,
              color: productColor,
            ),
          ),
          SizedBox(width: 10),
          Container(
            height: height / 10,
            width: 1,
            color: notActive,
          ),
          SizedBox(width: 10),
          Expanded(
            flex: 2,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                extraNormal(productNumber, 26, darkMain.withOpacity(0.7)),
                normal(productText, 16, darkMain.withOpacity(0.7)),
              ],
            ),
          )
        ],
      ),
    );
  }
}
