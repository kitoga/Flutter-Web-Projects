import 'package:barafiri_admin/constants/styles.dart';
import 'package:barafiri_admin/controllers/model.dart/orders_model_data.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class Dashboard extends StatelessWidget {
  const Dashboard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
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
                  normal('Hi Perry, ', 22, notActive),
                  normal('Good Morning', 22, active),
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
                  OrderCards('900k', 'Orders Received', Colors.purple,
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
                  OrderCards(
                      '500k', 'Active Products', active, Icons.pending_actions),
                  SizedBox(width: 20),
                  OrderCards(
                      '100k', 'Brands', Colors.purple, Icons.shopping_bag),
                  SizedBox(width: 20),
                  OrderCards('45', 'Product \nCategories', Colors.blue.shade300,
                      Icons.local_shipping),
                  SizedBox(width: 20),
                  OrderCards('400k', 'Sold Products', Colors.green,
                      Icons.local_shipping),
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
      width: width / 7,
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
          Icon(
            orderIcon,
            size: 50,
            color: active,
          ),
          SizedBox(width: 10),
          Container(
            height: height / 10,
            width: 1,
            color: notActive,
          ),
          SizedBox(width: 10),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              extraNormal(orderNumber, 26, notActive),
              normal(orderText, 16, notActive),
            ],
          )
        ],
      ),
    );
  }
}

class ProductCards extends StatelessWidget {
  const ProductCards(
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
      width: width / 7,
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
          Icon(
            orderIcon,
            size: 50,
            color: active,
          ),
          SizedBox(width: 10),
          Container(
            height: height / 10,
            width: 1,
            color: notActive,
          ),
          SizedBox(width: 10),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              extraNormal(orderNumber, 26, notActive),
              normal(orderText, 16, notActive),
            ],
          )
        ],
      ),
    );
  }
}
