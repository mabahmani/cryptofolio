
import 'dart:convert';

class Currency {
  String id;
  String currency;
  String symbol;
  String name;
  String logoUrl;
  String rank;
  String price;
  String marketCap;
  String priceChangePct;
  bool   favorite = false;

  Currency({this.id, this.currency, this.symbol, this.name, this.logoUrl,
      this.rank, this.price, this.marketCap, this.priceChangePct});

  factory Currency.fromJson(Map<String, dynamic> responseJson){
    Map<String, dynamic> todayChanges = responseJson["1d"];

    return Currency(
        id: responseJson["id"],
        currency: responseJson["currency"],
        symbol: responseJson["symbol"],
        name: responseJson["name"],
        logoUrl: responseJson["logo_url"],
        rank: responseJson["rank"],
        price: responseJson["price"],
        marketCap: responseJson["market_cap"],
        priceChangePct : todayChanges == null ? "0.0":todayChanges["price_change_pct"]
    );
  }
}