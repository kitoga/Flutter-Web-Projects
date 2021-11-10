import 'package:barafiri_admin/constants/styles.dart';
import 'package:barafiri_admin/helpers/responsiveness.dart';
import 'package:flutter/material.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';

class ProductCards {
  final String productNumber;
  final String productText;
  final Color productColor;
  final IconData productIcon;

  ProductCards(this.productNumber, this.productText, this.productColor,
      this.productIcon);
}

final List<ProductCards> productsData = [
  ProductCards('500k', 'Active Products', active, FeatherIcons.archive),
  ProductCards('100k', 'Brands', Color(0xff906ed1), FeatherIcons.award),
  ProductCards('45', 'Product \nCategories', Colors.blue.shade300,
      FeatherIcons.database),
  ProductCards('400k', 'Sold Products', Colors.green, Icons.receipt),
];
