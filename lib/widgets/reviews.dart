import 'package:barafiri_admin/constants/styles.dart';
import 'package:barafiri_admin/controllers/model.dart/review_model.dart';
import 'package:flutter/material.dart';

class Reviews extends StatelessWidget {
  const Reviews({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final padding = EdgeInsets.fromLTRB(30, 0, 30, 10);
    return Padding(
      padding: padding,
      child: Container(
        height: 500,
        color: leftBar,
        child: Container(
          height: 460,
          width: double.infinity,
          child: Column(
            children: [
              Expanded(
                child: ReviewCards(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class ReviewCards extends StatelessWidget {
  const ReviewCards({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: recentReviews.length,
      itemBuilder: (BuildContext context, int index) {
        return Padding(
          padding: const EdgeInsets.only(top: 15.0, right: 20, left: 20),
          child: Container(
            height: 130,
            width: double.infinity,
            color: Colors.white,
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 10),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CircleAvatar(
                        maxRadius: 35,
                        backgroundImage: AssetImage(recentReviews[index].image),
                      ),
                      SizedBox(width: 20),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          extraNormal(recentReviews[index].name, 20, darkMain),
                          StarsRow()
                        ],
                      )
                    ],
                  ),
                ),
                SizedBox(height: 10),
                FittedBox(
                    child: normal(recentReviews[index].text, 14,
                        darkMain.withOpacity(0.8)))
              ],
            ),
          ),
        );
      },
    );
  }
}

class StarsRow extends StatelessWidget {
  const StarsRow({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(Icons.star, color: Colors.yellow),
        SizedBox(width: 5),
        Icon(Icons.star, color: Colors.yellow),
        SizedBox(width: 5),
        Icon(Icons.star, color: Colors.yellow),
        SizedBox(width: 5),
        Icon(Icons.star, color: Colors.yellow),
        SizedBox(width: 5),
        Icon(Icons.star, color: Colors.yellow),
      ],
    );
  }
}
