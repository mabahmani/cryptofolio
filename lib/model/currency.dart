
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

  Currency(this.id, this.currency, this.symbol, this.name, this.logoUrl,
      this.rank, this.price, this.marketCap, this.priceChangePct);
}