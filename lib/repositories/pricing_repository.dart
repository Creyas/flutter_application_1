class PricingRepository {
  final double sixInchPrice;
  final double footlongPrice;
  PricingRepository({this.sixInchPrice = 7.00, this.footlongPrice = 11.00});
  double unitPrice({required bool isFootlong}) =>
      isFootlong ? footlongPrice : sixInchPrice;

  double totalFor({required int quantity, required bool isFootlong}) {
    if (quantity <= 0) return 0.0;
    return unitPrice(isFootlong: isFootlong) * quantity;
  }

  String formattedTotal({required int quantity, required bool isFootlong}) {
    final total = totalFor(quantity: quantity, isFootlong: isFootlong);
    return '£${total.toStringAsFixed(2)}';
  }
}
