import 'package:flutter/material.dart';

class ContentMobile extends StatelessWidget {
  const ContentMobile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var _height = MediaQuery.of(context).size.height;
    var _width = MediaQuery.of(context).size.width;
    return Container(
      height: _height,
      width: _width,
      color: Colors.green,
    );
  }
}
