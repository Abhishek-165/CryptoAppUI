// ignore_for_file: use_key_in_widget_constructors

import 'package:crypto/UI/portfolio_chart.dart';
import 'package:crypto/widgets/portfolioWidgets/bottom_sheet.dart';
import 'package:crypto/widgets/portfolioWidgets/image_text.dart';
import 'package:crypto/widgets/portfolioWidgets/portfolio_header.dart';
import 'package:crypto/widgets/portfolioWidgets/time_period.dart';
import 'package:crypto/widgets/portfolioWidgets/time_period_listView.dart';
import 'package:flutter/material.dart';

class MyPortolio extends StatefulWidget {
  final int index;
  const MyPortolio(this.index);

  @override
  _MyPortolioState createState() => _MyPortolioState();
}

class _MyPortolioState extends State<MyPortolio> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomSheet: customBottomSheet(context),
      backgroundColor: Colors.grey[200],
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const PortfolioHeader(),
              ImageText(index: widget.index),
              const PortfolioChart(),
              const TimePeriod(),
              const TimePeriodListView(),
              const SizedBox(
                height: 60,
              )
            ],
          ),
        ),
      ),
    );
  }
}
