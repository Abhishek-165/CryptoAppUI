import 'package:crypto/common/colors.dart';
import 'package:crypto/providers/coin_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ImageText extends StatelessWidget {
  final int index;
  const ImageText({this.index = 0});

  @override
  Widget build(BuildContext context) {
    var provRef = Provider.of<CoinProvider>(context, listen: false);
    return Column(
      children: [
        Container(
          margin:
              EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.07),
          alignment: Alignment.center,
          child: Hero(
              tag: provRef.image(index).toString(),
              child: Image.asset(
                "lib/assets/images/${provRef.image(index)}",
                width: MediaQuery.of(context).size.width * 0.3,
              )),
        ),
        Container(
          margin: const EdgeInsets.symmetric(vertical: 20),
          alignment: Alignment.center,
          child: Text(
            "\$ ${provRef.amount(index)}",
            style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          ),
        ),
        SizedBox(
            height: 30,
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 2.0),
              decoration: BoxDecoration(
                  borderRadius: const BorderRadius.all(Radius.circular(12.0)),
                  color: customPrimaryColor.withOpacity(0.3)),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  const Icon(
                    Icons.arrow_drop_up,
                    color: customPrimaryColor,
                    size: 24,
                  ),
                  Text(
                    provRef.percentage(index).toString(),
                    style: const TextStyle(
                        fontSize: 12,
                        color: customPrimaryColor,
                        fontWeight: FontWeight.w600),
                  ),
                  const SizedBox(
                    width: 4.0,
                  )
                ],
              ),
            )),
      ],
    );
  }
}
