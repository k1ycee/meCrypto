class Markets {
  String exchange;
  String market;
  String base;
  String quote;

  Markets({this.exchange, this.market, this.base, this.quote});

  Markets.fromJson(Map<String, dynamic> json) {
    exchange = json['exchange'];
    market = json['market'];
    base = json['base'];
    quote = json['quote'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['exchange'] = this.exchange;
    data['market'] = this.market;
    data['base'] = this.base;
    data['quote'] = this.quote;
    return data;
  }
}