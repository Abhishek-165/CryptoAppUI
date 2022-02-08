import 'package:crypto/common/colors.dart';
import 'package:crypto/providers/coin_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CoinsList extends StatefulWidget {
  const CoinsList({Key? key}) : super(key: key);

  @override
  _CoinsListState createState() => _CoinsListState();
}

class _CoinsListState extends State<CoinsList> {
  TextStyle fontStyle(var fontWeight) =>
      TextStyle(color: Colors.black, fontWeight: fontWeight);
  @override
  Widget build(BuildContext context) {
    var provRef = Provider.of<CoinProvider>(context, listen: true);
    return provRef.isLoading || provRef.cryptoCoins == null
        ? const CircularProgressIndicator()
        : Expanded(
            child: ListView.builder(
                shrinkWrap: true,
                itemCount: provRef.listLength,
                itemBuilder: (context, i) => Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 24.0),
                      child: ListTile(
                        contentPadding: EdgeInsets.zero,
                        leading: Image.asset(
                            "lib/assets/images/${provRef.image(i)}"),
                        title: Text(
                          provRef.title(i).toString(),
                          style: fontStyle(FontWeight.bold),
                        ),
                        subtitle: Text(
                          provRef.subtitle(i).toString(),
                          style: fontStyle(null),
                        ),
                        trailing: Column(
                          children: [
                            Text(
                              "\$ ${provRef.amount(i)}",
                              style: fontStyle(FontWeight.bold),
                            ),
                            Row(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                provRef.sign(i).toString() == "positive"
                                    ? const Icon(
                                        Icons.trending_up,
                                        size: 20,
                                        color: customPrimaryColor,
                                      )
                                    : const Icon(
                                        Icons.trending_down,
                                        color: Colors.red,
                                      ),
                                Text(
                                  provRef.percentage(i).toString(),
                                  style: TextStyle(
                                      color: provRef.sign(i) == "positive"
                                          ? customPrimaryColor
                                          : Colors.red),
                                )
                              ],
                            )
                          ],
                        ),
                      ),
                    )),
          );
  }
}
