import 'package:crypto/widgets/portfolioWidgets/time_period_row.dart';
import 'package:flutter/material.dart';

class TimePeriodListView extends StatelessWidget {
  const TimePeriodListView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        itemCount: 4,
        itemBuilder: (context, i) => const TimePeriodRow());
  }
}
