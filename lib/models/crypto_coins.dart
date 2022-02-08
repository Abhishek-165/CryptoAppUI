class CoinListResponse {
  List<Data>? data;

  CoinListResponse({required this.data});

  CoinListResponse.fromJson(Map<String, dynamic> json) {
    if (json['data'] != null) {
      data = <Data>[];
      json['data'].forEach((v) {
        data!.add(new Data.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.data != null) {
      data['data'] = this.data!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Data {
  String? title;
  String? subtitle;
  String? amount;
  String? percentage;
  String? sign;
  String? image;

  Data(
      {required this.title,
      required this.subtitle,
      required this.amount,
      required this.percentage,
      required this.sign,
      required this.image});

  Data.fromJson(Map<String, dynamic> json) {
    title = json['title'];
    subtitle = json['subtitle'];
    amount = json['amount'];
    percentage = json['percentage'];
    sign = json['sign'];
    image = json['image'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['title'] = this.title;
    data['subtitle'] = this.subtitle;
    data['amount'] = this.amount;
    data['percentage'] = this.percentage;
    data['sign'] = this.sign;
    data['image'] = this.image;
    return data;
  }
}
