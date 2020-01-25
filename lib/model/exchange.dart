
class Exchange {
  String exchange;
  String market;
  String base;
  String quote;

  Exchange({this.exchange, this.market, this.base, this.quote});

  factory Exchange.fromJson(Map<String, dynamic> responseJson){

    return Exchange(
        exchange: responseJson["exchange"],
        market: responseJson["market"],
        base: responseJson["base"],
        quote: responseJson["quote"],
    );
  }


}