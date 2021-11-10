import 'package:barafiri_admin/constants/styles.dart';
import 'package:barafiri_admin/controllers/model.dart/orders_model_data.dart';
import 'package:barafiri_admin/controllers/model.dart/products.dart';
import 'package:barafiri_admin/helpers/responsiveness.dart';
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
    final padding = EdgeInsets.fromLTRB(30, 0, 30, 0);
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

            ///
            ///Orders
            Orders(padding: padding),
            SizedBox(
              height: 20,
            ),
            Products(padding: padding),
            SizedBox(
              height: 30,
            ),
            Padding(
              padding: padding,
              child: contentNormalLight('Categories & Users', 20, notActive),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(30, 0, 30, 30),
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

class Orders extends StatelessWidget {
  const Orders({
    Key? key,
    required this.padding,
  }) : super(key: key);

  final EdgeInsets padding;

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: padding,
          child: contentNormalLight('Orders', 20, notActive),
        ),
        SizedBox(height: 10),
        Responsive(
          mobile: OrderCards(
            padding: padding,
            crossAxisCount: width < 650 ? 2 : 4,
            childAspectRatio: width < 650 ? 2.3 : 2.3,
          ),
          desktop: OrderCards(
            padding: padding,
            childAspectRatio: width < 1400 ? 2.1 : 2.3,
          ),
          tablet: OrderCards(
            padding: padding,
            childAspectRatio: width < 850 ? 4 : 2.2,
          ),
        )
      ],
    );
  }
}

class OrderCards extends StatelessWidget {
  final EdgeInsets padding;
  final int crossAxisCount;
  final double childAspectRatio;

  const OrderCards({
    Key? key,
    required this.padding,
    this.crossAxisCount = 4,
    this.childAspectRatio = 1,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Padding(
      padding: padding,
      child: GridView.builder(
        shrinkWrap: true,
        physics: NeverScrollableScrollPhysics(),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: crossAxisCount, //replaced
          crossAxisSpacing: 10, //replaced
          mainAxisSpacing: 10, //same padding replaced
          childAspectRatio: childAspectRatio,
        ),
        itemCount: orderData.length,
        itemBuilder: (ctx, index) {
          return Container(
            height: 100,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
              border:
                  Border.all(color: orderData[index].orderColor, width: 1.3),
            ),
            child: Padding(
              padding: Responsive.isDesktop(context)
                  ? const EdgeInsets.only(left: 5.0)
                  : const EdgeInsets.only(left: 10.0),
              child: Row(
                // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Icon(
                    orderData[index].orderIcon,
                    color: orderData[index].orderColor,
                    size: width < 850 ? 25 : 50,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Container(
                      height: height,
                      width: 1,
                      color: orderData[index].orderColor,
                    ),
                  ),
                  if (Responsive.isDesktop(context)) SizedBox(width: 25),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      extraNormal(
                        orderData[index].orderNumber,
                        width > 650 && width < 990 ? 15 : 25,
                        darkMain,
                      ),
                      normal(
                        orderData[index].orderText,
                        width > 650 && width < 990 ? 9 : 12,
                        darkMain,
                      )
                    ],
                  )
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}

class Products extends StatelessWidget {
  const Products({
    Key? key,
    required this.padding,
  }) : super(key: key);

  final EdgeInsets padding;

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: padding,
          child: contentNormalLight('Products', 20, notActive),
        ),
        SizedBox(height: 10),
        Responsive(
          mobile: ProductCards(
            padding: padding,
            crossAxisCount: width < 650 ? 2 : 4,
            childAspectRatio: width < 650 ? 2.3 : 2.3,
          ),
          desktop: ProductCards(
            padding: padding,
            childAspectRatio: width < 1400 ? 2.1 : 2.3,
          ),
          tablet: ProductCards(
            padding: padding,
            childAspectRatio: width < 850 ? 4 : 2.2,
          ),
        )
      ],
    );
  }
}

class ProductCards extends StatelessWidget {
  final EdgeInsets padding;
  final int crossAxisCount;
  final double childAspectRatio;

  const ProductCards({
    Key? key,
    required this.padding,
    this.crossAxisCount = 4,
    this.childAspectRatio = 1,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Padding(
      padding: padding,
      child: GridView.builder(
        shrinkWrap: true,
        physics: NeverScrollableScrollPhysics(),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: crossAxisCount, //replaced
          crossAxisSpacing: 10, //replaced
          mainAxisSpacing: 10, //same padding replaced
          childAspectRatio: childAspectRatio,
        ),
        itemCount: productsData.length,
        itemBuilder: (ctx, index) {
          return Container(
            height: 100,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
              border:
                  Border.all(color: orderData[index].orderColor, width: 1.3),
            ),
            child: Padding(
              padding: Responsive.isDesktop(context)
                  ? const EdgeInsets.only(left: 12.0)
                  : const EdgeInsets.only(left: 10.0),
              child: Row(
                // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Icon(
                    productsData[index].productIcon,
                    color: productsData[index].productColor,
                    size: width < 850 ? 25 : 50,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Container(
                      height: height,
                      width: 1,
                      color: productsData[index].productColor,
                    ),
                  ),
                  if (Responsive.isDesktop(context)) SizedBox(width: 25),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      extraNormal(
                        productsData[index].productNumber,
                        width > 650 && width < 990 ? 15 : 25,
                        darkMain,
                      ),
                      normal(
                        productsData[index].productText,
                        width > 650 && width < 990 ? 9 : 12,
                        darkMain,
                      )
                    ],
                  )
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
