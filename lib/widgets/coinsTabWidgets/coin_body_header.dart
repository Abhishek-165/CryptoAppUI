import 'package:crypto/common/colors.dart';
import 'package:flutter/material.dart';

class CoinBodyHeader extends StatelessWidget {
  const CoinBodyHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 20, horizontal: 24.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              Text(
                "Market is Uptrend",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.w900),
              ),
              SizedBox(
                height: 5.0,
              ),
              Text(
                "in the past 24hrs",
                style: TextStyle(
                  color: Colors.grey,
                  fontSize: 14,
                ),
              ),
            ],
          ),
          Container(
              height: 40,
              margin: const EdgeInsets.all(4.0),
              padding: const EdgeInsets.symmetric(horizontal: 4.0),
              decoration: const BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(12.0)),
                  color: kTabBackgroundColor),
              alignment: Alignment.center,
              child: Row(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Icon(
                    Icons.arrow_drop_up,
                    color: customPrimaryColor,
                    size: 36,
                  ),
                  Text(
                    "9.17%",
                    style: TextStyle(
                        color: customPrimaryColor, fontWeight: FontWeight.w600),
                  ),
                ],
              )),
        ],
      ),
    );
  }
}
