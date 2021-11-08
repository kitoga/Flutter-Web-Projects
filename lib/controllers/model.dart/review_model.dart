import 'dart:collection';

import 'package:flutter/material.dart';

class Reviews {
  final String image;
  final String name;
  final String text;

  Reviews(this.image, this.name, this.text);
}

final List<Reviews> recentReviews = [
  Reviews('assets/images/admin.jpeg', 'David Becks',
      'I am very satisfy with this product'),
  Reviews('assets/images/electronic.jpeg', 'Gift O.',
      'I love this product, its easy and pretty too'),
  Reviews('assets/images/river.jpg', 'Tosin',
      'I am very satisfy with this product'),
  Reviews('assets/images/mens.jpg', 'David Thompson',
      'I am very satisfy with this product'),
  Reviews('assets/images/mens.jpg', 'Munchee',
      'I am very satisfy with this product'),
];
