class Exchanges {
  String exchange;
  double last;
  double high;
  int low;
  double vol;
  double vwap;
  double money;
  int trades;

  Exchanges({
    this.exchange,
    this.last,
    this.high,
    this.low,
    this.vol,
    this.vwap,
    this.money,
    this.trades
  });

  Exchanges.fromJson(Map<String, dynamic> json) {
    exchange = json['exchanges'];
    last = json['last'];
    high = json['high'];
    low = json['low'];
    vol = json['vol'];
    vwap = json['vwap'];
    money = json['money'];
    trades = json['trades'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();

    data['last'] = this.last;
    data['high'] = this.high;
    data['low'] = this.low;
    data['vol'] = this.vol;
    data['vwap'] = this.vwap;
    data['money'] = this.money;
    data['trades'] = this.trades;

    return data;
  }
}