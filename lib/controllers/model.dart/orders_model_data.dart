import 'package:barafiri_admin/constants/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';

class Orders {
  final String orderNumber;
  final String orderText;
  final Color orderColor;
  final IconData orderIcon;

  Orders(this.orderNumber, this.orderText, this.orderColor, this.orderIcon);
}

List<Orders> orderData = [
  Orders('500k', 'Pending Orders', active, Icons.pending_actions),
  Orders('900k', 'Orders Received', Colors.purple, Icons.shopping_bag),
  Orders('500k', 'Shipped Orders', Colors.lightBlueAccent.shade400,
      Icons.local_shipping),
  Orders('400k', 'Orders Delivered', Colors.green, Icons.local_shipping),
];
