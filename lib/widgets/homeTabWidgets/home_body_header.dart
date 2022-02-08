import 'package:crypto/common/colors.dart';
import 'package:flutter/material.dart';

class HomeBodyHeader extends StatelessWidget {
  const HomeBodyHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
          horizontal: MediaQuery.of(context).size.width * 0.07, vertical: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: const [
          Text(
            "My Portfolio",
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.w700),
          ),
          Text(
            "sell all",
            style: TextStyle(
                color: customPrimaryColor,
                fontSize: 16,
                fontWeight: FontWeight.w600),
          )
        ],
      ),
    );
  }
}
