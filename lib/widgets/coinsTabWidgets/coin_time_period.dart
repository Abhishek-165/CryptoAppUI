import 'package:crypto/common/colors.dart';
import 'package:flutter/material.dart';

class CoinTimePeriod extends StatefulWidget {
  const CoinTimePeriod({Key? key}) : super(key: key);

  @override
  State<CoinTimePeriod> createState() => _CoinTimePeriodState();
}

class _CoinTimePeriodState extends State<CoinTimePeriod> {
  int selectedIndex = 1;

  List<String> headers = [
    "All",
    "24th",
    "Top 100",
    "Market Cap",
    "Top 300",
    "Market Capital"
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 24.0, top: 30),
      height: 40,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: headers.length,
          itemBuilder: (context, i) => InkWell(
                onTap: () => setState(() {
                  selectedIndex = i;
                }),
                child: Container(
                    margin: const EdgeInsets.all(4.0),
                    padding: const EdgeInsets.symmetric(
                        horizontal: 16.0, vertical: 4.0),
                    decoration: BoxDecoration(
                      borderRadius:
                          const BorderRadius.all(Radius.circular(12.0)),
                      color: i == selectedIndex
                          ? kTabBackgroundColor
                          : Colors.white,
                    ),
                    height: 10,
                    alignment: Alignment.center,
                    child: Text(
                      headers[i],
                      style: TextStyle(
                          color: i == selectedIndex
                              ? customPrimaryColor
                              : Colors.grey,
                          fontWeight: FontWeight.w600),
                    )),
              )),
    );
  }
}
