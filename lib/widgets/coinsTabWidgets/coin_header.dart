import 'package:crypto/common/colors.dart';
import 'package:flutter/material.dart';

class CoinTabHeader extends StatelessWidget {
  const CoinTabHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 24.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Text(
            "Coin List",
            style: TextStyle(fontSize: 28, fontWeight: FontWeight.w900),
          ),
          Container(
              padding: const EdgeInsets.all(4.0),
              decoration: BoxDecoration(
                  shape: BoxShape.circle, color: Colors.grey[350]),
              child: const Icon(
                Icons.search,
                color: customPrimaryColor,
              ))
        ],
      ),
    );
  }
}
