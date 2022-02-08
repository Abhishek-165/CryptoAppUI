import 'package:crypto/common/colors.dart';
import 'package:crypto/models/crypto_coins.dart';
import 'package:crypto/widgets/coinsTabWidgets/coin_body_header.dart';
import 'package:crypto/widgets/coinsTabWidgets/coin_header.dart';
import 'package:crypto/widgets/coinsTabWidgets/coin_time_period.dart';
import 'package:crypto/widgets/coinsTabWidgets/coins_list.dart';
import 'package:crypto/widgets/homeTabWidgets/custom_appbar.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class CoinList extends StatefulWidget {
  const CoinList({Key? key}) : super(key: key);

  @override
  State<CoinList> createState() => _CoinListState();
}

class _CoinListState extends State<CoinList> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBarWidget(),
      body: Column(
        children: const [
          CoinTabHeader(),
          CoinTimePeriod(),
          CoinBodyHeader(),
          CoinsList()
        ],
      ),
    );
  }
}
