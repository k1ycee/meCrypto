class Exchange {
  String currency;
  String rate;
  String timestamp;

  Exchange({this.currency, this.rate, this.timestamp});

  Exchange.fromJson(Map<String, dynamic> json) {
    currency = json['currency'];
    rate = json['rate'];
    timestamp = json['timestamp'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['currency'] = this.currency;
    data['rate'] = this.rate;
    data['timestamp'] = this.timestamp;
    return data;
  }
}