import 'package:crypto/widgets/homeTabWidgets/icon_label.dart';
import 'package:flutter/material.dart';

class HomeHeaderOverlayCard extends StatelessWidget {
  const HomeHeaderOverlayCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12.0),
      ),
      margin: EdgeInsets.only(
          top: 120, left: MediaQuery.of(context).size.width * 0.05),
      child: SizedBox(
        height: 80,
        width: MediaQuery.of(context).size.width * 0.9,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  IconLabel(Icons.attach_money_outlined, "Withdraw"),
                  IconLabel(Icons.money_off, "Deposit"),
                  IconLabel(Icons.history, "History")
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
