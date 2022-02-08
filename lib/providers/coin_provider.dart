import 'dart:convert';
import 'package:crypto/common/data.dart';
import 'package:crypto/models/crypto_coins.dart';
import 'package:flutter/cupertino.dart';

class CoinProvider with ChangeNotifier {
  bool isLoading = false;

  get rootBundle => null;

  setLoading(loadingData) {
    isLoading = loadingData;
    notifyListeners();
  }

  CoinListResponse? cryptoCoins;

  CoinListResponse get coinListRes {
    return cryptoCoins!;
  }

  int get listLength => cryptoCoins!.data!.length;

  String? image(int i) {
    return coinListRes.data![i].image;
  }

  String? percentage(int i) {
    return coinListRes.data![i].percentage;
  }

  String? title(int i) {
    return cryptoCoins!.data![i].title;
  }

  String? amount(int i) {
    return cryptoCoins!.data![i].amount;
  }

  String? subtitle(int i) {
    return cryptoCoins!.data![i].subtitle;
  }

  String? sign(int i) {
    return cryptoCoins!.data![i].sign;
  }

  Future<bool> getResponse() async {
    setLoading(true);
    cryptoCoins = CoinListResponse.fromJson(jsonData());
    setLoading(false);
    return true;
  }
}
