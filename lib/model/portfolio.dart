
class Portfolio {
  String logo;
  String symbol;
  String price;
  String priceChange;
  String totalPrice;
  String coinValue;

  Portfolio.name(this.logo, this.symbol, this.price, this.priceChange,
      this.totalPrice, this.coinValue);

  factory Portfolio.fromJson(Map<String, dynamic> responseJson){
    Map<String, dynamic> todayChanges = responseJson["1d"];

    return Portfolio.name(
        responseJson["logo_url"],
        responseJson["symbol"],
        responseJson["price"],
        todayChanges["price_change"],
        "",
        ""
    );
  }
}