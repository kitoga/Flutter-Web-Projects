import 'package:barafiri_admin/constants/styles.dart';
import 'package:flutter/material.dart';
import 'package:percent_indicator/percent_indicator.dart';

class SMEs extends StatelessWidget {
  const SMEs({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(10),
      child: Container(
        height: 400,
        color: leftBar,
        child: Padding(
          padding: EdgeInsets.only(top: 30),
          child: Column(
            // crossAxisAlignment: CrossAxisAlignment.center,
            // mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SmesData(
                  title: 'Total SMEs',
                  smeCount: 0.7,
                  smeNumber: '70k',
                  color: Colors.purple),
              SizedBox(height: 30),
              SmesData(
                  title: 'Total Freelancers',
                  smeCount: 0.7,
                  smeNumber: '70k',
                  color: Colors.yellow),
              SizedBox(height: 30),
              SmesData(
                  title: 'Total Service Agents',
                  smeCount: 0.7,
                  smeNumber: '70k',
                  color: Colors.green),
            ],
          ),
        ),
      ),
    );
  }
}

class SmesData extends StatelessWidget {
  const SmesData(
      {Key? key,
      required this.title,
      required this.smeCount,
      required this.smeNumber,
      required this.color})
      : super(key: key);
  final String title;
  final String smeNumber;
  final double smeCount;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        extraNormal(title, 20, darkMain.withOpacity(0.8)),
        extraNormal(smeNumber, 20, darkMain.withOpacity(0.8)),
        Padding(
          padding: const EdgeInsets.only(left: 50.0, right: 50.0, top: 25),
          child: LinearPercentIndicator(
            width: 250.0,
            lineHeight: 8.0,
            percent: smeCount,
            progressColor: color,
          ),
        )
      ],
    );
  }
}
