import 'package:flutter/material.dart';

class TimePeriodRow extends StatelessWidget {
  const TimePeriodRow({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      margin: EdgeInsets.symmetric(horizontal: 20.0, vertical: 10),
      child: Row(
        children: const [
          Expanded(
            flex: 1,
            child: Text(
              "Open",
              textAlign: TextAlign.center,
            ),
          ),
          Expanded(
            flex: 1,
            child: Text("155.74",
                textAlign: TextAlign.center,
                style: TextStyle(fontWeight: FontWeight.bold)),
          ),
          Expanded(
            flex: 1,
            child: Text(
              "Vol",
              textAlign: TextAlign.center,
            ),
          ),
          Expanded(
            flex: 1,
            child: Text(
              "52.87m",
              textAlign: TextAlign.center,
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
          ),
        ],
      ),
    );
  }
}
